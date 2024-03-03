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

class ADCU_SweepCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Tgt_SweepMode = null;
      this.Sweep_Cmd = null;
      this.ShakeDust_Cmd = null;
      this.GbgDump_Cmd = null;
      this.FtFenderCtrl_Cmd = null;
      this.SweepEStop_Cmd = null;
      this.BrushWtrValFbd_Cmd = null;
      this.SweepCmd_RollCnt = null;
      this.SweepCmd_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Tgt_SweepMode')) {
        this.Tgt_SweepMode = initObj.Tgt_SweepMode
      }
      else {
        this.Tgt_SweepMode = 0;
      }
      if (initObj.hasOwnProperty('Sweep_Cmd')) {
        this.Sweep_Cmd = initObj.Sweep_Cmd
      }
      else {
        this.Sweep_Cmd = 0;
      }
      if (initObj.hasOwnProperty('ShakeDust_Cmd')) {
        this.ShakeDust_Cmd = initObj.ShakeDust_Cmd
      }
      else {
        this.ShakeDust_Cmd = 0;
      }
      if (initObj.hasOwnProperty('GbgDump_Cmd')) {
        this.GbgDump_Cmd = initObj.GbgDump_Cmd
      }
      else {
        this.GbgDump_Cmd = 0;
      }
      if (initObj.hasOwnProperty('FtFenderCtrl_Cmd')) {
        this.FtFenderCtrl_Cmd = initObj.FtFenderCtrl_Cmd
      }
      else {
        this.FtFenderCtrl_Cmd = 0;
      }
      if (initObj.hasOwnProperty('SweepEStop_Cmd')) {
        this.SweepEStop_Cmd = initObj.SweepEStop_Cmd
      }
      else {
        this.SweepEStop_Cmd = 0;
      }
      if (initObj.hasOwnProperty('BrushWtrValFbd_Cmd')) {
        this.BrushWtrValFbd_Cmd = initObj.BrushWtrValFbd_Cmd
      }
      else {
        this.BrushWtrValFbd_Cmd = 0;
      }
      if (initObj.hasOwnProperty('SweepCmd_RollCnt')) {
        this.SweepCmd_RollCnt = initObj.SweepCmd_RollCnt
      }
      else {
        this.SweepCmd_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('SweepCmd_Checksum')) {
        this.SweepCmd_Checksum = initObj.SweepCmd_Checksum
      }
      else {
        this.SweepCmd_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCU_SweepCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Tgt_SweepMode]
    bufferOffset = _serializer.int8(obj.Tgt_SweepMode, buffer, bufferOffset);
    // Serialize message field [Sweep_Cmd]
    bufferOffset = _serializer.int8(obj.Sweep_Cmd, buffer, bufferOffset);
    // Serialize message field [ShakeDust_Cmd]
    bufferOffset = _serializer.int8(obj.ShakeDust_Cmd, buffer, bufferOffset);
    // Serialize message field [GbgDump_Cmd]
    bufferOffset = _serializer.int8(obj.GbgDump_Cmd, buffer, bufferOffset);
    // Serialize message field [FtFenderCtrl_Cmd]
    bufferOffset = _serializer.int8(obj.FtFenderCtrl_Cmd, buffer, bufferOffset);
    // Serialize message field [SweepEStop_Cmd]
    bufferOffset = _serializer.int8(obj.SweepEStop_Cmd, buffer, bufferOffset);
    // Serialize message field [BrushWtrValFbd_Cmd]
    bufferOffset = _serializer.int8(obj.BrushWtrValFbd_Cmd, buffer, bufferOffset);
    // Serialize message field [SweepCmd_RollCnt]
    bufferOffset = _serializer.int32(obj.SweepCmd_RollCnt, buffer, bufferOffset);
    // Serialize message field [SweepCmd_Checksum]
    bufferOffset = _serializer.int32(obj.SweepCmd_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_SweepCmd
    let len;
    let data = new ADCU_SweepCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Tgt_SweepMode]
    data.Tgt_SweepMode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Sweep_Cmd]
    data.Sweep_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ShakeDust_Cmd]
    data.ShakeDust_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [GbgDump_Cmd]
    data.GbgDump_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [FtFenderCtrl_Cmd]
    data.FtFenderCtrl_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [SweepEStop_Cmd]
    data.SweepEStop_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [BrushWtrValFbd_Cmd]
    data.BrushWtrValFbd_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [SweepCmd_RollCnt]
    data.SweepCmd_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [SweepCmd_Checksum]
    data.SweepCmd_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_SweepCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fc2cfb79831693da7794ecbd5abc3cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 Tgt_SweepMode
    
    int8 Sweep_Cmd
    
    int8 ShakeDust_Cmd
    
    int8 GbgDump_Cmd
    
    int8 FtFenderCtrl_Cmd
    
    int8 SweepEStop_Cmd
    
    int8 BrushWtrValFbd_Cmd
    
    int32 SweepCmd_RollCnt
    
    int32 SweepCmd_Checksum
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
    const resolved = new ADCU_SweepCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Tgt_SweepMode !== undefined) {
      resolved.Tgt_SweepMode = msg.Tgt_SweepMode;
    }
    else {
      resolved.Tgt_SweepMode = 0
    }

    if (msg.Sweep_Cmd !== undefined) {
      resolved.Sweep_Cmd = msg.Sweep_Cmd;
    }
    else {
      resolved.Sweep_Cmd = 0
    }

    if (msg.ShakeDust_Cmd !== undefined) {
      resolved.ShakeDust_Cmd = msg.ShakeDust_Cmd;
    }
    else {
      resolved.ShakeDust_Cmd = 0
    }

    if (msg.GbgDump_Cmd !== undefined) {
      resolved.GbgDump_Cmd = msg.GbgDump_Cmd;
    }
    else {
      resolved.GbgDump_Cmd = 0
    }

    if (msg.FtFenderCtrl_Cmd !== undefined) {
      resolved.FtFenderCtrl_Cmd = msg.FtFenderCtrl_Cmd;
    }
    else {
      resolved.FtFenderCtrl_Cmd = 0
    }

    if (msg.SweepEStop_Cmd !== undefined) {
      resolved.SweepEStop_Cmd = msg.SweepEStop_Cmd;
    }
    else {
      resolved.SweepEStop_Cmd = 0
    }

    if (msg.BrushWtrValFbd_Cmd !== undefined) {
      resolved.BrushWtrValFbd_Cmd = msg.BrushWtrValFbd_Cmd;
    }
    else {
      resolved.BrushWtrValFbd_Cmd = 0
    }

    if (msg.SweepCmd_RollCnt !== undefined) {
      resolved.SweepCmd_RollCnt = msg.SweepCmd_RollCnt;
    }
    else {
      resolved.SweepCmd_RollCnt = 0
    }

    if (msg.SweepCmd_Checksum !== undefined) {
      resolved.SweepCmd_Checksum = msg.SweepCmd_Checksum;
    }
    else {
      resolved.SweepCmd_Checksum = 0
    }

    return resolved;
    }
};

module.exports = ADCU_SweepCmd;
