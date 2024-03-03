# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from e_car_msgs/PCU_PowerCmd.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class PCU_PowerCmd(genpy.Message):
  _md5sum = "e20658d4566685bbdae55f7fc1134d24"
  _type = "e_car_msgs/PCU_PowerCmd"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

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
"""
  __slots__ = ['header','ADChasPwrup_Cmd','AD12VMCPwrup_Cmd','AD12VSC1Pwrup_Cmd','AD12VSC2Pwrup_Cmd','AD12VSC3Pwrup_Cmd','AD12VSC4Pwrup_Cmd','AD12VSC5Pwrup_Cmd','AD12VSC6Pwrup_Cmd','PwrCmd_RollCnt','PwrCmd_Checksum']
  _slot_types = ['std_msgs/Header','int8','int8','int8','int8','int8','int8','int8','int8','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,ADChasPwrup_Cmd,AD12VMCPwrup_Cmd,AD12VSC1Pwrup_Cmd,AD12VSC2Pwrup_Cmd,AD12VSC3Pwrup_Cmd,AD12VSC4Pwrup_Cmd,AD12VSC5Pwrup_Cmd,AD12VSC6Pwrup_Cmd,PwrCmd_RollCnt,PwrCmd_Checksum

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PCU_PowerCmd, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.ADChasPwrup_Cmd is None:
        self.ADChasPwrup_Cmd = 0
      if self.AD12VMCPwrup_Cmd is None:
        self.AD12VMCPwrup_Cmd = 0
      if self.AD12VSC1Pwrup_Cmd is None:
        self.AD12VSC1Pwrup_Cmd = 0
      if self.AD12VSC2Pwrup_Cmd is None:
        self.AD12VSC2Pwrup_Cmd = 0
      if self.AD12VSC3Pwrup_Cmd is None:
        self.AD12VSC3Pwrup_Cmd = 0
      if self.AD12VSC4Pwrup_Cmd is None:
        self.AD12VSC4Pwrup_Cmd = 0
      if self.AD12VSC5Pwrup_Cmd is None:
        self.AD12VSC5Pwrup_Cmd = 0
      if self.AD12VSC6Pwrup_Cmd is None:
        self.AD12VSC6Pwrup_Cmd = 0
      if self.PwrCmd_RollCnt is None:
        self.PwrCmd_RollCnt = 0
      if self.PwrCmd_Checksum is None:
        self.PwrCmd_Checksum = 0
    else:
      self.header = std_msgs.msg.Header()
      self.ADChasPwrup_Cmd = 0
      self.AD12VMCPwrup_Cmd = 0
      self.AD12VSC1Pwrup_Cmd = 0
      self.AD12VSC2Pwrup_Cmd = 0
      self.AD12VSC3Pwrup_Cmd = 0
      self.AD12VSC4Pwrup_Cmd = 0
      self.AD12VSC5Pwrup_Cmd = 0
      self.AD12VSC6Pwrup_Cmd = 0
      self.PwrCmd_RollCnt = 0
      self.PwrCmd_Checksum = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_8b2i().pack(_x.ADChasPwrup_Cmd, _x.AD12VMCPwrup_Cmd, _x.AD12VSC1Pwrup_Cmd, _x.AD12VSC2Pwrup_Cmd, _x.AD12VSC3Pwrup_Cmd, _x.AD12VSC4Pwrup_Cmd, _x.AD12VSC5Pwrup_Cmd, _x.AD12VSC6Pwrup_Cmd, _x.PwrCmd_RollCnt, _x.PwrCmd_Checksum))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.ADChasPwrup_Cmd, _x.AD12VMCPwrup_Cmd, _x.AD12VSC1Pwrup_Cmd, _x.AD12VSC2Pwrup_Cmd, _x.AD12VSC3Pwrup_Cmd, _x.AD12VSC4Pwrup_Cmd, _x.AD12VSC5Pwrup_Cmd, _x.AD12VSC6Pwrup_Cmd, _x.PwrCmd_RollCnt, _x.PwrCmd_Checksum,) = _get_struct_8b2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_8b2i().pack(_x.ADChasPwrup_Cmd, _x.AD12VMCPwrup_Cmd, _x.AD12VSC1Pwrup_Cmd, _x.AD12VSC2Pwrup_Cmd, _x.AD12VSC3Pwrup_Cmd, _x.AD12VSC4Pwrup_Cmd, _x.AD12VSC5Pwrup_Cmd, _x.AD12VSC6Pwrup_Cmd, _x.PwrCmd_RollCnt, _x.PwrCmd_Checksum))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.ADChasPwrup_Cmd, _x.AD12VMCPwrup_Cmd, _x.AD12VSC1Pwrup_Cmd, _x.AD12VSC2Pwrup_Cmd, _x.AD12VSC3Pwrup_Cmd, _x.AD12VSC4Pwrup_Cmd, _x.AD12VSC5Pwrup_Cmd, _x.AD12VSC6Pwrup_Cmd, _x.PwrCmd_RollCnt, _x.PwrCmd_Checksum,) = _get_struct_8b2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_8b2i = None
def _get_struct_8b2i():
    global _struct_8b2i
    if _struct_8b2i is None:
        _struct_8b2i = struct.Struct("<8b2i")
    return _struct_8b2i
