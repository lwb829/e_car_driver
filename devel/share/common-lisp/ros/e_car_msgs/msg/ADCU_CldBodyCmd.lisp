; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_CldBodyCmd.msg.html

(cl:defclass <ADCU_CldBodyCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Cld_WidthLamp_Cmd
    :reader Cld_WidthLamp_Cmd
    :initarg :Cld_WidthLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld_BrkLamp_Cmd
    :reader Cld_BrkLamp_Cmd
    :initarg :Cld_BrkLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld_FogLamp_Cmd
    :reader Cld_FogLamp_Cmd
    :initarg :Cld_FogLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld_HeadLamp_Cmd
    :reader Cld_HeadLamp_Cmd
    :initarg :Cld_HeadLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld_DblFlashLamp_Cmd
    :reader Cld_DblFlashLamp_Cmd
    :initarg :Cld_DblFlashLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld_TurnLLamp_Cmd
    :reader Cld_TurnLLamp_Cmd
    :initarg :Cld_TurnLLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld_TurnRLamp_Cmd
    :reader Cld_TurnRLamp_Cmd
    :initarg :Cld_TurnRLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld_BackLamp_Cmd
    :reader Cld_BackLamp_Cmd
    :initarg :Cld_BackLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld_Buzzer_Cmd
    :reader Cld_Buzzer_Cmd
    :initarg :Cld_Buzzer_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld_Horn_Cmd
    :reader Cld_Horn_Cmd
    :initarg :Cld_Horn_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld_RunLamp_Cmd
    :reader Cld_RunLamp_Cmd
    :initarg :Cld_RunLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (CldBodyCmd_RollCnt
    :reader CldBodyCmd_RollCnt
    :initarg :CldBodyCmd_RollCnt
    :type cl:integer
    :initform 0)
   (CldBodyCmd_Checksum
    :reader CldBodyCmd_Checksum
    :initarg :CldBodyCmd_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADCU_CldBodyCmd (<ADCU_CldBodyCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_CldBodyCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_CldBodyCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_CldBodyCmd> is deprecated: use e_car_msgs-msg:ADCU_CldBodyCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Cld_WidthLamp_Cmd-val :lambda-list '(m))
(cl:defmethod Cld_WidthLamp_Cmd-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_WidthLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld_WidthLamp_Cmd instead.")
  (Cld_WidthLamp_Cmd m))

(cl:ensure-generic-function 'Cld_BrkLamp_Cmd-val :lambda-list '(m))
(cl:defmethod Cld_BrkLamp_Cmd-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_BrkLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld_BrkLamp_Cmd instead.")
  (Cld_BrkLamp_Cmd m))

(cl:ensure-generic-function 'Cld_FogLamp_Cmd-val :lambda-list '(m))
(cl:defmethod Cld_FogLamp_Cmd-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_FogLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld_FogLamp_Cmd instead.")
  (Cld_FogLamp_Cmd m))

(cl:ensure-generic-function 'Cld_HeadLamp_Cmd-val :lambda-list '(m))
(cl:defmethod Cld_HeadLamp_Cmd-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_HeadLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld_HeadLamp_Cmd instead.")
  (Cld_HeadLamp_Cmd m))

(cl:ensure-generic-function 'Cld_DblFlashLamp_Cmd-val :lambda-list '(m))
(cl:defmethod Cld_DblFlashLamp_Cmd-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_DblFlashLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld_DblFlashLamp_Cmd instead.")
  (Cld_DblFlashLamp_Cmd m))

(cl:ensure-generic-function 'Cld_TurnLLamp_Cmd-val :lambda-list '(m))
(cl:defmethod Cld_TurnLLamp_Cmd-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_TurnLLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld_TurnLLamp_Cmd instead.")
  (Cld_TurnLLamp_Cmd m))

(cl:ensure-generic-function 'Cld_TurnRLamp_Cmd-val :lambda-list '(m))
(cl:defmethod Cld_TurnRLamp_Cmd-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_TurnRLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld_TurnRLamp_Cmd instead.")
  (Cld_TurnRLamp_Cmd m))

(cl:ensure-generic-function 'Cld_BackLamp_Cmd-val :lambda-list '(m))
(cl:defmethod Cld_BackLamp_Cmd-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_BackLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld_BackLamp_Cmd instead.")
  (Cld_BackLamp_Cmd m))

(cl:ensure-generic-function 'Cld_Buzzer_Cmd-val :lambda-list '(m))
(cl:defmethod Cld_Buzzer_Cmd-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_Buzzer_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld_Buzzer_Cmd instead.")
  (Cld_Buzzer_Cmd m))

(cl:ensure-generic-function 'Cld_Horn_Cmd-val :lambda-list '(m))
(cl:defmethod Cld_Horn_Cmd-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_Horn_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld_Horn_Cmd instead.")
  (Cld_Horn_Cmd m))

(cl:ensure-generic-function 'Cld_RunLamp_Cmd-val :lambda-list '(m))
(cl:defmethod Cld_RunLamp_Cmd-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld_RunLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld_RunLamp_Cmd instead.")
  (Cld_RunLamp_Cmd m))

(cl:ensure-generic-function 'CldBodyCmd_RollCnt-val :lambda-list '(m))
(cl:defmethod CldBodyCmd_RollCnt-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldBodyCmd_RollCnt-val is deprecated.  Use e_car_msgs-msg:CldBodyCmd_RollCnt instead.")
  (CldBodyCmd_RollCnt m))

(cl:ensure-generic-function 'CldBodyCmd_Checksum-val :lambda-list '(m))
(cl:defmethod CldBodyCmd_Checksum-val ((m <ADCU_CldBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldBodyCmd_Checksum-val is deprecated.  Use e_car_msgs-msg:CldBodyCmd_Checksum instead.")
  (CldBodyCmd_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_CldBodyCmd>) ostream)
  "Serializes a message object of type '<ADCU_CldBodyCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Cld_WidthLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_BrkLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_FogLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_HeadLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_DblFlashLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_TurnLLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_TurnRLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_BackLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_Buzzer_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_Horn_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld_RunLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CldBodyCmd_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CldBodyCmd_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_CldBodyCmd>) istream)
  "Deserializes a message object of type '<ADCU_CldBodyCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_WidthLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_BrkLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_FogLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_HeadLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_DblFlashLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_TurnLLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_TurnRLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_BackLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_Buzzer_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_Horn_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld_RunLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldBodyCmd_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldBodyCmd_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_CldBodyCmd>)))
  "Returns string type for a message object of type '<ADCU_CldBodyCmd>"
  "e_car_msgs/ADCU_CldBodyCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_CldBodyCmd)))
  "Returns string type for a message object of type 'ADCU_CldBodyCmd"
  "e_car_msgs/ADCU_CldBodyCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_CldBodyCmd>)))
  "Returns md5sum for a message object of type '<ADCU_CldBodyCmd>"
  "e996fa29fe9d34f1678bf393df7a1655")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_CldBodyCmd)))
  "Returns md5sum for a message object of type 'ADCU_CldBodyCmd"
  "e996fa29fe9d34f1678bf393df7a1655")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_CldBodyCmd>)))
  "Returns full string definition for message of type '<ADCU_CldBodyCmd>"
  (cl:format cl:nil "Header header~%~%int8 Cld_WidthLamp_Cmd~%~%int8 Cld_BrkLamp_Cmd~%~%int8 Cld_FogLamp_Cmd~%~%int8 Cld_HeadLamp_Cmd~%~%int8 Cld_DblFlashLamp_Cmd~%~%int8 Cld_TurnLLamp_Cmd~%~%int8 Cld_TurnRLamp_Cmd~%~%int8 Cld_BackLamp_Cmd~%~%int8 Cld_Buzzer_Cmd~%~%int8 Cld_Horn_Cmd~%~%int8 Cld_RunLamp_Cmd~%~%int32 CldBodyCmd_RollCnt~%~%int32 CldBodyCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_CldBodyCmd)))
  "Returns full string definition for message of type 'ADCU_CldBodyCmd"
  (cl:format cl:nil "Header header~%~%int8 Cld_WidthLamp_Cmd~%~%int8 Cld_BrkLamp_Cmd~%~%int8 Cld_FogLamp_Cmd~%~%int8 Cld_HeadLamp_Cmd~%~%int8 Cld_DblFlashLamp_Cmd~%~%int8 Cld_TurnLLamp_Cmd~%~%int8 Cld_TurnRLamp_Cmd~%~%int8 Cld_BackLamp_Cmd~%~%int8 Cld_Buzzer_Cmd~%~%int8 Cld_Horn_Cmd~%~%int8 Cld_RunLamp_Cmd~%~%int32 CldBodyCmd_RollCnt~%~%int32 CldBodyCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_CldBodyCmd>))
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
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_CldBodyCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_CldBodyCmd
    (cl:cons ':header (header msg))
    (cl:cons ':Cld_WidthLamp_Cmd (Cld_WidthLamp_Cmd msg))
    (cl:cons ':Cld_BrkLamp_Cmd (Cld_BrkLamp_Cmd msg))
    (cl:cons ':Cld_FogLamp_Cmd (Cld_FogLamp_Cmd msg))
    (cl:cons ':Cld_HeadLamp_Cmd (Cld_HeadLamp_Cmd msg))
    (cl:cons ':Cld_DblFlashLamp_Cmd (Cld_DblFlashLamp_Cmd msg))
    (cl:cons ':Cld_TurnLLamp_Cmd (Cld_TurnLLamp_Cmd msg))
    (cl:cons ':Cld_TurnRLamp_Cmd (Cld_TurnRLamp_Cmd msg))
    (cl:cons ':Cld_BackLamp_Cmd (Cld_BackLamp_Cmd msg))
    (cl:cons ':Cld_Buzzer_Cmd (Cld_Buzzer_Cmd msg))
    (cl:cons ':Cld_Horn_Cmd (Cld_Horn_Cmd msg))
    (cl:cons ':Cld_RunLamp_Cmd (Cld_RunLamp_Cmd msg))
    (cl:cons ':CldBodyCmd_RollCnt (CldBodyCmd_RollCnt msg))
    (cl:cons ':CldBodyCmd_Checksum (CldBodyCmd_Checksum msg))
))
