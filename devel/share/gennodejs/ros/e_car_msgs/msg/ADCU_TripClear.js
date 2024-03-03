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

class ADCU_TripClear {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.TotalTripClear_Cmd = null;
      this.RmtDrvTripClear_Cmd = null;
      this.AutoDrvTripClear_Cmd = null;
      this.CldDrvTripClear_Cmd = null;
      this.TripClear_RollCnt = null;
      this.TripClear_Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('TotalTripClear_Cmd')) {
        this.TotalTripClear_Cmd = initObj.TotalTripClear_Cmd
      }
      else {
        this.TotalTripClear_Cmd = 0;
      }
      if (initObj.hasOwnProperty('RmtDrvTripClear_Cmd')) {
        this.RmtDrvTripClear_Cmd = initObj.RmtDrvTripClear_Cmd
      }
      else {
        this.RmtDrvTripClear_Cmd = 0;
      }
      if (initObj.hasOwnProperty('AutoDrvTripClear_Cmd')) {
        this.AutoDrvTripClear_Cmd = initObj.AutoDrvTripClear_Cmd
      }
      else {
        this.AutoDrvTripClear_Cmd = 0;
      }
      if (initObj.hasOwnProperty('CldDrvTripClear_Cmd')) {
        this.CldDrvTripClear_Cmd = initObj.CldDrvTripClear_Cmd
      }
      else {
        this.CldDrvTripClear_Cmd = 0;
      }
      if (initObj.hasOwnProperty('TripClear_RollCnt')) {
        this.TripClear_RollCnt = initObj.TripClear_RollCnt
      }
      else {
        this.TripClear_RollCnt = 0;
      }
      if (initObj.hasOwnProperty('TripClear_Checksum')) {
        this.TripClear_Checksum = initObj.TripClear_Checksum
      }
      else {
        this.TripClear_Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCU_TripClear
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [TotalTripClear_Cmd]
    bufferOffset = _serializer.int8(obj.TotalTripClear_Cmd, buffer, bufferOffset);
    // Serialize message field [RmtDrvTripClear_Cmd]
    bufferOffset = _serializer.int8(obj.RmtDrvTripClear_Cmd, buffer, bufferOffset);
    // Serialize message field [AutoDrvTripClear_Cmd]
    bufferOffset = _serializer.int8(obj.AutoDrvTripClear_Cmd, buffer, bufferOffset);
    // Serialize message field [CldDrvTripClear_Cmd]
    bufferOffset = _serializer.int8(obj.CldDrvTripClear_Cmd, buffer, bufferOffset);
    // Serialize message field [TripClear_RollCnt]
    bufferOffset = _serializer.int32(obj.TripClear_RollCnt, buffer, bufferOffset);
    // Serialize message field [TripClear_Checksum]
    bufferOffset = _serializer.int32(obj.TripClear_Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCU_TripClear
    let len;
    let data = new ADCU_TripClear(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [TotalTripClear_Cmd]
    data.TotalTripClear_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [RmtDrvTripClear_Cmd]
    data.RmtDrvTripClear_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AutoDrvTripClear_Cmd]
    data.AutoDrvTripClear_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CldDrvTripClear_Cmd]
    data.CldDrvTripClear_Cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [TripClear_RollCnt]
    data.TripClear_RollCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [TripClear_Checksum]
    data.TripClear_Checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e_car_msgs/ADCU_TripClear';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a36ba245d873b5273a133be9bf8ae01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 TotalTripClear_Cmd
    
    int8 RmtDrvTripClear_Cmd
    
    int8 AutoDrvTripClear_Cmd
    
    int8 CldDrvTripClear_Cmd
    
    int32 TripClear_RollCnt
    
    int32 TripClear_Checksum
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
    const resolved = new ADCU_TripClear(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.TotalTripClear_Cmd !== undefined) {
      resolved.TotalTripClear_Cmd = msg.TotalTripClear_Cmd;
    }
    else {
      resolved.TotalTripClear_Cmd = 0
    }

    if (msg.RmtDrvTripClear_Cmd !== undefined) {
      resolved.RmtDrvTripClear_Cmd = msg.RmtDrvTripClear_Cmd;
    }
    else {
      resolved.RmtDrvTripClear_Cmd = 0
    }

    if (msg.AutoDrvTripClear_Cmd !== undefined) {
      resolved.AutoDrvTripClear_Cmd = msg.AutoDrvTripClear_Cmd;
    }
    else {
      resolved.AutoDrvTripClear_Cmd = 0
    }

    if (msg.CldDrvTripClear_Cmd !== undefined) {
      resolved.CldDrvTripClear_Cmd = msg.CldDrvTripClear_Cmd;
    }
    else {
      resolved.CldDrvTripClear_Cmd = 0
    }

    if (msg.TripClear_RollCnt !== undefined) {
      resolved.TripClear_RollCnt = msg.TripClear_RollCnt;
    }
    else {
      resolved.TripClear_RollCnt = 0
    }

    if (msg.TripClear_Checksum !== undefined) {
      resolved.TripClear_Checksum = msg.TripClear_Checksum;
    }
    else {
      resolved.TripClear_Checksum = 0
    }

    return resolved;
    }
};

module.exports = ADCU_TripClear;
