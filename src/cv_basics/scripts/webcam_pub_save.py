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

def map_callback(data):
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

    # Create PIL Image
    img = PILImage.fromarray(img_data)

    # Save image to file
    img.save('/home/hero1xxx/testing/src/cv_basics/scripts/map_image.png')

    # Convert PIL image to OpenCV format
    src_image = np.array(img)

    # Apply thinning operation for skeletonization
    dst_image = cv2.ximgproc.thinning(src_image)

    # Dilation operation to expand the lines
    kernel = np.ones((1,1), np.uint8)
    dst_image = cv2.dilate(dst_image, kernel, iterations=1)

    # Convert back to PIL Image
    skel_img = PILImage.fromarray(dst_image)

    # Save skeletonized image to file
    skel_img.save('/home/hero1xxx/testing/src/cv_basics/scripts/skel_image.png')

    # Detect corners using goodFeaturesToTrack
    corners = cv2.goodFeaturesToTrack(dst_image, maxCorners=1000, qualityLevel=0.01,minDistance=10.0)

    # Convert coordinates to integers
    corners = np.int0(corners)

    # Create a color image
    color_img = cv2.cvtColor(dst_image, cv2.COLOR_GRAY2BGR)

    # Draw corners on the image
    for corner in corners:
        x, y = corner.ravel()
        cv2.circle(color_img, (x, y), 3, (0, 0, 255), -1)

    # Convert OpenCV image to PIL image
    harris_img = PILImage.fromarray(color_img)

    # Save detected corners image
    harris_img.save('/home/hero1xxx/testing/src/cv_basics/scripts/good_features_detected.png')

def main():
    rospy.init_node('map_to_image_node', anonymous=True)
    rospy.Subscriber("/map", OccupancyGrid, map_callback)
    rospy.spin()

if __name__ == '__main__':
    main()

