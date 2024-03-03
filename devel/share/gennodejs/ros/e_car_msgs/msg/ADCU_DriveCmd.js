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

class ADCU_DriveCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Drv_Active = null;
      this.Drv_CtrlMode = null;
      this.Drv_TgtGear = null;
      this.Drv_TgtPedpos = null;
      this.Drv_TgtVehSpd0 = null;
      this.DrvCmd0_RollCnt = null;
      this.DrvCmd0_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Drv_Active')) {
        this.Drv_Active = initObj.Drv_Active
      }
      else {
        this.Drv_Active = 0;
      }
      if (initObj.hasOwnProperty('Drv_CtrlMode')) {
        this.Drv_CtrlMode = initObj.Drv_CtrlMode
      }
      else {
        this.Drv_CtrlMode = 0;
      }
      if (initObj.hasOwnProperty('Drv_TgtGear')) {
        this.Drv_TgtGear = initObj.Drv_TgtGear
      }
      else {
        this.Drv_TgtGear = 0;
      }
      if (initObj.hasOwnProperty('Drv_TgtPedpos')) {
        this.Drv_TgtPedpos = initObj.Drv_TgtPedpos
      }
      else {
        this.Drv_TgtPedpos = 0;
      }
      if (initObj.hasOwnProperty('Drv_TgtVehSpd0')) {
        this.Drv_TgtVehSpd0 = initObj.Drv_TgtVehSpd0
      }
      else {
        this.Drv_TgtVehSpd0 = 0.0;
      }
      if (initObj.hasOwnProperty('DrvCmd0_RollCnt')) {
        this.DrvCmd0_RollCnt = initObj.DrvCmd0_RollCnt
      }
      else {
        this.DrvCmd0_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('DrvCmd0_Checksum')) {
        this.DrvCmd0_Checksum = initObj.DrvCmd0_Checksum
      }
      else {
        this.DrvCmd0_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCU_DriveCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Drv_Active]
    bufferOffset = _serializer.int8(obj.Drv_Active, buffer, bufferOffset);
    // Serialize message field [Drv_CtrlMode]
    bufferOffset = _serializer.int8(obj.Drv_CtrlMode, buffer, bufferOffset);
    // Serialize message field [Drv_TgtGear]
    bufferOffset = _serializer.int8(obj.Drv_TgtGear, buffer, bufferOffset);
    // Serialize message field [Drv_TgtPedpos]
    bufferOffset = _serializer.int32(obj.Drv_TgtPedpos, buffer, bufferOffset);
    // Serialize message field [Drv_TgtVehSpd0]
    bufferOffset = _serializer.float32(obj.Drv_TgtVehSpd0, buffer, bufferOffset);
    // Serialize message field [DrvCmd0_RollCnt]
    bufferOffset = _serializer.int32(obj.DrvCmd0_RollCnt, buffer, bufferOffset);
    // Serialize message field [DrvCmd0_Checksum]
    bufferOffset = _serializer.int32(obj.DrvCmd0_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_DriveCmd
    let len;
    let data = new ADCU_DriveCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Drv_Active]
    data.Drv_Active = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Drv_CtrlMode]
    data.Drv_CtrlMode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Drv_TgtGear]
    data.Drv_TgtGear = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Drv_TgtPedpos]
    data.Drv_TgtPedpos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Drv_TgtVehSpd0]
    data.Drv_TgtVehSpd0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [DrvCmd0_RollCnt]
    data.DrvCmd0_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [DrvCmd0_Checksum]
    data.DrvCmd0_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_DriveCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6768bd00ea2c2e5ce1f0b7314b783986';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 Drv_Active
    
    int8 Drv_CtrlMode
    
    int8 Drv_TgtGear
    
    int32 Drv_TgtPedpos
    
    float32 Drv_TgtVehSpd0
    
    int32 DrvCmd0_RollCnt
    
    int32 DrvCmd0_Checksum
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
    const resolved = new ADCU_DriveCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Drv_Active !== undefined) {
      resolved.Drv_Active = msg.Drv_Active;
    }
    else {
      resolved.Drv_Active = 0
    }

    if (msg.Drv_CtrlMode !== undefined) {
      resolved.Drv_CtrlMode = msg.Drv_CtrlMode;
    }
    else {
      resolved.Drv_CtrlMode = 0
    }

    if (msg.Drv_TgtGear !== undefined) {
      resolved.Drv_TgtGear = msg.Drv_TgtGear;
    }
    else {
      resolved.Drv_TgtGear = 0
    }

    if (msg.Drv_TgtPedpos !== undefined) {
      resolved.Drv_TgtPedpos = msg.Drv_TgtPedpos;
    }
    else {
      resolved.Drv_TgtPedpos = 0
    }

    if (msg.Drv_TgtVehSpd0 !== undefined) {
      resolved.Drv_TgtVehSpd0 = msg.Drv_TgtVehSpd0;
    }
    else {
      resolved.Drv_TgtVehSpd0 = 0.0
    }

    if (msg.DrvCmd0_RollCnt !== undefined) {
      resolved.DrvCmd0_RollCnt = msg.DrvCmd0_RollCnt;
    }
    else {
      resolved.DrvCmd0_RollCnt = 0
    }

    if (msg.DrvCmd0_Checksum !== undefined) {
      resolved.DrvCmd0_Checksum = msg.DrvCmd0_Checksum;
    }
    else {
      resolved.DrvCmd0_Checksum = 0
    }

    return resolved;
    }
};

module.exports = ADCU_DriveCmd;
