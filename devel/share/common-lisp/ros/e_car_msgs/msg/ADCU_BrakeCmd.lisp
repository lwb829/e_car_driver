; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_BrakeCmd.msg.html

(cl:defclass <ADCU_BrakeCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Brk_Active
    :reader Brk_Active
    :initarg :Brk_Active
    :type cl:fixnum
    :initform 0)
   (Brk_CtrlMode
    :reader Brk_CtrlMode
    :initarg :Brk_CtrlMode
    :type cl:fixnum
    :initform 0)
   (Brk_TgtPedpos
    :reader Brk_TgtPedpos
    :initarg :Brk_TgtPedpos
    :type cl:float
    :initform 0.0)
   (Brk_TgtPress
    :reader Brk_TgtPress
    :initarg :Brk_TgtPress
    :type cl:float
    :initform 0.0)
   (Brk_TgtAccSpd
    :reader Brk_TgtAccSpd
    :initarg :Brk_TgtAccSpd
    :type cl:float
    :initform 0.0)
   (BrkCmd_RollCnt
    :reader BrkCmd_RollCnt
    :initarg :BrkCmd_RollCnt
    :type cl:integer
    :initform 0)
   (BrkCmd_Checksum
    :reader BrkCmd_Checksum
    :initarg :BrkCmd_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADCU_BrakeCmd (<ADCU_BrakeCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_BrakeCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_BrakeCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_BrakeCmd> is deprecated: use e_car_msgs-msg:ADCU_BrakeCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_BrakeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Brk_Active-val :lambda-list '(m))
(cl:defmethod Brk_Active-val ((m <ADCU_BrakeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Brk_Active-val is deprecated.  Use e_car_msgs-msg:Brk_Active instead.")
  (Brk_Active m))

(cl:ensure-generic-function 'Brk_CtrlMode-val :lambda-list '(m))
(cl:defmethod Brk_CtrlMode-val ((m <ADCU_BrakeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Brk_CtrlMode-val is deprecated.  Use e_car_msgs-msg:Brk_CtrlMode instead.")
  (Brk_CtrlMode m))

(cl:ensure-generic-function 'Brk_TgtPedpos-val :lambda-list '(m))
(cl:defmethod Brk_TgtPedpos-val ((m <ADCU_BrakeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Brk_TgtPedpos-val is deprecated.  Use e_car_msgs-msg:Brk_TgtPedpos instead.")
  (Brk_TgtPedpos m))

(cl:ensure-generic-function 'Brk_TgtPress-val :lambda-list '(m))
(cl:defmethod Brk_TgtPress-val ((m <ADCU_BrakeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Brk_TgtPress-val is deprecated.  Use e_car_msgs-msg:Brk_TgtPress instead.")
  (Brk_TgtPress m))

(cl:ensure-generic-function 'Brk_TgtAccSpd-val :lambda-list '(m))
(cl:defmethod Brk_TgtAccSpd-val ((m <ADCU_BrakeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Brk_TgtAccSpd-val is deprecated.  Use e_car_msgs-msg:Brk_TgtAccSpd instead.")
  (Brk_TgtAccSpd m))

(cl:ensure-generic-function 'BrkCmd_RollCnt-val :lambda-list '(m))
(cl:defmethod BrkCmd_RollCnt-val ((m <ADCU_BrakeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:BrkCmd_RollCnt-val is deprecated.  Use e_car_msgs-msg:BrkCmd_RollCnt instead.")
  (BrkCmd_RollCnt m))

(cl:ensure-generic-function 'BrkCmd_Checksum-val :lambda-list '(m))
(cl:defmethod BrkCmd_Checksum-val ((m <ADCU_BrakeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:BrkCmd_Checksum-val is deprecated.  Use e_car_msgs-msg:BrkCmd_Checksum instead.")
  (BrkCmd_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_BrakeCmd>) ostream)
  "Serializes a message object of type '<ADCU_BrakeCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Brk_Active)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Brk_CtrlMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Brk_TgtPedpos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Brk_TgtPress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Brk_TgtAccSpd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'BrkCmd_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'BrkCmd_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_BrakeCmd>) istream)
  "Deserializes a message object of type '<ADCU_BrakeCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Brk_Active) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Brk_CtrlMode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Brk_TgtPedpos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Brk_TgtPress) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Brk_TgtAccSpd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BrkCmd_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BrkCmd_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_BrakeCmd>)))
  "Returns string type for a message object of type '<ADCU_BrakeCmd>"
  "e_car_msgs/ADCU_BrakeCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_BrakeCmd)))
  "Returns string type for a message object of type 'ADCU_BrakeCmd"
  "e_car_msgs/ADCU_BrakeCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_BrakeCmd>)))
  "Returns md5sum for a message object of type '<ADCU_BrakeCmd>"
  "b3c2117e1232bca759470cc478a35c8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_BrakeCmd)))
  "Returns md5sum for a message object of type 'ADCU_BrakeCmd"
  "b3c2117e1232bca759470cc478a35c8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_BrakeCmd>)))
  "Returns full string definition for message of type '<ADCU_BrakeCmd>"
  (cl:format cl:nil "Header header~%~%int8 Brk_Active~%~%int8 Brk_CtrlMode~%~%float32 Brk_TgtPedpos~%~%float32 Brk_TgtPress~%~%float32 Brk_TgtAccSpd~%~%int32 BrkCmd_RollCnt~%~%int32 BrkCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_BrakeCmd)))
  "Returns full string definition for message of type 'ADCU_BrakeCmd"
  (cl:format cl:nil "Header header~%~%int8 Brk_Active~%~%int8 Brk_CtrlMode~%~%float32 Brk_TgtPedpos~%~%float32 Brk_TgtPress~%~%float32 Brk_TgtAccSpd~%~%int32 BrkCmd_RollCnt~%~%int32 BrkCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_BrakeCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_BrakeCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_BrakeCmd
    (cl:cons ':header (header msg))
    (cl:cons ':Brk_Active (Brk_Active msg))
    (cl:cons ':Brk_CtrlMode (Brk_CtrlMode msg))
    (cl:cons ':Brk_TgtPedpos (Brk_TgtPedpos msg))
    (cl:cons ':Brk_TgtPress (Brk_TgtPress msg))
    (cl:cons ':Brk_TgtAccSpd (Brk_TgtAccSpd msg))
    (cl:cons ':BrkCmd_RollCnt (BrkCmd_RollCnt msg))
    (cl:cons ':BrkCmd_Checksum (BrkCmd_Checksum msg))
))
