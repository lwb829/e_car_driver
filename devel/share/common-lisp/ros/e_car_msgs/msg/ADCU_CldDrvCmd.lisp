; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_CldDrvCmd.msg.html

(cl:defclass <ADCU_CldDrvCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Cld_CtrlActive
    :reader Cld_CtrlActive
    :initarg :Cld_CtrlActive
    :type cl:fixnum
    :initform 0)
   (Cld_PrkEnable
    :reader Cld_PrkEnable
    :initarg :Cld_PrkEnable
    :type cl:fixnum
    :initform 0)
   (Cld_DriveMode
    :reader Cld_DriveMode
    :initarg :Cld_DriveMode
    :type cl:fixnum
    :initform 0)
   (Cld_TgtGear
    :reader Cld_TgtGear
    :initarg :Cld_TgtGear
    :type cl:integer
    :initform 0)
   (Cld_TgtThrotVal
    :reader Cld_TgtThrotVal
    :initarg :Cld_TgtThrotVal
    :type cl:float
    :initform 0.0)
   (Cld_TgtBrkVal
    :reader Cld_TgtBrkVal
    :initarg :Cld_TgtBrkVal
    :type cl:float
    :initform 0.0)
   (Cld_TgtStrAngle
    :reader Cld_TgtStrAngle
    :initarg :Cld_TgtStrAngle
    :type cl:float
    :initform 0.0)
   (CldDrvCmd_RollCnt
    :reader CldDrvCmd_RollCnt
    :initarg :CldDrvCmd_RollCnt
    :type cl:integer
    :initform 0)
   (CldDrvCmd_Checksum
    :reader CldDrvCmd_Checksum
    :initarg :CldDrvCmd_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADCU_CldDrvCmd (<ADCU_CldDrvCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_CldDrvCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_CldDrvCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_CldDrvCmd> is deprecated: use e_car_msgs-msg:ADCU_CldDrvCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_CldDrvCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Cld_CtrlActive-val :lambda-list '(m))
(cl:defmethod Cld_CtrlActive-val ((m <ADCU_CldDrvCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_CtrlActive-val is deprecated.  Use e_car_msgs-msg:Cld_CtrlActive instead.")
  (Cld_CtrlActive m))

(cl:ensure-generic-function 'Cld_PrkEnable-val :lambda-list '(m))
(cl:defmethod Cld_PrkEnable-val ((m <ADCU_CldDrvCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_PrkEnable-val is deprecated.  Use e_car_msgs-msg:Cld_PrkEnable instead.")
  (Cld_PrkEnable m))

(cl:ensure-generic-function 'Cld_DriveMode-val :lambda-list '(m))
(cl:defmethod Cld_DriveMode-val ((m <ADCU_CldDrvCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_DriveMode-val is deprecated.  Use e_car_msgs-msg:Cld_DriveMode instead.")
  (Cld_DriveMode m))

(cl:ensure-generic-function 'Cld_TgtGear-val :lambda-list '(m))
(cl:defmethod Cld_TgtGear-val ((m <ADCU_CldDrvCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_TgtGear-val is deprecated.  Use e_car_msgs-msg:Cld_TgtGear instead.")
  (Cld_TgtGear m))

(cl:ensure-generic-function 'Cld_TgtThrotVal-val :lambda-list '(m))
(cl:defmethod Cld_TgtThrotVal-val ((m <ADCU_CldDrvCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_TgtThrotVal-val is deprecated.  Use e_car_msgs-msg:Cld_TgtThrotVal instead.")
  (Cld_TgtThrotVal m))

(cl:ensure-generic-function 'Cld_TgtBrkVal-val :lambda-list '(m))
(cl:defmethod Cld_TgtBrkVal-val ((m <ADCU_CldDrvCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_TgtBrkVal-val is deprecated.  Use e_car_msgs-msg:Cld_TgtBrkVal instead.")
  (Cld_TgtBrkVal m))

(cl:ensure-generic-function 'Cld_TgtStrAngle-val :lambda-list '(m))
(cl:defmethod Cld_TgtStrAngle-val ((m <ADCU_CldDrvCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_TgtStrAngle-val is deprecated.  Use e_car_msgs-msg:Cld_TgtStrAngle instead.")
  (Cld_TgtStrAngle m))

(cl:ensure-generic-function 'CldDrvCmd_RollCnt-val :lambda-list '(m))
(cl:defmethod CldDrvCmd_RollCnt-val ((m <ADCU_CldDrvCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldDrvCmd_RollCnt-val is deprecated.  Use e_car_msgs-msg:CldDrvCmd_RollCnt instead.")
  (CldDrvCmd_RollCnt m))

(cl:ensure-generic-function 'CldDrvCmd_Checksum-val :lambda-list '(m))
(cl:defmethod CldDrvCmd_Checksum-val ((m <ADCU_CldDrvCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldDrvCmd_Checksum-val is deprecated.  Use e_car_msgs-msg:CldDrvCmd_Checksum instead.")
  (CldDrvCmd_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_CldDrvCmd>) ostream)
  "Serializes a message object of type '<ADCU_CldDrvCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Cld_CtrlActive)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_PrkEnable)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_DriveMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_TgtGear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Cld_TgtThrotVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Cld_TgtBrkVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Cld_TgtStrAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'CldDrvCmd_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CldDrvCmd_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_CldDrvCmd>) istream)
  "Deserializes a message object of type '<ADCU_CldDrvCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_CtrlActive) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_PrkEnable) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_DriveMode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_TgtGear) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Cld_TgtThrotVal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Cld_TgtBrkVal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Cld_TgtStrAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldDrvCmd_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldDrvCmd_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_CldDrvCmd>)))
  "Returns string type for a message object of type '<ADCU_CldDrvCmd>"
  "e_car_msgs/ADCU_CldDrvCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_CldDrvCmd)))
  "Returns string type for a message object of type 'ADCU_CldDrvCmd"
  "e_car_msgs/ADCU_CldDrvCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_CldDrvCmd>)))
  "Returns md5sum for a message object of type '<ADCU_CldDrvCmd>"
  "03ef622a29189d40a66afa9e28b57a09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_CldDrvCmd)))
  "Returns md5sum for a message object of type 'ADCU_CldDrvCmd"
  "03ef622a29189d40a66afa9e28b57a09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_CldDrvCmd>)))
  "Returns full string definition for message of type '<ADCU_CldDrvCmd>"
  (cl:format cl:nil "Header header~%~%int8 Cld_CtrlActive~%~%int8 Cld_PrkEnable~%~%int8 Cld_DriveMode~%~%int32 Cld_TgtGear~%~%float32 Cld_TgtThrotVal~%~%float32 Cld_TgtBrkVal~%~%float32 Cld_TgtStrAngle~%~%int32 CldDrvCmd_RollCnt~%~%int32 CldDrvCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_CldDrvCmd)))
  "Returns full string definition for message of type 'ADCU_CldDrvCmd"
  (cl:format cl:nil "Header header~%~%int8 Cld_CtrlActive~%~%int8 Cld_PrkEnable~%~%int8 Cld_DriveMode~%~%int32 Cld_TgtGear~%~%float32 Cld_TgtThrotVal~%~%float32 Cld_TgtBrkVal~%~%float32 Cld_TgtStrAngle~%~%int32 CldDrvCmd_RollCnt~%~%int32 CldDrvCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_CldDrvCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_CldDrvCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_CldDrvCmd
    (cl:cons ':header (header msg))
    (cl:cons ':Cld_CtrlActive (Cld_CtrlActive msg))
    (cl:cons ':Cld_PrkEnable (Cld_PrkEnable msg))
    (cl:cons ':Cld_DriveMode (Cld_DriveMode msg))
    (cl:cons ':Cld_TgtGear (Cld_TgtGear msg))
    (cl:cons ':Cld_TgtThrotVal (Cld_TgtThrotVal msg))
    (cl:cons ':Cld_TgtBrkVal (Cld_TgtBrkVal msg))
    (cl:cons ':Cld_TgtStrAngle (Cld_TgtStrAngle msg))
    (cl:cons ':CldDrvCmd_RollCnt (CldDrvCmd_RollCnt msg))
    (cl:cons ':CldDrvCmd_Checksum (CldDrvCmd_Checksum msg))
))
