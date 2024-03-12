// Auto-generated. Do not edit!

// (in-package pathing.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PixyBlock = require('./PixyBlock.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PixyData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.blocks = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('blocks')) {
        this.blocks = initObj.blocks
      }
      else {
        this.blocks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PixyData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [blocks]
    // Serialize the length for message field [blocks]
    bufferOffset = _serializer.uint32(obj.blocks.length, buffer, bufferOffset);
    obj.blocks.forEach((val) => {
      bufferOffset = PixyBlock.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PixyData
    let len;
    let data = new PixyData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [blocks]
    // Deserialize array length for message field [blocks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blocks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blocks[i] = PixyBlock.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 27 * object.blocks.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pathing/PixyData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7b5179bbac08dbbbf116047daeca32b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    PixyBlock[] blocks
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: pathing/PixyBlock
    # signiture types
    uint16 NORMAL_SIGNATURE=0
    uint16 COLOR_CODE=1
    
    # the message.  if type==0, then angle should be ignored.
    uint16 type
    uint16 signature
    sensor_msgs/RegionOfInterest roi
    float32 angle # in radians
    uint8 index # Block index
    uint8 age # Number of frames that this block has existed for
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PixyData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.blocks !== undefined) {
      resolved.blocks = new Array(msg.blocks.length);
      for (let i = 0; i < resolved.blocks.length; ++i) {
        resolved.blocks[i] = PixyBlock.Resolve(msg.blocks[i]);
      }
    }
    else {
      resolved.blocks = []
    }

    return resolved;
    }
};

module.exports = PixyData;
