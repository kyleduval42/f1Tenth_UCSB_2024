// Auto-generated. Do not edit!

// (in-package slam_toolbox_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class DeserializePoseGraphRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filename = null;
      this.match_type = null;
      this.initial_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
      if (initObj.hasOwnProperty('match_type')) {
        this.match_type = initObj.match_type
      }
      else {
        this.match_type = 0;
      }
      if (initObj.hasOwnProperty('initial_pose')) {
        this.initial_pose = initObj.initial_pose
      }
      else {
        this.initial_pose = new geometry_msgs.msg.Pose2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeserializePoseGraphRequest
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    // Serialize message field [match_type]
    bufferOffset = _serializer.int8(obj.match_type, buffer, bufferOffset);
    // Serialize message field [initial_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.initial_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeserializePoseGraphRequest
    let len;
    let data = new DeserializePoseGraphRequest(null);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [match_type]
    data.match_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [initial_pose]
    data.initial_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.filename);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'slam_toolbox_msgs/DeserializePoseGraphRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29a9bb432c3daccc49d63131eece4576';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 UNSET = 0
    int8 START_AT_FIRST_NODE = 1
    int8 START_AT_GIVEN_POSE = 2
    int8 LOCALIZE_AT_POSE = 3
    
    # inital_pose should be Map -> base_frame (parameter, generally base_link)
    #
    
    string filename
    int8 match_type
    geometry_msgs/Pose2D initial_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeserializePoseGraphRequest(null);
    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    if (msg.match_type !== undefined) {
      resolved.match_type = msg.match_type;
    }
    else {
      resolved.match_type = 0
    }

    if (msg.initial_pose !== undefined) {
      resolved.initial_pose = geometry_msgs.msg.Pose2D.Resolve(msg.initial_pose)
    }
    else {
      resolved.initial_pose = new geometry_msgs.msg.Pose2D()
    }

    return resolved;
    }
};

// Constants for message
DeserializePoseGraphRequest.Constants = {
  UNSET: 0,
  START_AT_FIRST_NODE: 1,
  START_AT_GIVEN_POSE: 2,
  LOCALIZE_AT_POSE: 3,
}

class DeserializePoseGraphResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeserializePoseGraphResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeserializePoseGraphResponse
    let len;
    let data = new DeserializePoseGraphResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'slam_toolbox_msgs/DeserializePoseGraphResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeserializePoseGraphResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: DeserializePoseGraphRequest,
  Response: DeserializePoseGraphResponse,
  md5sum() { return '29a9bb432c3daccc49d63131eece4576'; },
  datatype() { return 'slam_toolbox_msgs/DeserializePoseGraph'; }
};
