#!/usr/bin/env python3
# Basics ROS program to publish real-time streaming 
# video from your built-in webcam
# Author:
# - Addison Sears-Collins
# - https://automaticaddison.com
 
# Import the necessary libraries
import rospy # Python library for ROS
from sensor_msgs.msg import Image as ROSImage # Image is the message type
from cv_bridge import CvBridge # Package to convert between ROS and OpenCV Images
import cv2 # OpenCV library
from nav_msgs.msg import OccupancyGrid
from PIL import Image as PILImage
import numpy as np
from std_msgs.msg import Float32MultiArray
from std_msgs.msg import Int32
import math

# Global variable to store previously sorted corners
prev_sorted_corners = None
prev_lap = 1;
lap_counter = 0;


def sort_corners(corners, threshold_distance=1000):
    global prev_sorted_corners

    if prev_sorted_corners is not None:
        sorted_corners = prev_sorted_corners.copy()
        prev_sorted_corners = None
    else:
        sorted_corners = []

    while len(corners) > 0:
        if len(sorted_corners) == 0:
            sorted_corners.append(corners[0])
            del corners[0]
        else:
            last_corner = sorted_corners[-1]
            min_dist = float('inf')
            min_idx = None
            for idx, corner in enumerate(corners):
                dist = np.linalg.norm(np.array(last_corner) - np.array(corner))
                if dist < min_dist:
                    min_dist = dist
                    min_idx = idx
            
            if min_dist < threshold_distance:
                sorted_corners.append(corners[min_idx])
                del corners[min_idx]
            else:
                del corners[min_idx]

    if np.linalg.norm(np.array(sorted_corners[-1]) - np.array(sorted_corners[0])) > threshold_distance:
        del sorted_corners[-1]

    return sorted_corners

def transform_coordinates(x_coordinates, y_coordinates,resolution,origin):
    # Your transformation code goes here
    # This is just a placeholder
    transformed_x_coordinates = [x*resolution + origin.x for x in x_coordinates]
    transformed_y_coordinates = [y*resolution + origin.y for y in y_coordinates]
    return transformed_x_coordinates, transformed_y_coordinates

def angle_between_points(array):
    angles = [0] * len(array)
    for i in range(len(array)):
        p_current = np.array(array[i][0])
        if i == len(array) - 1:
            p_next = np.array(array[(0)][0])
        else:
            p_next = np.array(array[(i + 1)][0])
            
        if i == 0:
            p_prev = np.array(array[(len(array) - 1)][0])
        else:
            p_prev = np.array(array[(i - 1)][0])

        ba = p_next - p_current
        bc = p_prev - p_current
        
        cosine_angle = np.dot(ba, bc) / (np.linalg.norm(ba) * np.linalg.norm(bc))
        angle = np.arccos(np.clip(cosine_angle, -1, 1))
        
        angles[i] = math.pi - angle
    return angles

def lap_count_callback(data):
    global lap_counter
    lap_counter = data.data

