; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude PCU_PowerCmd.msg.html

(cl:defclass <PCU_PowerCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ADChasPwrup_Cmd
    :reader ADChasPwrup_Cmd
    :initarg :ADChasPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (AD12VMCPwrup_Cmd
    :reader AD12VMCPwrup_Cmd
    :initarg :AD12VMCPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (AD12VSC1Pwrup_Cmd
    :reader AD12VSC1Pwrup_Cmd
    :initarg :AD12VSC1Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (AD12VSC2Pwrup_Cmd
    :reader AD12VSC2Pwrup_Cmd
    :initarg :AD12VSC2Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (AD12VSC3Pwrup_Cmd
    :reader AD12VSC3Pwrup_Cmd
    :initarg :AD12VSC3Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (AD12VSC4Pwrup_Cmd
    :reader AD12VSC4Pwrup_Cmd
    :initarg :AD12VSC4Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (AD12VSC5Pwrup_Cmd
    :reader AD12VSC5Pwrup_Cmd
    :initarg :AD12VSC5Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (AD12VSC6Pwrup_Cmd
    :reader AD12VSC6Pwrup_Cmd
    :initarg :AD12VSC6Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (PwrCmd_RollCnt
    :reader PwrCmd_RollCnt
    :initarg :PwrCmd_RollCnt
    :type cl:integer
    :initform 0)
   (PwrCmd_Checksum
    :reader PwrCmd_Checksum
    :initarg :PwrCmd_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass PCU_PowerCmd (<PCU_PowerCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PCU_PowerCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PCU_PowerCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<PCU_PowerCmd> is deprecated: use e_car_msgs-msg:PCU_PowerCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ADChasPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod ADChasPwrup_Cmd-val ((m <PCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:ADChasPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:ADChasPwrup_Cmd instead.")
  (ADChasPwrup_Cmd m))

(cl:ensure-generic-function 'AD12VMCPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VMCPwrup_Cmd-val ((m <PCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VMCPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VMCPwrup_Cmd instead.")
  (AD12VMCPwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC1Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC1Pwrup_Cmd-val ((m <PCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC1Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC1Pwrup_Cmd instead.")
  (AD12VSC1Pwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC2Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC2Pwrup_Cmd-val ((m <PCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC2Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC2Pwrup_Cmd instead.")
  (AD12VSC2Pwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC3Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC3Pwrup_Cmd-val ((m <PCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC3Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC3Pwrup_Cmd instead.")
  (AD12VSC3Pwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC4Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC4Pwrup_Cmd-val ((m <PCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC4Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC4Pwrup_Cmd instead.")
  (AD12VSC4Pwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC5Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC5Pwrup_Cmd-val ((m <PCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC5Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC5Pwrup_Cmd instead.")
  (AD12VSC5Pwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC6Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC6Pwrup_Cmd-val ((m <PCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC6Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC6Pwrup_Cmd instead.")
  (AD12VSC6Pwrup_Cmd m))

(cl:ensure-generic-function 'PwrCmd_RollCnt-val :lambda-list '(m))
(cl:defmethod PwrCmd_RollCnt-val ((m <PCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:PwrCmd_RollCnt-val is deprecated.  Use e_car_msgs-msg:PwrCmd_RollCnt instead.")
  (PwrCmd_RollCnt m))

(cl:ensure-generic-function 'PwrCmd_Checksum-val :lambda-list '(m))
(cl:defmethod PwrCmd_Checksum-val ((m <PCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:PwrCmd_Checksum-val is deprecated.  Use e_car_msgs-msg:PwrCmd_Checksum instead.")
  (PwrCmd_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PCU_PowerCmd>) ostream)
  "Serializes a message object of type '<PCU_PowerCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ADChasPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD12VMCPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD12VSC1Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD12VSC2Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD12VSC3Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD12VSC4Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD12VSC5Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD12VSC6Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'PwrCmd_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'PwrCmd_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PCU_PowerCmd>) istream)
  "Deserializes a message object of type '<PCU_PowerCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ADChasPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD12VMCPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD12VSC1Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD12VSC2Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD12VSC3Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD12VSC4Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD12VSC5Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD12VSC6Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'PwrCmd_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'PwrCmd_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PCU_PowerCmd>)))
  "Returns string type for a message object of type '<PCU_PowerCmd>"
  "e_car_msgs/PCU_PowerCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PCU_PowerCmd)))
  "Returns string type for a message object of type 'PCU_PowerCmd"
  "e_car_msgs/PCU_PowerCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PCU_PowerCmd>)))
  "Returns md5sum for a message object of type '<PCU_PowerCmd>"
  "e20658d4566685bbdae55f7fc1134d24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PCU_PowerCmd)))
  "Returns md5sum for a message object of type 'PCU_PowerCmd"
  "e20658d4566685bbdae55f7fc1134d24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PCU_PowerCmd>)))
  "Returns full string definition for message of type '<PCU_PowerCmd>"
  (cl:format cl:nil "Header header~%~%int8 ADChasPwrup_Cmd~%~%int8 AD12VMCPwrup_Cmd~%~%int8 AD12VSC1Pwrup_Cmd~%~%int8 AD12VSC2Pwrup_Cmd~%~%int8 AD12VSC3Pwrup_Cmd~%~%int8 AD12VSC4Pwrup_Cmd~%~%int8 AD12VSC5Pwrup_Cmd~%~%int8 AD12VSC6Pwrup_Cmd~%~%int32 PwrCmd_RollCnt~%~%int32 PwrCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PCU_PowerCmd)))
  "Returns full string definition for message of type 'PCU_PowerCmd"
  (cl:format cl:nil "Header header~%~%int8 ADChasPwrup_Cmd~%~%int8 AD12VMCPwrup_Cmd~%~%int8 AD12VSC1Pwrup_Cmd~%~%int8 AD12VSC2Pwrup_Cmd~%~%int8 AD12VSC3Pwrup_Cmd~%~%int8 AD12VSC4Pwrup_Cmd~%~%int8 AD12VSC5Pwrup_Cmd~%~%int8 AD12VSC6Pwrup_Cmd~%~%int32 PwrCmd_RollCnt~%~%int32 PwrCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PCU_PowerCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PCU_PowerCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'PCU_PowerCmd
    (cl:cons ':header (header msg))
    (cl:cons ':ADChasPwrup_Cmd (ADChasPwrup_Cmd msg))
    (cl:cons ':AD12VMCPwrup_Cmd (AD12VMCPwrup_Cmd msg))
    (cl:cons ':AD12VSC1Pwrup_Cmd (AD12VSC1Pwrup_Cmd msg))
    (cl:cons ':AD12VSC2Pwrup_Cmd (AD12VSC2Pwrup_Cmd msg))
    (cl:cons ':AD12VSC3Pwrup_Cmd (AD12VSC3Pwrup_Cmd msg))
    (cl:cons ':AD12VSC4Pwrup_Cmd (AD12VSC4Pwrup_Cmd msg))
    (cl:cons ':AD12VSC5Pwrup_Cmd (AD12VSC5Pwrup_Cmd msg))
    (cl:cons ':AD12VSC6Pwrup_Cmd (AD12VSC6Pwrup_Cmd msg))
    (cl:cons ':PwrCmd_RollCnt (PwrCmd_RollCnt msg))
    (cl:cons ':PwrCmd_Checksum (PwrCmd_Checksum msg))
))
