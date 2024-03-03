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

class ADCU_CldBodyCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Cld_WidthLamp_Cmd = null;
      this.Cld_BrkLamp_Cmd = null;
      this.Cld_FogLamp_Cmd = null;
      this.Cld_HeadLamp_Cmd = null;
      this.Cld_DblFlashLamp_Cmd = null;
      this.Cld_TurnLLamp_Cmd = null;
      this.Cld_TurnRLamp_Cmd = null;
      this.Cld_BackLamp_Cmd = null;
      this.Cld_Buzzer_Cmd = null;
      this.Cld_Horn_Cmd = null;
      this.Cld_RunLamp_Cmd = null;
      this.CldBodyCmd_RollCnt = null;
      this.CldBodyCmd_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Cld_WidthLamp_Cmd')) {
        this.Cld_WidthLamp_Cmd = initObj.Cld_WidthLamp_Cmd
      }
      else {
        this.Cld_WidthLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld_BrkLamp_Cmd')) {
        this.Cld_BrkLamp_Cmd = initObj.Cld_BrkLamp_Cmd
      }
      else {
        this.Cld_BrkLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld_FogLamp_Cmd')) {
        this.Cld_FogLamp_Cmd = initObj.Cld_FogLamp_Cmd
      }
      else {
        this.Cld_FogLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld_HeadLamp_Cmd')) {
        this.Cld_HeadLamp_Cmd = initObj.Cld_HeadLamp_Cmd
      }
      else {
        this.Cld_HeadLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld_DblFlashLamp_Cmd')) {
        this.Cld_DblFlashLamp_Cmd = initObj.Cld_DblFlashLamp_Cmd
      }
      else {
        this.Cld_DblFlashLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld_TurnLLamp_Cmd')) {
        this.Cld_TurnLLamp_Cmd = initObj.Cld_TurnLLamp_Cmd
      }
      else {
        this.Cld_TurnLLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld_TurnRLamp_Cmd')) {
        this.Cld_TurnRLamp_Cmd = initObj.Cld_TurnRLamp_Cmd
      }
      else {
        this.Cld_TurnRLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld_BackLamp_Cmd')) {
        this.Cld_BackLamp_Cmd = initObj.Cld_BackLamp_Cmd
      }
      else {
        this.Cld_BackLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld_Buzzer_Cmd')) {
        this.Cld_Buzzer_Cmd = initObj.Cld_Buzzer_Cmd
      }
      else {
        this.Cld_Buzzer_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld_Horn_Cmd')) {
        this.Cld_Horn_Cmd = initObj.Cld_Horn_Cmd
      }
      else {
        this.Cld_Horn_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld_RunLamp_Cmd')) {
        this.Cld_RunLamp_Cmd = initObj.Cld_RunLamp_Cmd
      }
      else {
        this.Cld_RunLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('CldBodyCmd_RollCnt')) {
        this.CldBodyCmd_RollCnt = initObj.CldBodyCmd_RollCnt
      }
      else {
        this.CldBodyCmd_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('CldBodyCmd_Checksum')) {
        this.CldBodyCmd_Checksum = initObj.CldBodyCmd_Checksum
      }
      else {
        this.CldBodyCmd_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCU_CldBodyCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Cld_WidthLamp_Cmd]
    bufferOffset = _serializer.int8(obj.Cld_WidthLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld_BrkLamp_Cmd]
    bufferOffset = _serializer.int8(obj.Cld_BrkLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld_FogLamp_Cmd]
    bufferOffset = _serializer.int8(obj.Cld_FogLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld_HeadLamp_Cmd]
    bufferOffset = _serializer.int8(obj.Cld_HeadLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld_DblFlashLamp_Cmd]
    bufferOffset = _serializer.int8(obj.Cld_DblFlashLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld_TurnLLamp_Cmd]
    bufferOffset = _serializer.int8(obj.Cld_TurnLLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld_TurnRLamp_Cmd]
    bufferOffset = _serializer.int8(obj.Cld_TurnRLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld_BackLamp_Cmd]
    bufferOffset = _serializer.int8(obj.Cld_BackLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld_Buzzer_Cmd]
    bufferOffset = _serializer.int8(obj.Cld_Buzzer_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld_Horn_Cmd]
    bufferOffset = _serializer.int8(obj.Cld_Horn_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld_RunLamp_Cmd]
    bufferOffset = _serializer.int8(obj.Cld_RunLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [CldBodyCmd_RollCnt]
    bufferOffset = _serializer.int32(obj.CldBodyCmd_RollCnt, buffer, bufferOffset);
    // Serialize message field [CldBodyCmd_Checksum]
    bufferOffset = _serializer.int32(obj.CldBodyCmd_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_CldBodyCmd
    let len;
    let data = new ADCU_CldBodyCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Cld_WidthLamp_Cmd]
    data.Cld_WidthLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_BrkLamp_Cmd]
    data.Cld_BrkLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_FogLamp_Cmd]
    data.Cld_FogLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_HeadLamp_Cmd]
    data.Cld_HeadLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_DblFlashLamp_Cmd]
    data.Cld_DblFlashLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_TurnLLamp_Cmd]
    data.Cld_TurnLLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_TurnRLamp_Cmd]
    data.Cld_TurnRLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_BackLamp_Cmd]
    data.Cld_BackLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_Buzzer_Cmd]
    data.Cld_Buzzer_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_Horn_Cmd]
    data.Cld_Horn_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_RunLamp_Cmd]
    data.Cld_RunLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CldBodyCmd_RollCnt]
    data.CldBodyCmd_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [CldBodyCmd_Checksum]
    data.CldBodyCmd_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_CldBodyCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e996fa29fe9d34f1678bf393df7a1655';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 Cld_WidthLamp_Cmd
    
    int8 Cld_BrkLamp_Cmd
    
    int8 Cld_FogLamp_Cmd
    
    int8 Cld_HeadLamp_Cmd
    
    int8 Cld_DblFlashLamp_Cmd
    
    int8 Cld_TurnLLamp_Cmd
    
    int8 Cld_TurnRLamp_Cmd
    
    int8 Cld_BackLamp_Cmd
    
    int8 Cld_Buzzer_Cmd
    
    int8 Cld_Horn_Cmd
    
    int8 Cld_RunLamp_Cmd
    
    int32 CldBodyCmd_RollCnt
    
    int32 CldBodyCmd_Checksum
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
    const resolved = new ADCU_CldBodyCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Cld_WidthLamp_Cmd !== undefined) {
      resolved.Cld_WidthLamp_Cmd = msg.Cld_WidthLamp_Cmd;
    }
    else {
      resolved.Cld_WidthLamp_Cmd = 0
    }

    if (msg.Cld_BrkLamp_Cmd !== undefined) {
      resolved.Cld_BrkLamp_Cmd = msg.Cld_BrkLamp_Cmd;
    }
    else {
      resolved.Cld_BrkLamp_Cmd = 0
    }

    if (msg.Cld_FogLamp_Cmd !== undefined) {
      resolved.Cld_FogLamp_Cmd = msg.Cld_FogLamp_Cmd;
    }
    else {
      resolved.Cld_FogLamp_Cmd = 0
    }

    if (msg.Cld_HeadLamp_Cmd !== undefined) {
      resolved.Cld_HeadLamp_Cmd = msg.Cld_HeadLamp_Cmd;
    }
    else {
      resolved.Cld_HeadLamp_Cmd = 0
    }

    if (msg.Cld_DblFlashLamp_Cmd !== undefined) {
      resolved.Cld_DblFlashLamp_Cmd = msg.Cld_DblFlashLamp_Cmd;
    }
    else {
      resolved.Cld_DblFlashLamp_Cmd = 0
    }

    if (msg.Cld_TurnLLamp_Cmd !== undefined) {
      resolved.Cld_TurnLLamp_Cmd = msg.Cld_TurnLLamp_Cmd;
    }
    else {
      resolved.Cld_TurnLLamp_Cmd = 0
    }

    if (msg.Cld_TurnRLamp_Cmd !== undefined) {
      resolved.Cld_TurnRLamp_Cmd = msg.Cld_TurnRLamp_Cmd;
    }
    else {
      resolved.Cld_TurnRLamp_Cmd = 0
    }

    if (msg.Cld_BackLamp_Cmd !== undefined) {
      resolved.Cld_BackLamp_Cmd = msg.Cld_BackLamp_Cmd;
    }
    else {
      resolved.Cld_BackLamp_Cmd = 0
    }

    if (msg.Cld_Buzzer_Cmd !== undefined) {
      resolved.Cld_Buzzer_Cmd = msg.Cld_Buzzer_Cmd;
    }
    else {
      resolved.Cld_Buzzer_Cmd = 0
    }

    if (msg.Cld_Horn_Cmd !== undefined) {
      resolved.Cld_Horn_Cmd = msg.Cld_Horn_Cmd;
    }
    else {
      resolved.Cld_Horn_Cmd = 0
    }

    if (msg.Cld_RunLamp_Cmd !== undefined) {
      resolved.Cld_RunLamp_Cmd = msg.Cld_RunLamp_Cmd;
    }
    else {
      resolved.Cld_RunLamp_Cmd = 0
    }

    if (msg.CldBodyCmd_RollCnt !== undefined) {
      resolved.CldBodyCmd_RollCnt = msg.CldBodyCmd_RollCnt;
    }
    else {
      resolved.CldBodyCmd_RollCnt = 0
    }

    if (msg.CldBodyCmd_Checksum !== undefined) {
      resolved.CldBodyCmd_Checksum = msg.CldBodyCmd_Checksum;
    }
    else {
      resolved.CldBodyCmd_Checksum = 0
    }

    return resolved;
    }
};

module.exports = ADCU_CldBodyCmd;