def map_callback(data):
    global prev_sorted_corners, lap_counter, prev_lap
    
    if lap_counter == prev_lap:
    	print('lap_counter and prev_lap are the same')
    	return
    
    prev_lap = lap_counter
    
    # Extract map data
    width = data.info.width
    height = data.info.height
    resolution = data.info.resolution
    origin = data.info.origin.position

    # Convert map data to 2D array
    map_data = np.array(data.data).reshape((height, width))

    # Convert occupancy grid data to grayscale image
    img_data = np.zeros((height, width), dtype=np.uint8)
    img_data[map_data == -1] = 128  # Unknown areas (set to gray)
    img_data[map_data == 0] = 255    # Free space (set to white)
    img_data[map_data == 100] = 0    # Occupied space (set to black)

    # Apply thinning operation for skeletonization
    kernel = np.ones((3,3), np.uint8)

    # Apply morphological opening (erosion followed by dilation)
    opened_image = cv2.morphologyEx(img_data, cv2.MORPH_OPEN, kernel)

    # Apply morphological closing (dilation followed by erosion)
    smoothed_image = cv2.morphologyEx(opened_image, cv2.MORPH_CLOSE, kernel)
    
    bilat_img = cv2.bilateralFilter(smoothed_image, d=9, sigmaColor=75, sigmaSpace=75)

    blurred_image = cv2.GaussianBlur(bilat_img, (5, 5), 0)

    dst_image = cv2.ximgproc.thinning(blurred_image)
    thinning_img = PILImage.fromarray(dst_image)
    thinning_img.save('/home/vboxuser/testing/src/cv_basics/scripts/thinning.png')

    # Dilation operation to expand the lines
    kernel = np.ones((1,1), np.uint8)
    dst_image = cv2.dilate(dst_image, kernel, iterations=1)

    # Detect corners using goodFeaturesToTrack
    corners = cv2.goodFeaturesToTrack(dst_image, maxCorners=1000, qualityLevel=0.01, minDistance=10.0)

    # Convert coordinates to integers
    corners = np.int0(corners)
    
    # Sort corners based on proximity
    sorted_corners = sort_corners(corners.tolist())
    sorted_corners_array = np.array(sorted_corners).reshape(-1, 1, 2)
    
    print("Length of corners:", len(corners))

    print("Length of sorted_corners:", len(sorted_corners_array))

    # Create a color image
    color_img = cv2.cvtColor(dst_image, cv2.COLOR_GRAY2BGR)

    sorted_corners_array = np.array(sorted_corners).reshape(-1, 1, 2)
    
    for corner in sorted_corners_array:
        x, y = corner.ravel()
        cv2.circle(blurred_image, (x, y), 3, (0, 0, 255), -1)

    # Convert OpenCV image to PIL image
    harris_img = PILImage.fromarray(blurred_image)

    # Save detected corners image
    harris_img.save('/home/vboxuser/testing/src/cv_basics/scripts/good_features_detected.png')
    
    # Store the sorted corners for future use
    prev_sorted_corners = sorted_corners

    # Transform coordinates
    transformed_x_coordinates, transformed_y_coordinates = transform_coordinates(
        [corner[0][0] for corner in sorted_corners],
        [corner[0][1] for corner in sorted_corners],
        resolution,
        origin
    )
    
    #Call Calculate angles
    sorted_angles =  angle_between_points(sorted_corners)
    print(sorted_angles)

    # Publish transformed coordinates
    publish_transformed_coordinates(transformed_x_coordinates, transformed_y_coordinates,sorted_angles)

def publish_transformed_coordinates(x_coordinates, y_coordinates,angles):
    # Create Float32MultiArray messages for x and y coordinates
    x_msg = Float32MultiArray(data=x_coordinates)
    y_msg = Float32MultiArray(data=y_coordinates)
    angles_msg = Float32MultiArray(data=angles)
    # Declare the publishing variables
    sorted_corners_x_pub = rospy.Publisher("/sorted_corners_x", Float32MultiArray, queue_size=10)
    sorted_corners_y_pub = rospy.Publisher("/sorted_corners_y", Float32MultiArray, queue_size=10)
    angles_pub = rospy.Publisher("/angles", Float32MultiArray, queue_size=10)
    rate = rospy.Rate(0.1) # .1hz
    while not rospy.is_shutdown():
        # Publish x and y coordinates separately
        sorted_corners_x_pub.publish(x_msg)
        sorted_corners_y_pub.publish(y_msg)
        angles_pub.publish(angles_msg)
        print('Publishing should be done2')
        rate.sleep()

def main():
    rospy.init_node('map_to_image_node', anonymous=True)
    rospy.Subscriber("/map", OccupancyGrid, map_callback)
    rospy.Subscriber("lap_count", Int32, lap_count_callback)
    rospy.spin()

if __name__ == '__main__':
    main()
