; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_DriveCmd.msg.html

(cl:defclass <ADCU_DriveCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Drv_Active
    :reader Drv_Active
    :initarg :Drv_Active
    :type cl:fixnum
    :initform 0)
   (Drv_CtrlMode
    :reader Drv_CtrlMode
    :initarg :Drv_CtrlMode
    :type cl:fixnum
    :initform 0)
   (Drv_TgtGear
    :reader Drv_TgtGear
    :initarg :Drv_TgtGear
    :type cl:fixnum
    :initform 0)
   (Drv_TgtPedpos
    :reader Drv_TgtPedpos
    :initarg :Drv_TgtPedpos
    :type cl:integer
    :initform 0)
   (Drv_TgtVehSpd0
    :reader Drv_TgtVehSpd0
    :initarg :Drv_TgtVehSpd0
    :type cl:float
    :initform 0.0)
   (DrvCmd0_RollCnt
    :reader DrvCmd0_RollCnt
    :initarg :DrvCmd0_RollCnt
    :type cl:integer
    :initform 0)
   (DrvCmd0_Checksum
    :reader DrvCmd0_Checksum
    :initarg :DrvCmd0_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADCU_DriveCmd (<ADCU_DriveCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_DriveCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_DriveCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_DriveCmd> is deprecated: use e_car_msgs-msg:ADCU_DriveCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_DriveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Drv_Active-val :lambda-list '(m))
(cl:defmethod Drv_Active-val ((m <ADCU_DriveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Drv_Active-val is deprecated.  Use e_car_msgs-msg:Drv_Active instead.")
  (Drv_Active m))

(cl:ensure-generic-function 'Drv_CtrlMode-val :lambda-list '(m))
(cl:defmethod Drv_CtrlMode-val ((m <ADCU_DriveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Drv_CtrlMode-val is deprecated.  Use e_car_msgs-msg:Drv_CtrlMode instead.")
  (Drv_CtrlMode m))

(cl:ensure-generic-function 'Drv_TgtGear-val :lambda-list '(m))
(cl:defmethod Drv_TgtGear-val ((m <ADCU_DriveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Drv_TgtGear-val is deprecated.  Use e_car_msgs-msg:Drv_TgtGear instead.")
  (Drv_TgtGear m))

(cl:ensure-generic-function 'Drv_TgtPedpos-val :lambda-list '(m))
(cl:defmethod Drv_TgtPedpos-val ((m <ADCU_DriveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Drv_TgtPedpos-val is deprecated.  Use e_car_msgs-msg:Drv_TgtPedpos instead.")
  (Drv_TgtPedpos m))

(cl:ensure-generic-function 'Drv_TgtVehSpd0-val :lambda-list '(m))
(cl:defmethod Drv_TgtVehSpd0-val ((m <ADCU_DriveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Drv_TgtVehSpd0-val is deprecated.  Use e_car_msgs-msg:Drv_TgtVehSpd0 instead.")
  (Drv_TgtVehSpd0 m))

(cl:ensure-generic-function 'DrvCmd0_RollCnt-val :lambda-list '(m))
(cl:defmethod DrvCmd0_RollCnt-val ((m <ADCU_DriveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:DrvCmd0_RollCnt-val is deprecated.  Use e_car_msgs-msg:DrvCmd0_RollCnt instead.")
  (DrvCmd0_RollCnt m))

(cl:ensure-generic-function 'DrvCmd0_Checksum-val :lambda-list '(m))
(cl:defmethod DrvCmd0_Checksum-val ((m <ADCU_DriveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:DrvCmd0_Checksum-val is deprecated.  Use e_car_msgs-msg:DrvCmd0_Checksum instead.")
  (DrvCmd0_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_DriveCmd>) ostream)
  "Serializes a message object of type '<ADCU_DriveCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Drv_Active)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Drv_CtrlMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Drv_TgtGear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Drv_TgtPedpos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Drv_TgtVehSpd0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'DrvCmd0_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'DrvCmd0_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_DriveCmd>) istream)
  "Deserializes a message object of type '<ADCU_DriveCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Drv_Active) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Drv_CtrlMode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Drv_TgtGear) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Drv_TgtPedpos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Drv_TgtVehSpd0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'DrvCmd0_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'DrvCmd0_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_DriveCmd>)))
  "Returns string type for a message object of type '<ADCU_DriveCmd>"
  "e_car_msgs/ADCU_DriveCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_DriveCmd)))
  "Returns string type for a message object of type 'ADCU_DriveCmd"
  "e_car_msgs/ADCU_DriveCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_DriveCmd>)))
  "Returns md5sum for a message object of type '<ADCU_DriveCmd>"
  "6768bd00ea2c2e5ce1f0b7314b783986")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_DriveCmd)))
  "Returns md5sum for a message object of type 'ADCU_DriveCmd"
  "6768bd00ea2c2e5ce1f0b7314b783986")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_DriveCmd>)))
  "Returns full string definition for message of type '<ADCU_DriveCmd>"
  (cl:format cl:nil "Header header~%~%int8 Drv_Active~%~%int8 Drv_CtrlMode~%~%int8 Drv_TgtGear~%~%int32 Drv_TgtPedpos~%~%float32 Drv_TgtVehSpd0~%~%int32 DrvCmd0_RollCnt~%~%int32 DrvCmd0_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_DriveCmd)))
  "Returns full string definition for message of type 'ADCU_DriveCmd"
  (cl:format cl:nil "Header header~%~%int8 Drv_Active~%~%int8 Drv_CtrlMode~%~%int8 Drv_TgtGear~%~%int32 Drv_TgtPedpos~%~%float32 Drv_TgtVehSpd0~%~%int32 DrvCmd0_RollCnt~%~%int32 DrvCmd0_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_DriveCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_DriveCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_DriveCmd
    (cl:cons ':header (header msg))
    (cl:cons ':Drv_Active (Drv_Active msg))
    (cl:cons ':Drv_CtrlMode (Drv_CtrlMode msg))
    (cl:cons ':Drv_TgtGear (Drv_TgtGear msg))
    (cl:cons ':Drv_TgtPedpos (Drv_TgtPedpos msg))
    (cl:cons ':Drv_TgtVehSpd0 (Drv_TgtVehSpd0 msg))
    (cl:cons ':DrvCmd0_RollCnt (DrvCmd0_RollCnt msg))
    (cl:cons ':DrvCmd0_Checksum (DrvCmd0_Checksum msg))
))
