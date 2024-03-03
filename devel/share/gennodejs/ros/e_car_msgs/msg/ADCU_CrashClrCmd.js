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

class ADCU_CrashClrCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.CrashClearCmd_Valid = null;
      this.CrashClear_Cmd = null;
      this.EmgcSwhClearCmd_Valid = null;
      this.EmgcSwhClear_Cmd = null;
      this.CrashClr_RollCnt = null;
      this.CrashClr_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('CrashClearCmd_Valid')) {
        this.CrashClearCmd_Valid = initObj.CrashClearCmd_Valid
      }
      else {
        this.CrashClearCmd_Valid = 0;
      }
      if (initObj.hasOwnProperty('CrashClear_Cmd')) {
        this.CrashClear_Cmd = initObj.CrashClear_Cmd
      }
      else {
        this.CrashClear_Cmd = 0;
      }
      if (initObj.hasOwnProperty('EmgcSwhClearCmd_Valid')) {
        this.EmgcSwhClearCmd_Valid = initObj.EmgcSwhClearCmd_Valid
      }
      else {
        this.EmgcSwhClearCmd_Valid = 0;
      }
      if (initObj.hasOwnProperty('EmgcSwhClear_Cmd')) {
        this.EmgcSwhClear_Cmd = initObj.EmgcSwhClear_Cmd
      }
      else {
        this.EmgcSwhClear_Cmd = 0;
      }
      if (initObj.hasOwnProperty('CrashClr_RollCnt')) {
        this.CrashClr_RollCnt = initObj.CrashClr_RollCnt
      }
      else {
        this.CrashClr_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('CrashClr_Checksum')) {
        this.CrashClr_Checksum = initObj.CrashClr_Checksum
      }
      else {
        this.CrashClr_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCU_CrashClrCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [CrashClearCmd_Valid]
    bufferOffset = _serializer.int8(obj.CrashClearCmd_Valid, buffer, bufferOffset);
    // Serialize message field [CrashClear_Cmd]
    bufferOffset = _serializer.int8(obj.CrashClear_Cmd, buffer, bufferOffset);
    // Serialize message field [EmgcSwhClearCmd_Valid]
    bufferOffset = _serializer.int8(obj.EmgcSwhClearCmd_Valid, buffer, bufferOffset);
    // Serialize message field [EmgcSwhClear_Cmd]
    bufferOffset = _serializer.int8(obj.EmgcSwhClear_Cmd, buffer, bufferOffset);
    // Serialize message field [CrashClr_RollCnt]
    bufferOffset = _serializer.int32(obj.CrashClr_RollCnt, buffer, bufferOffset);
    // Serialize message field [CrashClr_Checksum]
    bufferOffset = _serializer.int32(obj.CrashClr_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_CrashClrCmd
    let len;
    let data = new ADCU_CrashClrCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [CrashClearCmd_Valid]
    data.CrashClearCmd_Valid = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CrashClear_Cmd]
    data.CrashClear_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [EmgcSwhClearCmd_Valid]
    data.EmgcSwhClearCmd_Valid = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [EmgcSwhClear_Cmd]
    data.EmgcSwhClear_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CrashClr_RollCnt]
    data.CrashClr_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [CrashClr_Checksum]
    data.CrashClr_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_CrashClrCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a6390ae19310931cf5022dca0df4235';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 CrashClearCmd_Valid
    
    int8 CrashClear_Cmd
    
    int8 EmgcSwhClearCmd_Valid
    
    int8 EmgcSwhClear_Cmd
    
    int32 CrashClr_RollCnt
    
    int32 CrashClr_Checksum
    
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
    const resolved = new ADCU_CrashClrCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.CrashClearCmd_Valid !== undefined) {
      resolved.CrashClearCmd_Valid = msg.CrashClearCmd_Valid;
    }
    else {
      resolved.CrashClearCmd_Valid = 0
    }

    if (msg.CrashClear_Cmd !== undefined) {
      resolved.CrashClear_Cmd = msg.CrashClear_Cmd;
    }
    else {
      resolved.CrashClear_Cmd = 0
    }

    if (msg.EmgcSwhClearCmd_Valid !== undefined) {
      resolved.EmgcSwhClearCmd_Valid = msg.EmgcSwhClearCmd_Valid;
    }
    else {
      resolved.EmgcSwhClearCmd_Valid = 0
    }

    if (msg.EmgcSwhClear_Cmd !== undefined) {
      resolved.EmgcSwhClear_Cmd = msg.EmgcSwhClear_Cmd;
    }
    else {
      resolved.EmgcSwhClear_Cmd = 0
    }

    if (msg.CrashClr_RollCnt !== undefined) {
      resolved.CrashClr_RollCnt = msg.CrashClr_RollCnt;
    }
    else {
      resolved.CrashClr_RollCnt = 0
    }

    if (msg.CrashClr_Checksum !== undefined) {
      resolved.CrashClr_Checksum = msg.CrashClr_Checksum;
    }
    else {
      resolved.CrashClr_Checksum = 0
    }

    return resolved;
    }
};

module.exports = ADCU_CrashClrCmd;
