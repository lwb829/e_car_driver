; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_CrashClrCmd.msg.html

(cl:defclass <ADCU_CrashClrCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (CrashClearCmd_Valid
    :reader CrashClearCmd_Valid
    :initarg :CrashClearCmd_Valid
    :type cl:fixnum
    :initform 0)
   (CrashClear_Cmd
    :reader CrashClear_Cmd
    :initarg :CrashClear_Cmd
    :type cl:fixnum
    :initform 0)
   (EmgcSwhClearCmd_Valid
    :reader EmgcSwhClearCmd_Valid
    :initarg :EmgcSwhClearCmd_Valid
    :type cl:fixnum
    :initform 0)
   (EmgcSwhClear_Cmd
    :reader EmgcSwhClear_Cmd
    :initarg :EmgcSwhClear_Cmd
    :type cl:fixnum
    :initform 0)
   (CrashClr_RollCnt
    :reader CrashClr_RollCnt
    :initarg :CrashClr_RollCnt
    :type cl:integer
    :initform 0)
   (CrashClr_Checksum
    :reader CrashClr_Checksum
    :initarg :CrashClr_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADCU_CrashClrCmd (<ADCU_CrashClrCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_CrashClrCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_CrashClrCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_CrashClrCmd> is deprecated: use e_car_msgs-msg:ADCU_CrashClrCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_CrashClrCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'CrashClearCmd_Valid-val :lambda-list '(m))
(cl:defmethod CrashClearCmd_Valid-val ((m <ADCU_CrashClrCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CrashClearCmd_Valid-val is deprecated.  Use e_car_msgs-msg:CrashClearCmd_Valid instead.")
  (CrashClearCmd_Valid m))

(cl:ensure-generic-function 'CrashClear_Cmd-val :lambda-list '(m))
(cl:defmethod CrashClear_Cmd-val ((m <ADCU_CrashClrCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CrashClear_Cmd-val is deprecated.  Use e_car_msgs-msg:CrashClear_Cmd instead.")
  (CrashClear_Cmd m))

(cl:ensure-generic-function 'EmgcSwhClearCmd_Valid-val :lambda-list '(m))
(cl:defmethod EmgcSwhClearCmd_Valid-val ((m <ADCU_CrashClrCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:EmgcSwhClearCmd_Valid-val is deprecated.  Use e_car_msgs-msg:EmgcSwhClearCmd_Valid instead.")
  (EmgcSwhClearCmd_Valid m))

(cl:ensure-generic-function 'EmgcSwhClear_Cmd-val :lambda-list '(m))
(cl:defmethod EmgcSwhClear_Cmd-val ((m <ADCU_CrashClrCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:EmgcSwhClear_Cmd-val is deprecated.  Use e_car_msgs-msg:EmgcSwhClear_Cmd instead.")
  (EmgcSwhClear_Cmd m))

(cl:ensure-generic-function 'CrashClr_RollCnt-val :lambda-list '(m))
(cl:defmethod CrashClr_RollCnt-val ((m <ADCU_CrashClrCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CrashClr_RollCnt-val is deprecated.  Use e_car_msgs-msg:CrashClr_RollCnt instead.")
  (CrashClr_RollCnt m))

(cl:ensure-generic-function 'CrashClr_Checksum-val :lambda-list '(m))
(cl:defmethod CrashClr_Checksum-val ((m <ADCU_CrashClrCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CrashClr_Checksum-val is deprecated.  Use e_car_msgs-msg:CrashClr_Checksum instead.")
  (CrashClr_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_CrashClrCmd>) ostream)
  "Serializes a message object of type '<ADCU_CrashClrCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'CrashClearCmd_Valid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CrashClear_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'EmgcSwhClearCmd_Valid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'EmgcSwhClear_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CrashClr_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CrashClr_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_CrashClrCmd>) istream)
  "Deserializes a message object of type '<ADCU_CrashClrCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CrashClearCmd_Valid) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CrashClear_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'EmgcSwhClearCmd_Valid) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'EmgcSwhClear_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CrashClr_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CrashClr_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_CrashClrCmd>)))
  "Returns string type for a message object of type '<ADCU_CrashClrCmd>"
  "e_car_msgs/ADCU_CrashClrCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_CrashClrCmd)))
  "Returns string type for a message object of type 'ADCU_CrashClrCmd"
  "e_car_msgs/ADCU_CrashClrCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_CrashClrCmd>)))
  "Returns md5sum for a message object of type '<ADCU_CrashClrCmd>"
  "4a6390ae19310931cf5022dca0df4235")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_CrashClrCmd)))
  "Returns md5sum for a message object of type 'ADCU_CrashClrCmd"
  "4a6390ae19310931cf5022dca0df4235")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_CrashClrCmd>)))
  "Returns full string definition for message of type '<ADCU_CrashClrCmd>"
  (cl:format cl:nil "Header header~%~%int8 CrashClearCmd_Valid~%~%int8 CrashClear_Cmd~%~%int8 EmgcSwhClearCmd_Valid~%~%int8 EmgcSwhClear_Cmd~%~%int32 CrashClr_RollCnt~%~%int32 CrashClr_Checksum~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_CrashClrCmd)))
  "Returns full string definition for message of type 'ADCU_CrashClrCmd"
  (cl:format cl:nil "Header header~%~%int8 CrashClearCmd_Valid~%~%int8 CrashClear_Cmd~%~%int8 EmgcSwhClearCmd_Valid~%~%int8 EmgcSwhClear_Cmd~%~%int32 CrashClr_RollCnt~%~%int32 CrashClr_Checksum~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_CrashClrCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_CrashClrCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_CrashClrCmd
    (cl:cons ':header (header msg))
    (cl:cons ':CrashClearCmd_Valid (CrashClearCmd_Valid msg))
    (cl:cons ':CrashClear_Cmd (CrashClear_Cmd msg))
    (cl:cons ':EmgcSwhClearCmd_Valid (EmgcSwhClearCmd_Valid msg))
    (cl:cons ':EmgcSwhClear_Cmd (EmgcSwhClear_Cmd msg))
    (cl:cons ':CrashClr_RollCnt (CrashClr_RollCnt msg))
    (cl:cons ':CrashClr_Checksum (CrashClr_Checksum msg))
))
