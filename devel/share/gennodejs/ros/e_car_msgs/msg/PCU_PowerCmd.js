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

class PCU_PowerCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ADChasPwrup_Cmd = null;
      this.AD12VMCPwrup_Cmd = null;
      this.AD12VSC1Pwrup_Cmd = null;
      this.AD12VSC2Pwrup_Cmd = null;
      this.AD12VSC3Pwrup_Cmd = null;
      this.AD12VSC4Pwrup_Cmd = null;
      this.AD12VSC5Pwrup_Cmd = null;
      this.AD12VSC6Pwrup_Cmd = null;
      this.PwrCmd_RollCnt = null;
      this.PwrCmd_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ADChasPwrup_Cmd')) {
        this.ADChasPwrup_Cmd = initObj.ADChasPwrup_Cmd
      }
      else {
        this.ADChasPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('AD12VMCPwrup_Cmd')) {
        this.AD12VMCPwrup_Cmd = initObj.AD12VMCPwrup_Cmd
      }
      else {
        this.AD12VMCPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('AD12VSC1Pwrup_Cmd')) {
        this.AD12VSC1Pwrup_Cmd = initObj.AD12VSC1Pwrup_Cmd
      }
      else {
        this.AD12VSC1Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('AD12VSC2Pwrup_Cmd')) {
        this.AD12VSC2Pwrup_Cmd = initObj.AD12VSC2Pwrup_Cmd
      }
      else {
        this.AD12VSC2Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('AD12VSC3Pwrup_Cmd')) {
        this.AD12VSC3Pwrup_Cmd = initObj.AD12VSC3Pwrup_Cmd
      }
      else {
        this.AD12VSC3Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('AD12VSC4Pwrup_Cmd')) {
        this.AD12VSC4Pwrup_Cmd = initObj.AD12VSC4Pwrup_Cmd
      }
      else {
        this.AD12VSC4Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('AD12VSC5Pwrup_Cmd')) {
        this.AD12VSC5Pwrup_Cmd = initObj.AD12VSC5Pwrup_Cmd
      }
      else {
        this.AD12VSC5Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('AD12VSC6Pwrup_Cmd')) {
        this.AD12VSC6Pwrup_Cmd = initObj.AD12VSC6Pwrup_Cmd
      }
      else {
        this.AD12VSC6Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('PwrCmd_RollCnt')) {
        this.PwrCmd_RollCnt = initObj.PwrCmd_RollCnt
      }
      else {
        this.PwrCmd_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('PwrCmd_Checksum')) {
        this.PwrCmd_Checksum = initObj.PwrCmd_Checksum
      }
      else {
        this.PwrCmd_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PCU_PowerCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ADChasPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.ADChasPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [AD12VMCPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.AD12VMCPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [AD12VSC1Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.AD12VSC1Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [AD12VSC2Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.AD12VSC2Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [AD12VSC3Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.AD12VSC3Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [AD12VSC4Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.AD12VSC4Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [AD12VSC5Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.AD12VSC5Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [AD12VSC6Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.AD12VSC6Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [PwrCmd_RollCnt]
    bufferOffset = _serializer.int32(obj.PwrCmd_RollCnt, buffer, bufferOffset);
    // Serialize message field [PwrCmd_Checksum]
    bufferOffset = _serializer.int32(obj.PwrCmd_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PCU_PowerCmd
    let len;
    let data = new PCU_PowerCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ADChasPwrup_Cmd]
    data.ADChasPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD12VMCPwrup_Cmd]
    data.AD12VMCPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD12VSC1Pwrup_Cmd]
    data.AD12VSC1Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD12VSC2Pwrup_Cmd]
    data.AD12VSC2Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD12VSC3Pwrup_Cmd]
    data.AD12VSC3Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD12VSC4Pwrup_Cmd]
    data.AD12VSC4Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD12VSC5Pwrup_Cmd]
    data.AD12VSC5Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD12VSC6Pwrup_Cmd]
    data.AD12VSC6Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [PwrCmd_RollCnt]
    data.PwrCmd_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [PwrCmd_Checksum]
    data.PwrCmd_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/PCU_PowerCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e20658d4566685bbdae55f7fc1134d24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 ADChasPwrup_Cmd
    
    int8 AD12VMCPwrup_Cmd
    
    int8 AD12VSC1Pwrup_Cmd
    
    int8 AD12VSC2Pwrup_Cmd
    
    int8 AD12VSC3Pwrup_Cmd
    
    int8 AD12VSC4Pwrup_Cmd
    
    int8 AD12VSC5Pwrup_Cmd
    
    int8 AD12VSC6Pwrup_Cmd
    
    int32 PwrCmd_RollCnt
    
    int32 PwrCmd_Checksum
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
    const resolved = new PCU_PowerCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ADChasPwrup_Cmd !== undefined) {
      resolved.ADChasPwrup_Cmd = msg.ADChasPwrup_Cmd;
    }
    else {
      resolved.ADChasPwrup_Cmd = 0
    }

    if (msg.AD12VMCPwrup_Cmd !== undefined) {
      resolved.AD12VMCPwrup_Cmd = msg.AD12VMCPwrup_Cmd;
    }
    else {
      resolved.AD12VMCPwrup_Cmd = 0
    }

    if (msg.AD12VSC1Pwrup_Cmd !== undefined) {
      resolved.AD12VSC1Pwrup_Cmd = msg.AD12VSC1Pwrup_Cmd;
    }
    else {
      resolved.AD12VSC1Pwrup_Cmd = 0
    }

    if (msg.AD12VSC2Pwrup_Cmd !== undefined) {
      resolved.AD12VSC2Pwrup_Cmd = msg.AD12VSC2Pwrup_Cmd;
    }
    else {
      resolved.AD12VSC2Pwrup_Cmd = 0
    }

    if (msg.AD12VSC3Pwrup_Cmd !== undefined) {
      resolved.AD12VSC3Pwrup_Cmd = msg.AD12VSC3Pwrup_Cmd;
    }
    else {
      resolved.AD12VSC3Pwrup_Cmd = 0
    }

    if (msg.AD12VSC4Pwrup_Cmd !== undefined) {
      resolved.AD12VSC4Pwrup_Cmd = msg.AD12VSC4Pwrup_Cmd;
    }
    else {
      resolved.AD12VSC4Pwrup_Cmd = 0
    }

    if (msg.AD12VSC5Pwrup_Cmd !== undefined) {
      resolved.AD12VSC5Pwrup_Cmd = msg.AD12VSC5Pwrup_Cmd;
    }
    else {
      resolved.AD12VSC5Pwrup_Cmd = 0
    }

    if (msg.AD12VSC6Pwrup_Cmd !== undefined) {
      resolved.AD12VSC6Pwrup_Cmd = msg.AD12VSC6Pwrup_Cmd;
    }
    else {
      resolved.AD12VSC6Pwrup_Cmd = 0
    }

    if (msg.PwrCmd_RollCnt !== undefined) {
      resolved.PwrCmd_RollCnt = msg.PwrCmd_RollCnt;
    }
    else {
      resolved.PwrCmd_RollCnt = 0
    }

    if (msg.PwrCmd_Checksum !== undefined) {
      resolved.PwrCmd_Checksum = msg.PwrCmd_Checksum;
    }
    else {
      resolved.PwrCmd_Checksum = 0
    }

    return resolved;
    }
};

module.exports = PCU_PowerCmd;
