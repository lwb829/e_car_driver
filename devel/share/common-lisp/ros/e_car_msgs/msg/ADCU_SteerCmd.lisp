; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_SteerCmd.msg.html

(cl:defclass <ADCU_SteerCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Str_Active
    :reader Str_Active
    :initarg :Str_Active
    :type cl:fixnum
    :initform 0)
   (Str_CtrlMode
    :reader Str_CtrlMode
    :initarg :Str_CtrlMode
    :type cl:fixnum
    :initform 0)
   (Str_TgtAngle
    :reader Str_TgtAngle
    :initarg :Str_TgtAngle
    :type cl:float
    :initform 0.0)
   (Str_TgtAngleSpd
    :reader Str_TgtAngleSpd
    :initarg :Str_TgtAngleSpd
    :type cl:float
    :initform 0.0)
   (StrCmd_RollCnt
    :reader StrCmd_RollCnt
    :initarg :StrCmd_RollCnt
    :type cl:integer
    :initform 0)
   (StrCmd_Checksum
    :reader StrCmd_Checksum
    :initarg :StrCmd_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADCU_SteerCmd (<ADCU_SteerCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_SteerCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_SteerCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_SteerCmd> is deprecated: use e_car_msgs-msg:ADCU_SteerCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_SteerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Str_Active-val :lambda-list '(m))
(cl:defmethod Str_Active-val ((m <ADCU_SteerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Str_Active-val is deprecated.  Use e_car_msgs-msg:Str_Active instead.")
  (Str_Active m))

(cl:ensure-generic-function 'Str_CtrlMode-val :lambda-list '(m))
(cl:defmethod Str_CtrlMode-val ((m <ADCU_SteerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Str_CtrlMode-val is deprecated.  Use e_car_msgs-msg:Str_CtrlMode instead.")
  (Str_CtrlMode m))

(cl:ensure-generic-function 'Str_TgtAngle-val :lambda-list '(m))
(cl:defmethod Str_TgtAngle-val ((m <ADCU_SteerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Str_TgtAngle-val is deprecated.  Use e_car_msgs-msg:Str_TgtAngle instead.")
  (Str_TgtAngle m))

(cl:ensure-generic-function 'Str_TgtAngleSpd-val :lambda-list '(m))
(cl:defmethod Str_TgtAngleSpd-val ((m <ADCU_SteerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Str_TgtAngleSpd-val is deprecated.  Use e_car_msgs-msg:Str_TgtAngleSpd instead.")
  (Str_TgtAngleSpd m))

(cl:ensure-generic-function 'StrCmd_RollCnt-val :lambda-list '(m))
(cl:defmethod StrCmd_RollCnt-val ((m <ADCU_SteerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:StrCmd_RollCnt-val is deprecated.  Use e_car_msgs-msg:StrCmd_RollCnt instead.")
  (StrCmd_RollCnt m))

(cl:ensure-generic-function 'StrCmd_Checksum-val :lambda-list '(m))
(cl:defmethod StrCmd_Checksum-val ((m <ADCU_SteerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:StrCmd_Checksum-val is deprecated.  Use e_car_msgs-msg:StrCmd_Checksum instead.")
  (StrCmd_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_SteerCmd>) ostream)
  "Serializes a message object of type '<ADCU_SteerCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Str_Active)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Str_CtrlMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Str_TgtAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Str_TgtAngleSpd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'StrCmd_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'StrCmd_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_SteerCmd>) istream)
  "Deserializes a message object of type '<ADCU_SteerCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Str_Active) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Str_CtrlMode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Str_TgtAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Str_TgtAngleSpd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'StrCmd_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'StrCmd_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_SteerCmd>)))
  "Returns string type for a message object of type '<ADCU_SteerCmd>"
  "e_car_msgs/ADCU_SteerCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_SteerCmd)))
  "Returns string type for a message object of type 'ADCU_SteerCmd"
  "e_car_msgs/ADCU_SteerCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_SteerCmd>)))
  "Returns md5sum for a message object of type '<ADCU_SteerCmd>"
  "c28ae07fba8b70da0e80a1960035feb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_SteerCmd)))
  "Returns md5sum for a message object of type 'ADCU_SteerCmd"
  "c28ae07fba8b70da0e80a1960035feb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_SteerCmd>)))
  "Returns full string definition for message of type '<ADCU_SteerCmd>"
  (cl:format cl:nil "Header header~%~%int8 Str_Active~%~%int8 Str_CtrlMode~%~%float32 Str_TgtAngle~%~%float32 Str_TgtAngleSpd~%~%int32 StrCmd_RollCnt~%~%int32 StrCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_SteerCmd)))
  "Returns full string definition for message of type 'ADCU_SteerCmd"
  (cl:format cl:nil "Header header~%~%int8 Str_Active~%~%int8 Str_CtrlMode~%~%float32 Str_TgtAngle~%~%float32 Str_TgtAngleSpd~%~%int32 StrCmd_RollCnt~%~%int32 StrCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_SteerCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_SteerCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_SteerCmd
    (cl:cons ':header (header msg))
    (cl:cons ':Str_Active (Str_Active msg))
    (cl:cons ':Str_CtrlMode (Str_CtrlMode msg))
    (cl:cons ':Str_TgtAngle (Str_TgtAngle msg))
    (cl:cons ':Str_TgtAngleSpd (Str_TgtAngleSpd msg))
    (cl:cons ':StrCmd_RollCnt (StrCmd_RollCnt msg))
    (cl:cons ':StrCmd_Checksum (StrCmd_Checksum msg))
))
