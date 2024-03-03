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

class ADCU_SteerCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Str_Active = null;
      this.Str_CtrlMode = null;
      this.Str_TgtAngle = null;
      this.Str_TgtAngleSpd = null;
      this.StrCmd_RollCnt = null;
      this.StrCmd_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Str_Active')) {
        this.Str_Active = initObj.Str_Active
      }
      else {
        this.Str_Active = 0;
      }
      if (initObj.hasOwnProperty('Str_CtrlMode')) {
        this.Str_CtrlMode = initObj.Str_CtrlMode
      }
      else {
        this.Str_CtrlMode = 0;
      }
      if (initObj.hasOwnProperty('Str_TgtAngle')) {
        this.Str_TgtAngle = initObj.Str_TgtAngle
      }
      else {
        this.Str_TgtAngle = 0.0;
      }
      if (initObj.hasOwnProperty('Str_TgtAngleSpd')) {
        this.Str_TgtAngleSpd = initObj.Str_TgtAngleSpd
      }
      else {
        this.Str_TgtAngleSpd = 0.0;
      }
      if (initObj.hasOwnProperty('StrCmd_RollCnt')) {
        this.StrCmd_RollCnt = initObj.StrCmd_RollCnt
      }
      else {
        this.StrCmd_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('StrCmd_Checksum')) {
        this.StrCmd_Checksum = initObj.StrCmd_Checksum
      }
      else {
        this.StrCmd_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCU_SteerCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Str_Active]
    bufferOffset = _serializer.int8(obj.Str_Active, buffer, bufferOffset);
    // Serialize message field [Str_CtrlMode]
    bufferOffset = _serializer.int8(obj.Str_CtrlMode, buffer, bufferOffset);
    // Serialize message field [Str_TgtAngle]
    bufferOffset = _serializer.float32(obj.Str_TgtAngle, buffer, bufferOffset);
    // Serialize message field [Str_TgtAngleSpd]
    bufferOffset = _serializer.float32(obj.Str_TgtAngleSpd, buffer, bufferOffset);
    // Serialize message field [StrCmd_RollCnt]
    bufferOffset = _serializer.int32(obj.StrCmd_RollCnt, buffer, bufferOffset);
    // Serialize message field [StrCmd_Checksum]
    bufferOffset = _serializer.int32(obj.StrCmd_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_SteerCmd
    let len;
    let data = new ADCU_SteerCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Str_Active]
    data.Str_Active = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Str_CtrlMode]
    data.Str_CtrlMode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Str_TgtAngle]
    data.Str_TgtAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Str_TgtAngleSpd]
    data.Str_TgtAngleSpd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [StrCmd_RollCnt]
    data.StrCmd_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [StrCmd_Checksum]
    data.StrCmd_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_SteerCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c28ae07fba8b70da0e80a1960035feb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 Str_Active
    
    int8 Str_CtrlMode
    
    float32 Str_TgtAngle
    
    float32 Str_TgtAngleSpd
    
    int32 StrCmd_RollCnt
    
    int32 StrCmd_Checksum
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
    const resolved = new ADCU_SteerCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Str_Active !== undefined) {
      resolved.Str_Active = msg.Str_Active;
    }
    else {
      resolved.Str_Active = 0
    }

    if (msg.Str_CtrlMode !== undefined) {
      resolved.Str_CtrlMode = msg.Str_CtrlMode;
    }
    else {
      resolved.Str_CtrlMode = 0
    }

    if (msg.Str_TgtAngle !== undefined) {
      resolved.Str_TgtAngle = msg.Str_TgtAngle;
    }
    else {
      resolved.Str_TgtAngle = 0.0
    }

    if (msg.Str_TgtAngleSpd !== undefined) {
      resolved.Str_TgtAngleSpd = msg.Str_TgtAngleSpd;
    }
    else {
      resolved.Str_TgtAngleSpd = 0.0
    }

    if (msg.StrCmd_RollCnt !== undefined) {
      resolved.StrCmd_RollCnt = msg.StrCmd_RollCnt;
    }
    else {
      resolved.StrCmd_RollCnt = 0
    }

    if (msg.StrCmd_Checksum !== undefined) {
      resolved.StrCmd_Checksum = msg.StrCmd_Checksum;
    }
    else {
      resolved.StrCmd_Checksum = 0
    }

    return resolved;
    }
};

module.exports = ADCU_SteerCmd;
