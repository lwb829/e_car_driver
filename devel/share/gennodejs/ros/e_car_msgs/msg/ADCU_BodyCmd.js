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

class ADCU_BodyCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.LampCmd_Active = null;
      this.HeadLamp_Cmd = null;
      this.DblFlashLamp_Cmd = null;
      this.TurnLLamp_Cmd = null;
      this.TurnRLamp_Cmd = null;
      this.BackLamp_Cmd = null;
      this.Buzzer_Cmd = null;
      this.Horn_Cmd = null;
      this.RunLamp_Cmd = null;
      this.BrkLamp_Cmd = null;
      this.FogLamp_Cmd = null;
      this.WidthLamp_Cmd = null;
      this.LampCmd_RollCnt = null;
      this.LampCmd_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('LampCmd_Active')) {
        this.LampCmd_Active = initObj.LampCmd_Active
      }
      else {
        this.LampCmd_Active = 0;
      }
      if (initObj.hasOwnProperty('HeadLamp_Cmd')) {
        this.HeadLamp_Cmd = initObj.HeadLamp_Cmd
      }
      else {
        this.HeadLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('DblFlashLamp_Cmd')) {
        this.DblFlashLamp_Cmd = initObj.DblFlashLamp_Cmd
      }
      else {
        this.DblFlashLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('TurnLLamp_Cmd')) {
        this.TurnLLamp_Cmd = initObj.TurnLLamp_Cmd
      }
      else {
        this.TurnLLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('TurnRLamp_Cmd')) {
        this.TurnRLamp_Cmd = initObj.TurnRLamp_Cmd
      }
      else {
        this.TurnRLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('BackLamp_Cmd')) {
        this.BackLamp_Cmd = initObj.BackLamp_Cmd
      }
      else {
        this.BackLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Buzzer_Cmd')) {
        this.Buzzer_Cmd = initObj.Buzzer_Cmd
      }
      else {
        this.Buzzer_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Horn_Cmd')) {
        this.Horn_Cmd = initObj.Horn_Cmd
      }
      else {
        this.Horn_Cmd = 0;
      }
      if (initObj.hasOwnProperty('RunLamp_Cmd')) {
        this.RunLamp_Cmd = initObj.RunLamp_Cmd
      }
      else {
        this.RunLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('BrkLamp_Cmd')) {
        this.BrkLamp_Cmd = initObj.BrkLamp_Cmd
      }
      else {
        this.BrkLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('FogLamp_Cmd')) {
        this.FogLamp_Cmd = initObj.FogLamp_Cmd
      }
      else {
        this.FogLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('WidthLamp_Cmd')) {
        this.WidthLamp_Cmd = initObj.WidthLamp_Cmd
      }
      else {
        this.WidthLamp_Cmd = 0;
      }
      if (initObj.hasOwnProperty('LampCmd_RollCnt')) {
        this.LampCmd_RollCnt = initObj.LampCmd_RollCnt
      }
      else {
        this.LampCmd_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('LampCmd_Checksum')) {
        this.LampCmd_Checksum = initObj.LampCmd_Checksum
      }
      else {
        this.LampCmd_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCU_BodyCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [LampCmd_Active]
    bufferOffset = _serializer.int8(obj.LampCmd_Active, buffer, bufferOffset);
    // Serialize message field [HeadLamp_Cmd]
    bufferOffset = _serializer.int8(obj.HeadLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [DblFlashLamp_Cmd]
    bufferOffset = _serializer.int8(obj.DblFlashLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [TurnLLamp_Cmd]
    bufferOffset = _serializer.int8(obj.TurnLLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [TurnRLamp_Cmd]
    bufferOffset = _serializer.int8(obj.TurnRLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [BackLamp_Cmd]
    bufferOffset = _serializer.int8(obj.BackLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [Buzzer_Cmd]
    bufferOffset = _serializer.int8(obj.Buzzer_Cmd, buffer, bufferOffset);
    // Serialize message field [Horn_Cmd]
    bufferOffset = _serializer.int8(obj.Horn_Cmd, buffer, bufferOffset);
    // Serialize message field [RunLamp_Cmd]
    bufferOffset = _serializer.int8(obj.RunLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [BrkLamp_Cmd]
    bufferOffset = _serializer.int8(obj.BrkLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [FogLamp_Cmd]
    bufferOffset = _serializer.int8(obj.FogLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [WidthLamp_Cmd]
    bufferOffset = _serializer.int8(obj.WidthLamp_Cmd, buffer, bufferOffset);
    // Serialize message field [LampCmd_RollCnt]
    bufferOffset = _serializer.int32(obj.LampCmd_RollCnt, buffer, bufferOffset);
    // Serialize message field [LampCmd_Checksum]
    bufferOffset = _serializer.int32(obj.LampCmd_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_BodyCmd
    let len;
    let data = new ADCU_BodyCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [LampCmd_Active]
    data.LampCmd_Active = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [HeadLamp_Cmd]
    data.HeadLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [DblFlashLamp_Cmd]
    data.DblFlashLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [TurnLLamp_Cmd]
    data.TurnLLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [TurnRLamp_Cmd]
    data.TurnRLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [BackLamp_Cmd]
    data.BackLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Buzzer_Cmd]
    data.Buzzer_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Horn_Cmd]
    data.Horn_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [RunLamp_Cmd]
    data.RunLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [BrkLamp_Cmd]
    data.BrkLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [FogLamp_Cmd]
    data.FogLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [WidthLamp_Cmd]
    data.WidthLamp_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [LampCmd_RollCnt]
    data.LampCmd_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [LampCmd_Checksum]
    data.LampCmd_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_BodyCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd293b40475c67e82549c2ea01e9369b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 LampCmd_Active
    
    int8 HeadLamp_Cmd
    
    int8 DblFlashLamp_Cmd
    
    int8 TurnLLamp_Cmd
    
    int8 TurnRLamp_Cmd
    
    int8 BackLamp_Cmd
    
    int8 Buzzer_Cmd
    
    int8 Horn_Cmd
    
    int8 RunLamp_Cmd
    
    int8 BrkLamp_Cmd
    
    int8 FogLamp_Cmd
    
    int8 WidthLamp_Cmd
    
    int32 LampCmd_RollCnt
    
    int32 LampCmd_Checksum
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
    const resolved = new ADCU_BodyCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.LampCmd_Active !== undefined) {
      resolved.LampCmd_Active = msg.LampCmd_Active;
    }
    else {
      resolved.LampCmd_Active = 0
    }

    if (msg.HeadLamp_Cmd !== undefined) {
      resolved.HeadLamp_Cmd = msg.HeadLamp_Cmd;
    }
    else {
      resolved.HeadLamp_Cmd = 0
    }

    if (msg.DblFlashLamp_Cmd !== undefined) {
      resolved.DblFlashLamp_Cmd = msg.DblFlashLamp_Cmd;
    }
    else {
      resolved.DblFlashLamp_Cmd = 0
    }

    if (msg.TurnLLamp_Cmd !== undefined) {
      resolved.TurnLLamp_Cmd = msg.TurnLLamp_Cmd;
    }
    else {
      resolved.TurnLLamp_Cmd = 0
    }

    if (msg.TurnRLamp_Cmd !== undefined) {
      resolved.TurnRLamp_Cmd = msg.TurnRLamp_Cmd;
    }
    else {
      resolved.TurnRLamp_Cmd = 0
    }

    if (msg.BackLamp_Cmd !== undefined) {
      resolved.BackLamp_Cmd = msg.BackLamp_Cmd;
    }
    else {
      resolved.BackLamp_Cmd = 0
    }

    if (msg.Buzzer_Cmd !== undefined) {
      resolved.Buzzer_Cmd = msg.Buzzer_Cmd;
    }
    else {
      resolved.Buzzer_Cmd = 0
    }

    if (msg.Horn_Cmd !== undefined) {
      resolved.Horn_Cmd = msg.Horn_Cmd;
    }
    else {
      resolved.Horn_Cmd = 0
    }

    if (msg.RunLamp_Cmd !== undefined) {
      resolved.RunLamp_Cmd = msg.RunLamp_Cmd;
    }
    else {
      resolved.RunLamp_Cmd = 0
    }

    if (msg.BrkLamp_Cmd !== undefined) {
      resolved.BrkLamp_Cmd = msg.BrkLamp_Cmd;
    }
    else {
      resolved.BrkLamp_Cmd = 0
    }

    if (msg.FogLamp_Cmd !== undefined) {
      resolved.FogLamp_Cmd = msg.FogLamp_Cmd;
    }
    else {
      resolved.FogLamp_Cmd = 0
    }

    if (msg.WidthLamp_Cmd !== undefined) {
      resolved.WidthLamp_Cmd = msg.WidthLamp_Cmd;
    }
    else {
      resolved.WidthLamp_Cmd = 0
    }

    if (msg.LampCmd_RollCnt !== undefined) {
      resolved.LampCmd_RollCnt = msg.LampCmd_RollCnt;
    }
    else {
      resolved.LampCmd_RollCnt = 0
    }

    if (msg.LampCmd_Checksum !== undefined) {
      resolved.LampCmd_Checksum = msg.LampCmd_Checksum;
    }
    else {
      resolved.LampCmd_Checksum = 0
    }

    return resolved;
    }
};

module.exports = ADCU_BodyCmd;
