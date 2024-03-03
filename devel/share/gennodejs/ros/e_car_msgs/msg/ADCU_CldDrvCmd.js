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

class ADCU_CldDrvCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Cld_CtrlActive = null;
      this.Cld_PrkEnable = null;
      this.Cld_DriveMode = null;
      this.Cld_TgtGear = null;
      this.Cld_TgtThrotVal = null;
      this.Cld_TgtBrkVal = null;
      this.Cld_TgtStrAngle = null;
      this.CldDrvCmd_RollCnt = null;
      this.CldDrvCmd_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Cld_CtrlActive')) {
        this.Cld_CtrlActive = initObj.Cld_CtrlActive
      }
      else {
        this.Cld_CtrlActive = 0;
      }
      if (initObj.hasOwnProperty('Cld_PrkEnable')) {
        this.Cld_PrkEnable = initObj.Cld_PrkEnable
      }
      else {
        this.Cld_PrkEnable = 0;
      }
      if (initObj.hasOwnProperty('Cld_DriveMode')) {
        this.Cld_DriveMode = initObj.Cld_DriveMode
      }
      else {
        this.Cld_DriveMode = 0;
      }
      if (initObj.hasOwnProperty('Cld_TgtGear')) {
        this.Cld_TgtGear = initObj.Cld_TgtGear
      }
      else {
        this.Cld_TgtGear = 0;
      }
      if (initObj.hasOwnProperty('Cld_TgtThrotVal')) {
        this.Cld_TgtThrotVal = initObj.Cld_TgtThrotVal
      }
      else {
        this.Cld_TgtThrotVal = 0.0;
      }
      if (initObj.hasOwnProperty('Cld_TgtBrkVal')) {
        this.Cld_TgtBrkVal = initObj.Cld_TgtBrkVal
      }
      else {
        this.Cld_TgtBrkVal = 0.0;
      }
      if (initObj.hasOwnProperty('Cld_TgtStrAngle')) {
        this.Cld_TgtStrAngle = initObj.Cld_TgtStrAngle
      }
      else {
        this.Cld_TgtStrAngle = 0.0;
      }
      if (initObj.hasOwnProperty('CldDrvCmd_RollCnt')) {
        this.CldDrvCmd_RollCnt = initObj.CldDrvCmd_RollCnt
      }
      else {
        this.CldDrvCmd_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('CldDrvCmd_Checksum')) {
        this.CldDrvCmd_Checksum = initObj.CldDrvCmd_Checksum
      }
      else {
        this.CldDrvCmd_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCU_CldDrvCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Cld_CtrlActive]
    bufferOffset = _serializer.int8(obj.Cld_CtrlActive, buffer, bufferOffset);
    // Serialize message field [Cld_PrkEnable]
    bufferOffset = _serializer.int8(obj.Cld_PrkEnable, buffer, bufferOffset);
    // Serialize message field [Cld_DriveMode]
    bufferOffset = _serializer.int8(obj.Cld_DriveMode, buffer, bufferOffset);
    // Serialize message field [Cld_TgtGear]
    bufferOffset = _serializer.int32(obj.Cld_TgtGear, buffer, bufferOffset);
    // Serialize message field [Cld_TgtThrotVal]
    bufferOffset = _serializer.float32(obj.Cld_TgtThrotVal, buffer, bufferOffset);
    // Serialize message field [Cld_TgtBrkVal]
    bufferOffset = _serializer.float32(obj.Cld_TgtBrkVal, buffer, bufferOffset);
    // Serialize message field [Cld_TgtStrAngle]
    bufferOffset = _serializer.float32(obj.Cld_TgtStrAngle, buffer, bufferOffset);
    // Serialize message field [CldDrvCmd_RollCnt]
    bufferOffset = _serializer.int32(obj.CldDrvCmd_RollCnt, buffer, bufferOffset);
    // Serialize message field [CldDrvCmd_Checksum]
    bufferOffset = _serializer.int32(obj.CldDrvCmd_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_CldDrvCmd
    let len;
    let data = new ADCU_CldDrvCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Cld_CtrlActive]
    data.Cld_CtrlActive = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_PrkEnable]
    data.Cld_PrkEnable = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_DriveMode]
    data.Cld_DriveMode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld_TgtGear]
    data.Cld_TgtGear = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Cld_TgtThrotVal]
    data.Cld_TgtThrotVal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Cld_TgtBrkVal]
    data.Cld_TgtBrkVal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Cld_TgtStrAngle]
    data.Cld_TgtStrAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CldDrvCmd_RollCnt]
    data.CldDrvCmd_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [CldDrvCmd_Checksum]
    data.CldDrvCmd_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_CldDrvCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03ef622a29189d40a66afa9e28b57a09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 Cld_CtrlActive
    
    int8 Cld_PrkEnable
    
    int8 Cld_DriveMode
    
    int32 Cld_TgtGear
    
    float32 Cld_TgtThrotVal
    
    float32 Cld_TgtBrkVal
    
    float32 Cld_TgtStrAngle
    
    int32 CldDrvCmd_RollCnt
    
    int32 CldDrvCmd_Checksum
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
    const resolved = new ADCU_CldDrvCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Cld_CtrlActive !== undefined) {
      resolved.Cld_CtrlActive = msg.Cld_CtrlActive;
    }
    else {
      resolved.Cld_CtrlActive = 0
    }

    if (msg.Cld_PrkEnable !== undefined) {
      resolved.Cld_PrkEnable = msg.Cld_PrkEnable;
    }
    else {
      resolved.Cld_PrkEnable = 0
    }

    if (msg.Cld_DriveMode !== undefined) {
      resolved.Cld_DriveMode = msg.Cld_DriveMode;
    }
    else {
      resolved.Cld_DriveMode = 0
    }

    if (msg.Cld_TgtGear !== undefined) {
      resolved.Cld_TgtGear = msg.Cld_TgtGear;
    }
    else {
      resolved.Cld_TgtGear = 0
    }

    if (msg.Cld_TgtThrotVal !== undefined) {
      resolved.Cld_TgtThrotVal = msg.Cld_TgtThrotVal;
    }
    else {
      resolved.Cld_TgtThrotVal = 0.0
    }

    if (msg.Cld_TgtBrkVal !== undefined) {
      resolved.Cld_TgtBrkVal = msg.Cld_TgtBrkVal;
    }
    else {
      resolved.Cld_TgtBrkVal = 0.0
    }

    if (msg.Cld_TgtStrAngle !== undefined) {
      resolved.Cld_TgtStrAngle = msg.Cld_TgtStrAngle;
    }
    else {
      resolved.Cld_TgtStrAngle = 0.0
    }

    if (msg.CldDrvCmd_RollCnt !== undefined) {
      resolved.CldDrvCmd_RollCnt = msg.CldDrvCmd_RollCnt;
    }
    else {
      resolved.CldDrvCmd_RollCnt = 0
    }

    if (msg.CldDrvCmd_Checksum !== undefined) {
      resolved.CldDrvCmd_Checksum = msg.CldDrvCmd_Checksum;
    }
    else {
      resolved.CldDrvCmd_Checksum = 0
    }

    return resolved;
    }
};

module.exports = ADCU_CldDrvCmd;
