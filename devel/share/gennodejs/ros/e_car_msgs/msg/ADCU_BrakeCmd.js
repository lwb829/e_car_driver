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

class ADCU_BrakeCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Brk_Active = null;
      this.Brk_CtrlMode = null;
      this.Brk_TgtPedpos = null;
      this.Brk_TgtPress = null;
      this.Brk_TgtAccSpd = null;
      this.BrkCmd_RollCnt = null;
      this.BrkCmd_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Brk_Active')) {
        this.Brk_Active = initObj.Brk_Active
      }
      else {
        this.Brk_Active = 0;
      }
      if (initObj.hasOwnProperty('Brk_CtrlMode')) {
        this.Brk_CtrlMode = initObj.Brk_CtrlMode
      }
      else {
        this.Brk_CtrlMode = 0;
      }
      if (initObj.hasOwnProperty('Brk_TgtPedpos')) {
        this.Brk_TgtPedpos = initObj.Brk_TgtPedpos
      }
      else {
        this.Brk_TgtPedpos = 0.0;
      }
      if (initObj.hasOwnProperty('Brk_TgtPress')) {
        this.Brk_TgtPress = initObj.Brk_TgtPress
      }
      else {
        this.Brk_TgtPress = 0.0;
      }
      if (initObj.hasOwnProperty('Brk_TgtAccSpd')) {
        this.Brk_TgtAccSpd = initObj.Brk_TgtAccSpd
      }
      else {
        this.Brk_TgtAccSpd = 0.0;
      }
      if (initObj.hasOwnProperty('BrkCmd_RollCnt')) {
        this.BrkCmd_RollCnt = initObj.BrkCmd_RollCnt
      }
      else {
        this.BrkCmd_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('BrkCmd_Checksum')) {
        this.BrkCmd_Checksum = initObj.BrkCmd_Checksum
      }
      else {
        this.BrkCmd_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCU_BrakeCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Brk_Active]
    bufferOffset = _serializer.int8(obj.Brk_Active, buffer, bufferOffset);
    // Serialize message field [Brk_CtrlMode]
    bufferOffset = _serializer.int8(obj.Brk_CtrlMode, buffer, bufferOffset);
    // Serialize message field [Brk_TgtPedpos]
    bufferOffset = _serializer.float32(obj.Brk_TgtPedpos, buffer, bufferOffset);
    // Serialize message field [Brk_TgtPress]
    bufferOffset = _serializer.float32(obj.Brk_TgtPress, buffer, bufferOffset);
    // Serialize message field [Brk_TgtAccSpd]
    bufferOffset = _serializer.float32(obj.Brk_TgtAccSpd, buffer, bufferOffset);
    // Serialize message field [BrkCmd_RollCnt]
    bufferOffset = _serializer.int32(obj.BrkCmd_RollCnt, buffer, bufferOffset);
    // Serialize message field [BrkCmd_Checksum]
    bufferOffset = _serializer.int32(obj.BrkCmd_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_BrakeCmd
    let len;
    let data = new ADCU_BrakeCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Brk_Active]
    data.Brk_Active = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Brk_CtrlMode]
    data.Brk_CtrlMode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Brk_TgtPedpos]
    data.Brk_TgtPedpos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Brk_TgtPress]
    data.Brk_TgtPress = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Brk_TgtAccSpd]
    data.Brk_TgtAccSpd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [BrkCmd_RollCnt]
    data.BrkCmd_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [BrkCmd_Checksum]
    data.BrkCmd_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_BrakeCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3c2117e1232bca759470cc478a35c8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 Brk_Active
    
    int8 Brk_CtrlMode
    
    float32 Brk_TgtPedpos
    
    float32 Brk_TgtPress
    
    float32 Brk_TgtAccSpd
    
    int32 BrkCmd_RollCnt
    
    int32 BrkCmd_Checksum
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
    const resolved = new ADCU_BrakeCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Brk_Active !== undefined) {
      resolved.Brk_Active = msg.Brk_Active;
    }
    else {
      resolved.Brk_Active = 0
    }

    if (msg.Brk_CtrlMode !== undefined) {
      resolved.Brk_CtrlMode = msg.Brk_CtrlMode;
    }
    else {
      resolved.Brk_CtrlMode = 0
    }

    if (msg.Brk_TgtPedpos !== undefined) {
      resolved.Brk_TgtPedpos = msg.Brk_TgtPedpos;
    }
    else {
      resolved.Brk_TgtPedpos = 0.0
    }

    if (msg.Brk_TgtPress !== undefined) {
      resolved.Brk_TgtPress = msg.Brk_TgtPress;
    }
    else {
      resolved.Brk_TgtPress = 0.0
    }

    if (msg.Brk_TgtAccSpd !== undefined) {
      resolved.Brk_TgtAccSpd = msg.Brk_TgtAccSpd;
    }
    else {
      resolved.Brk_TgtAccSpd = 0.0
    }

    if (msg.BrkCmd_RollCnt !== undefined) {
      resolved.BrkCmd_RollCnt = msg.BrkCmd_RollCnt;
    }
    else {
      resolved.BrkCmd_RollCnt = 0
    }

    if (msg.BrkCmd_Checksum !== undefined) {
      resolved.BrkCmd_Checksum = msg.BrkCmd_Checksum;
    }
    else {
      resolved.BrkCmd_Checksum = 0
    }

    return resolved;
    }
};

module.exports = ADCU_BrakeCmd;
