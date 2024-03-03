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

class ADCU_PowerCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ADVehPwrup_Cmd = null;
      this.ADChasPwrup_Cmd = null;
      this.AD12VMCPwrup_Cmd = null;
      this.AD12VRCPwrup_Cmd = null;
      this.AD24VMCPwrup_Cmd = null;
      this.ADPA12VPwrup_Cmd = null;
      this.ADPA24VPwrup_Cmd = null;
      this.AD12VSC1Pwrup_Cmd = null;
      this.AD12VSC2Pwrup_Cmd = null;
      this.AD12VSC3Pwrup_Cmd = null;
      this.AD12VSC4Pwrup_Cmd = null;
      this.AD12VSC5Pwrup_Cmd = null;
      this.AD12VSC6Pwrup_Cmd = null;
      this.AD12VMCPwrdownCnfm_Cmd = null;
      this.AD12VRCPwrdownCnfm_Cmd = null;
      this.AD24VMCPwrdownCnfm_Cmd = null;
      this.ADPA12VPwrdownCnfm_Cmd = null;
      this.ADPA24VPwrdwnCnfm_Cmd = null;
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
      if (initObj.hasOwnProperty('ADVehPwrup_Cmd')) {
        this.ADVehPwrup_Cmd = initObj.ADVehPwrup_Cmd
      }
      else {
        this.ADVehPwrup_Cmd = 0;
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
      if (initObj.hasOwnProperty('AD12VRCPwrup_Cmd')) {
        this.AD12VRCPwrup_Cmd = initObj.AD12VRCPwrup_Cmd
      }
      else {
        this.AD12VRCPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('AD24VMCPwrup_Cmd')) {
        this.AD24VMCPwrup_Cmd = initObj.AD24VMCPwrup_Cmd
      }
      else {
        this.AD24VMCPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('ADPA12VPwrup_Cmd')) {
        this.ADPA12VPwrup_Cmd = initObj.ADPA12VPwrup_Cmd
      }
      else {
        this.ADPA12VPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('ADPA24VPwrup_Cmd')) {
        this.ADPA24VPwrup_Cmd = initObj.ADPA24VPwrup_Cmd
      }
      else {
        this.ADPA24VPwrup_Cmd = 0;
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
      if (initObj.hasOwnProperty('AD12VMCPwrdownCnfm_Cmd')) {
        this.AD12VMCPwrdownCnfm_Cmd = initObj.AD12VMCPwrdownCnfm_Cmd
      }
      else {
        this.AD12VMCPwrdownCnfm_Cmd = 0;
      }
      if (initObj.hasOwnProperty('AD12VRCPwrdownCnfm_Cmd')) {
        this.AD12VRCPwrdownCnfm_Cmd = initObj.AD12VRCPwrdownCnfm_Cmd
      }
      else {
        this.AD12VRCPwrdownCnfm_Cmd = 0;
      }
      if (initObj.hasOwnProperty('AD24VMCPwrdownCnfm_Cmd')) {
        this.AD24VMCPwrdownCnfm_Cmd = initObj.AD24VMCPwrdownCnfm_Cmd
      }
      else {
        this.AD24VMCPwrdownCnfm_Cmd = 0;
      }
      if (initObj.hasOwnProperty('ADPA12VPwrdownCnfm_Cmd')) {
        this.ADPA12VPwrdownCnfm_Cmd = initObj.ADPA12VPwrdownCnfm_Cmd
      }
      else {
        this.ADPA12VPwrdownCnfm_Cmd = 0;
      }
      if (initObj.hasOwnProperty('ADPA24VPwrdwnCnfm_Cmd')) {
        this.ADPA24VPwrdwnCnfm_Cmd = initObj.ADPA24VPwrdwnCnfm_Cmd
      }
      else {
        this.ADPA24VPwrdwnCnfm_Cmd = 0;
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
    // Serializes a message object of type ADCU_PowerCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ADVehPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.ADVehPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [ADChasPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.ADChasPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [AD12VMCPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.AD12VMCPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [AD12VRCPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.AD12VRCPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [AD24VMCPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.AD24VMCPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [ADPA12VPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.ADPA12VPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [ADPA24VPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.ADPA24VPwrup_Cmd, buffer, bufferOffset);
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
    // Serialize message field [AD12VMCPwrdownCnfm_Cmd]
    bufferOffset = _serializer.int8(obj.AD12VMCPwrdownCnfm_Cmd, buffer, bufferOffset);
    // Serialize message field [AD12VRCPwrdownCnfm_Cmd]
    bufferOffset = _serializer.int8(obj.AD12VRCPwrdownCnfm_Cmd, buffer, bufferOffset);
    // Serialize message field [AD24VMCPwrdownCnfm_Cmd]
    bufferOffset = _serializer.int8(obj.AD24VMCPwrdownCnfm_Cmd, buffer, bufferOffset);
    // Serialize message field [ADPA12VPwrdownCnfm_Cmd]
    bufferOffset = _serializer.int8(obj.ADPA12VPwrdownCnfm_Cmd, buffer, bufferOffset);
    // Serialize message field [ADPA24VPwrdwnCnfm_Cmd]
    bufferOffset = _serializer.int8(obj.ADPA24VPwrdwnCnfm_Cmd, buffer, bufferOffset);
    // Serialize message field [PwrCmd_RollCnt]
    bufferOffset = _serializer.int32(obj.PwrCmd_RollCnt, buffer, bufferOffset);
    // Serialize message field [PwrCmd_Checksum]
    bufferOffset = _serializer.int32(obj.PwrCmd_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_PowerCmd
    let len;
    let data = new ADCU_PowerCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ADVehPwrup_Cmd]
    data.ADVehPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ADChasPwrup_Cmd]
    data.ADChasPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD12VMCPwrup_Cmd]
    data.AD12VMCPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD12VRCPwrup_Cmd]
    data.AD12VRCPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD24VMCPwrup_Cmd]
    data.AD24VMCPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ADPA12VPwrup_Cmd]
    data.ADPA12VPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ADPA24VPwrup_Cmd]
    data.ADPA24VPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
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
    // Deserialize message field [AD12VMCPwrdownCnfm_Cmd]
    data.AD12VMCPwrdownCnfm_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD12VRCPwrdownCnfm_Cmd]
    data.AD12VRCPwrdownCnfm_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AD24VMCPwrdownCnfm_Cmd]
    data.AD24VMCPwrdownCnfm_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ADPA12VPwrdownCnfm_Cmd]
    data.ADPA12VPwrdownCnfm_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ADPA24VPwrdwnCnfm_Cmd]
    data.ADPA24VPwrdwnCnfm_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [PwrCmd_RollCnt]
    data.PwrCmd_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [PwrCmd_Checksum]
    data.PwrCmd_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_PowerCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c35626040527e5a2f86622e5735f1b6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 ADVehPwrup_Cmd
    
    int8 ADChasPwrup_Cmd
    
    int8 AD12VMCPwrup_Cmd
    
    int8 AD12VRCPwrup_Cmd
    
    int8 AD24VMCPwrup_Cmd
    
    int8 ADPA12VPwrup_Cmd
    
    int8 ADPA24VPwrup_Cmd
    
    int8 AD12VSC1Pwrup_Cmd
    
    int8 AD12VSC2Pwrup_Cmd
    
    int8 AD12VSC3Pwrup_Cmd
    
    int8 AD12VSC4Pwrup_Cmd
    
    int8 AD12VSC5Pwrup_Cmd
    
    int8 AD12VSC6Pwrup_Cmd
    
    int8 AD12VMCPwrdownCnfm_Cmd
    
    int8 AD12VRCPwrdownCnfm_Cmd
    
    int8 AD24VMCPwrdownCnfm_Cmd
    
    int8 ADPA12VPwrdownCnfm_Cmd
    
    int8 ADPA24VPwrdwnCnfm_Cmd
    
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
    const resolved = new ADCU_PowerCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ADVehPwrup_Cmd !== undefined) {
      resolved.ADVehPwrup_Cmd = msg.ADVehPwrup_Cmd;
    }
    else {
      resolved.ADVehPwrup_Cmd = 0
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

    if (msg.AD12VRCPwrup_Cmd !== undefined) {
      resolved.AD12VRCPwrup_Cmd = msg.AD12VRCPwrup_Cmd;
    }
    else {
      resolved.AD12VRCPwrup_Cmd = 0
    }

    if (msg.AD24VMCPwrup_Cmd !== undefined) {
      resolved.AD24VMCPwrup_Cmd = msg.AD24VMCPwrup_Cmd;
    }
    else {
      resolved.AD24VMCPwrup_Cmd = 0
    }

    if (msg.ADPA12VPwrup_Cmd !== undefined) {
      resolved.ADPA12VPwrup_Cmd = msg.ADPA12VPwrup_Cmd;
    }
    else {
      resolved.ADPA12VPwrup_Cmd = 0
    }

    if (msg.ADPA24VPwrup_Cmd !== undefined) {
      resolved.ADPA24VPwrup_Cmd = msg.ADPA24VPwrup_Cmd;
    }
    else {
      resolved.ADPA24VPwrup_Cmd = 0
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

    if (msg.AD12VMCPwrdownCnfm_Cmd !== undefined) {
      resolved.AD12VMCPwrdownCnfm_Cmd = msg.AD12VMCPwrdownCnfm_Cmd;
    }
    else {
      resolved.AD12VMCPwrdownCnfm_Cmd = 0
    }

    if (msg.AD12VRCPwrdownCnfm_Cmd !== undefined) {
      resolved.AD12VRCPwrdownCnfm_Cmd = msg.AD12VRCPwrdownCnfm_Cmd;
    }
    else {
      resolved.AD12VRCPwrdownCnfm_Cmd = 0
    }

    if (msg.AD24VMCPwrdownCnfm_Cmd !== undefined) {
      resolved.AD24VMCPwrdownCnfm_Cmd = msg.AD24VMCPwrdownCnfm_Cmd;
    }
    else {
      resolved.AD24VMCPwrdownCnfm_Cmd = 0
    }

    if (msg.ADPA12VPwrdownCnfm_Cmd !== undefined) {
      resolved.ADPA12VPwrdownCnfm_Cmd = msg.ADPA12VPwrdownCnfm_Cmd;
    }
    else {
      resolved.ADPA12VPwrdownCnfm_Cmd = 0
    }

    if (msg.ADPA24VPwrdwnCnfm_Cmd !== undefined) {
      resolved.ADPA24VPwrdwnCnfm_Cmd = msg.ADPA24VPwrdwnCnfm_Cmd;
    }
    else {
      resolved.ADPA24VPwrdwnCnfm_Cmd = 0
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

module.exports = ADCU_PowerCmd;
