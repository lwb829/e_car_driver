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

class ADCU_CldPowerCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.CldVehPwrup_Cmd = null;
      this.CldChasPwrup_Cmd = null;
      this.Cld12VMCPwrup_Cmd = null;
      this.Cld12VRCPwrup_Cmd = null;
      this.Cld24VMCPwrup_Cmd = null;
      this.CldPA12VPwrup_Cmd = null;
      this.CldPA24VPwrup_Cmd = null;
      this.Cld12VSC1Pwrup_Cmd = null;
      this.Cld12VSC2Pwrup_Cmd = null;
      this.Cld12VSC3Pwrup_Cmd = null;
      this.Cld12VSC4Pwrup_Cmd = null;
      this.Cld12VSC5Pwrup_Cmd = null;
      this.Cld12VSC6Pwrup_Cmd = null;
      this.Cld12VMCPwrdownCnfm_Cmd = null;
      this.Cld12VRCPwrdownCnfm_Cmd = null;
      this.Cld24VMCPwrdownCnfm_Cmd = null;
      this.CldPA12VPwrdownCnfm_Cmd = null;
      this.CldPA24VPwrdownCnfm_Cmd = null;
      this.CldPwrCmd_RollCnt = null;
      this.CldPwrCmd_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('CldVehPwrup_Cmd')) {
        this.CldVehPwrup_Cmd = initObj.CldVehPwrup_Cmd
      }
      else {
        this.CldVehPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('CldChasPwrup_Cmd')) {
        this.CldChasPwrup_Cmd = initObj.CldChasPwrup_Cmd
      }
      else {
        this.CldChasPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld12VMCPwrup_Cmd')) {
        this.Cld12VMCPwrup_Cmd = initObj.Cld12VMCPwrup_Cmd
      }
      else {
        this.Cld12VMCPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld12VRCPwrup_Cmd')) {
        this.Cld12VRCPwrup_Cmd = initObj.Cld12VRCPwrup_Cmd
      }
      else {
        this.Cld12VRCPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld24VMCPwrup_Cmd')) {
        this.Cld24VMCPwrup_Cmd = initObj.Cld24VMCPwrup_Cmd
      }
      else {
        this.Cld24VMCPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('CldPA12VPwrup_Cmd')) {
        this.CldPA12VPwrup_Cmd = initObj.CldPA12VPwrup_Cmd
      }
      else {
        this.CldPA12VPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('CldPA24VPwrup_Cmd')) {
        this.CldPA24VPwrup_Cmd = initObj.CldPA24VPwrup_Cmd
      }
      else {
        this.CldPA24VPwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld12VSC1Pwrup_Cmd')) {
        this.Cld12VSC1Pwrup_Cmd = initObj.Cld12VSC1Pwrup_Cmd
      }
      else {
        this.Cld12VSC1Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld12VSC2Pwrup_Cmd')) {
        this.Cld12VSC2Pwrup_Cmd = initObj.Cld12VSC2Pwrup_Cmd
      }
      else {
        this.Cld12VSC2Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld12VSC3Pwrup_Cmd')) {
        this.Cld12VSC3Pwrup_Cmd = initObj.Cld12VSC3Pwrup_Cmd
      }
      else {
        this.Cld12VSC3Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld12VSC4Pwrup_Cmd')) {
        this.Cld12VSC4Pwrup_Cmd = initObj.Cld12VSC4Pwrup_Cmd
      }
      else {
        this.Cld12VSC4Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld12VSC5Pwrup_Cmd')) {
        this.Cld12VSC5Pwrup_Cmd = initObj.Cld12VSC5Pwrup_Cmd
      }
      else {
        this.Cld12VSC5Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld12VSC6Pwrup_Cmd')) {
        this.Cld12VSC6Pwrup_Cmd = initObj.Cld12VSC6Pwrup_Cmd
      }
      else {
        this.Cld12VSC6Pwrup_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld12VMCPwrdownCnfm_Cmd')) {
        this.Cld12VMCPwrdownCnfm_Cmd = initObj.Cld12VMCPwrdownCnfm_Cmd
      }
      else {
        this.Cld12VMCPwrdownCnfm_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld12VRCPwrdownCnfm_Cmd')) {
        this.Cld12VRCPwrdownCnfm_Cmd = initObj.Cld12VRCPwrdownCnfm_Cmd
      }
      else {
        this.Cld12VRCPwrdownCnfm_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Cld24VMCPwrdownCnfm_Cmd')) {
        this.Cld24VMCPwrdownCnfm_Cmd = initObj.Cld24VMCPwrdownCnfm_Cmd
      }
      else {
        this.Cld24VMCPwrdownCnfm_Cmd = 0;
      }
      if (initObj.hasOwnProperty('CldPA12VPwrdownCnfm_Cmd')) {
        this.CldPA12VPwrdownCnfm_Cmd = initObj.CldPA12VPwrdownCnfm_Cmd
      }
      else {
        this.CldPA12VPwrdownCnfm_Cmd = 0;
      }
      if (initObj.hasOwnProperty('CldPA24VPwrdownCnfm_Cmd')) {
        this.CldPA24VPwrdownCnfm_Cmd = initObj.CldPA24VPwrdownCnfm_Cmd
      }
      else {
        this.CldPA24VPwrdownCnfm_Cmd = 0;
      }
      if (initObj.hasOwnProperty('CldPwrCmd_RollCnt')) {
        this.CldPwrCmd_RollCnt = initObj.CldPwrCmd_RollCnt
      }
      else {
        this.CldPwrCmd_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('CldPwrCmd_Checksum')) {
        this.CldPwrCmd_Checksum = initObj.CldPwrCmd_Checksum
      }
      else {
        this.CldPwrCmd_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCU_CldPowerCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [CldVehPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.CldVehPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [CldChasPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.CldChasPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld12VMCPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.Cld12VMCPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld12VRCPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.Cld12VRCPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld24VMCPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.Cld24VMCPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [CldPA12VPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.CldPA12VPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [CldPA24VPwrup_Cmd]
    bufferOffset = _serializer.int8(obj.CldPA24VPwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld12VSC1Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.Cld12VSC1Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld12VSC2Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.Cld12VSC2Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld12VSC3Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.Cld12VSC3Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld12VSC4Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.Cld12VSC4Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld12VSC5Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.Cld12VSC5Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld12VSC6Pwrup_Cmd]
    bufferOffset = _serializer.int8(obj.Cld12VSC6Pwrup_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld12VMCPwrdownCnfm_Cmd]
    bufferOffset = _serializer.int8(obj.Cld12VMCPwrdownCnfm_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld12VRCPwrdownCnfm_Cmd]
    bufferOffset = _serializer.int8(obj.Cld12VRCPwrdownCnfm_Cmd, buffer, bufferOffset);
    // Serialize message field [Cld24VMCPwrdownCnfm_Cmd]
    bufferOffset = _serializer.int8(obj.Cld24VMCPwrdownCnfm_Cmd, buffer, bufferOffset);
    // Serialize message field [CldPA12VPwrdownCnfm_Cmd]
    bufferOffset = _serializer.int8(obj.CldPA12VPwrdownCnfm_Cmd, buffer, bufferOffset);
    // Serialize message field [CldPA24VPwrdownCnfm_Cmd]
    bufferOffset = _serializer.int8(obj.CldPA24VPwrdownCnfm_Cmd, buffer, bufferOffset);
    // Serialize message field [CldPwrCmd_RollCnt]
    bufferOffset = _serializer.int32(obj.CldPwrCmd_RollCnt, buffer, bufferOffset);
    // Serialize message field [CldPwrCmd_Checksum]
    bufferOffset = _serializer.int32(obj.CldPwrCmd_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_CldPowerCmd
    let len;
    let data = new ADCU_CldPowerCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [CldVehPwrup_Cmd]
    data.CldVehPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CldChasPwrup_Cmd]
    data.CldChasPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld12VMCPwrup_Cmd]
    data.Cld12VMCPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld12VRCPwrup_Cmd]
    data.Cld12VRCPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld24VMCPwrup_Cmd]
    data.Cld24VMCPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CldPA12VPwrup_Cmd]
    data.CldPA12VPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CldPA24VPwrup_Cmd]
    data.CldPA24VPwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld12VSC1Pwrup_Cmd]
    data.Cld12VSC1Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld12VSC2Pwrup_Cmd]
    data.Cld12VSC2Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld12VSC3Pwrup_Cmd]
    data.Cld12VSC3Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld12VSC4Pwrup_Cmd]
    data.Cld12VSC4Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld12VSC5Pwrup_Cmd]
    data.Cld12VSC5Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld12VSC6Pwrup_Cmd]
    data.Cld12VSC6Pwrup_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld12VMCPwrdownCnfm_Cmd]
    data.Cld12VMCPwrdownCnfm_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld12VRCPwrdownCnfm_Cmd]
    data.Cld12VRCPwrdownCnfm_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Cld24VMCPwrdownCnfm_Cmd]
    data.Cld24VMCPwrdownCnfm_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CldPA12VPwrdownCnfm_Cmd]
    data.CldPA12VPwrdownCnfm_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CldPA24VPwrdownCnfm_Cmd]
    data.CldPA24VPwrdownCnfm_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CldPwrCmd_RollCnt]
    data.CldPwrCmd_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [CldPwrCmd_Checksum]
    data.CldPwrCmd_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_CldPowerCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '712914972d7a36597399d67071cb4425';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 CldVehPwrup_Cmd
    
    int8 CldChasPwrup_Cmd
    
    int8 Cld12VMCPwrup_Cmd
    
    int8 Cld12VRCPwrup_Cmd
    
    int8 Cld24VMCPwrup_Cmd
    
    int8 CldPA12VPwrup_Cmd
    
    int8 CldPA24VPwrup_Cmd
    
    int8 Cld12VSC1Pwrup_Cmd
    
    int8 Cld12VSC2Pwrup_Cmd
    
    int8 Cld12VSC3Pwrup_Cmd
    
    int8 Cld12VSC4Pwrup_Cmd
    
    int8 Cld12VSC5Pwrup_Cmd
    
    int8 Cld12VSC6Pwrup_Cmd
    
    int8 Cld12VMCPwrdownCnfm_Cmd
    
    int8 Cld12VRCPwrdownCnfm_Cmd
    
    int8 Cld24VMCPwrdownCnfm_Cmd
    
    int8 CldPA12VPwrdownCnfm_Cmd
    
    int8 CldPA24VPwrdownCnfm_Cmd
    
    int32 CldPwrCmd_RollCnt
    
    int32 CldPwrCmd_Checksum
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
    const resolved = new ADCU_CldPowerCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.CldVehPwrup_Cmd !== undefined) {
      resolved.CldVehPwrup_Cmd = msg.CldVehPwrup_Cmd;
    }
    else {
      resolved.CldVehPwrup_Cmd = 0
    }

    if (msg.CldChasPwrup_Cmd !== undefined) {
      resolved.CldChasPwrup_Cmd = msg.CldChasPwrup_Cmd;
    }
    else {
      resolved.CldChasPwrup_Cmd = 0
    }

    if (msg.Cld12VMCPwrup_Cmd !== undefined) {
      resolved.Cld12VMCPwrup_Cmd = msg.Cld12VMCPwrup_Cmd;
    }
    else {
      resolved.Cld12VMCPwrup_Cmd = 0
    }

    if (msg.Cld12VRCPwrup_Cmd !== undefined) {
      resolved.Cld12VRCPwrup_Cmd = msg.Cld12VRCPwrup_Cmd;
    }
    else {
      resolved.Cld12VRCPwrup_Cmd = 0
    }

    if (msg.Cld24VMCPwrup_Cmd !== undefined) {
      resolved.Cld24VMCPwrup_Cmd = msg.Cld24VMCPwrup_Cmd;
    }
    else {
      resolved.Cld24VMCPwrup_Cmd = 0
    }

    if (msg.CldPA12VPwrup_Cmd !== undefined) {
      resolved.CldPA12VPwrup_Cmd = msg.CldPA12VPwrup_Cmd;
    }
    else {
      resolved.CldPA12VPwrup_Cmd = 0
    }

    if (msg.CldPA24VPwrup_Cmd !== undefined) {
      resolved.CldPA24VPwrup_Cmd = msg.CldPA24VPwrup_Cmd;
    }
    else {
      resolved.CldPA24VPwrup_Cmd = 0
    }

    if (msg.Cld12VSC1Pwrup_Cmd !== undefined) {
      resolved.Cld12VSC1Pwrup_Cmd = msg.Cld12VSC1Pwrup_Cmd;
    }
    else {
      resolved.Cld12VSC1Pwrup_Cmd = 0
    }

    if (msg.Cld12VSC2Pwrup_Cmd !== undefined) {
      resolved.Cld12VSC2Pwrup_Cmd = msg.Cld12VSC2Pwrup_Cmd;
    }
    else {
      resolved.Cld12VSC2Pwrup_Cmd = 0
    }

    if (msg.Cld12VSC3Pwrup_Cmd !== undefined) {
      resolved.Cld12VSC3Pwrup_Cmd = msg.Cld12VSC3Pwrup_Cmd;
    }
    else {
      resolved.Cld12VSC3Pwrup_Cmd = 0
    }

    if (msg.Cld12VSC4Pwrup_Cmd !== undefined) {
      resolved.Cld12VSC4Pwrup_Cmd = msg.Cld12VSC4Pwrup_Cmd;
    }
    else {
      resolved.Cld12VSC4Pwrup_Cmd = 0
    }

    if (msg.Cld12VSC5Pwrup_Cmd !== undefined) {
      resolved.Cld12VSC5Pwrup_Cmd = msg.Cld12VSC5Pwrup_Cmd;
    }
    else {
      resolved.Cld12VSC5Pwrup_Cmd = 0
    }

    if (msg.Cld12VSC6Pwrup_Cmd !== undefined) {
      resolved.Cld12VSC6Pwrup_Cmd = msg.Cld12VSC6Pwrup_Cmd;
    }
    else {
      resolved.Cld12VSC6Pwrup_Cmd = 0
    }

    if (msg.Cld12VMCPwrdownCnfm_Cmd !== undefined) {
      resolved.Cld12VMCPwrdownCnfm_Cmd = msg.Cld12VMCPwrdownCnfm_Cmd;
    }
    else {
      resolved.Cld12VMCPwrdownCnfm_Cmd = 0
    }

    if (msg.Cld12VRCPwrdownCnfm_Cmd !== undefined) {
      resolved.Cld12VRCPwrdownCnfm_Cmd = msg.Cld12VRCPwrdownCnfm_Cmd;
    }
    else {
      resolved.Cld12VRCPwrdownCnfm_Cmd = 0
    }

    if (msg.Cld24VMCPwrdownCnfm_Cmd !== undefined) {
      resolved.Cld24VMCPwrdownCnfm_Cmd = msg.Cld24VMCPwrdownCnfm_Cmd;
    }
    else {
      resolved.Cld24VMCPwrdownCnfm_Cmd = 0
    }

    if (msg.CldPA12VPwrdownCnfm_Cmd !== undefined) {
      resolved.CldPA12VPwrdownCnfm_Cmd = msg.CldPA12VPwrdownCnfm_Cmd;
    }
    else {
      resolved.CldPA12VPwrdownCnfm_Cmd = 0
    }

    if (msg.CldPA24VPwrdownCnfm_Cmd !== undefined) {
      resolved.CldPA24VPwrdownCnfm_Cmd = msg.CldPA24VPwrdownCnfm_Cmd;
    }
    else {
      resolved.CldPA24VPwrdownCnfm_Cmd = 0
    }

    if (msg.CldPwrCmd_RollCnt !== undefined) {
      resolved.CldPwrCmd_RollCnt = msg.CldPwrCmd_RollCnt;
    }
    else {
      resolved.CldPwrCmd_RollCnt = 0
    }

    if (msg.CldPwrCmd_Checksum !== undefined) {
      resolved.CldPwrCmd_Checksum = msg.CldPwrCmd_Checksum;
    }
    else {
      resolved.CldPwrCmd_Checksum = 0
    }

    return resolved;
    }
};

module.exports = ADCU_CldPowerCmd;
