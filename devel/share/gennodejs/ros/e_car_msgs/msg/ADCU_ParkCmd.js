// Auto-generated. Do not edit!

// (in-package e_car_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ADCU_ParkCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Prk_Active = null;
      this.Prk_Enable = null;
      this.PrkCmd_RollCnt = null;
      this.PrkCmd_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Prk_Active')) {
        this.Prk_Active = initObj.Prk_Active
      }
      else {
        this.Prk_Active = 0;
      }
      if (initObj.hasOwnProperty('Prk_Enable')) {
        this.Prk_Enable = initObj.Prk_Enable
      }
      else {
        this.Prk_Enable = 0;
      }
      if (initObj.hasOwnProperty('PrkCmd_RollCnt')) {
        this.PrkCmd_RollCnt = initObj.PrkCmd_RollCnt
      }
      else {
        this.PrkCmd_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('PrkCmd_Checksum')) {
        this.PrkCmd_Checksum = initObj.PrkCmd_Checksum
      }
      else {
        this.PrkCmd_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCU_ParkCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Prk_Active]
    bufferOffset = _serializer.int8(obj.Prk_Active, buffer, bufferOffset);
    // Serialize message field [Prk_Enable]
    bufferOffset = _serializer.int8(obj.Prk_Enable, buffer, bufferOffset);
    // Serialize message field [PrkCmd_RollCnt]
    bufferOffset = _serializer.int32(obj.PrkCmd_RollCnt, buffer, bufferOffset);
    // Serialize message field [PrkCmd_Checksum]
    bufferOffset = _serializer.int32(obj.PrkCmd_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_ParkCmd
    let len;
    let data = new ADCU_ParkCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Prk_Active]
    data.Prk_Active = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Prk_Enable]
    data.Prk_Enable = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [PrkCmd_RollCnt]
    data.PrkCmd_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [PrkCmd_Checksum]
    data.PrkCmd_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_ParkCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd00658d46e5ca4d0dd437a5ea884545';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 Prk_Active
    
    int8 Prk_Enable
    
    int32 PrkCmd_RollCnt
    
    int32 PrkCmd_Checksum
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ADCU_ParkCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Prk_Active !== undefined) {
      resolved.Prk_Active = msg.Prk_Active;
    }
    else {
      resolved.Prk_Active = 0
    }

    if (msg.Prk_Enable !== undefined) {
      resolved.Prk_Enable = msg.Prk_Enable;
    }
    else {
      resolved.Prk_Enable = 0
    }

    if (msg.PrkCmd_RollCnt !== undefined) {
      resolved.PrkCmd_RollCnt = msg.PrkCmd_RollCnt;
    }
    else {
      resolved.PrkCmd_RollCnt = 0
    }

    if (msg.PrkCmd_Checksum !== undefined) {
      resolved.PrkCmd_Checksum = msg.PrkCmd_Checksum;
    }
    else {
      resolved.PrkCmd_Checksum = 0
    }

    return resolved;
    }
};

module.exports = ADCU_ParkCmd;
