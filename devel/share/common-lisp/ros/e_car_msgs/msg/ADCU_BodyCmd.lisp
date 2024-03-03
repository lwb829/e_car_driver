; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_BodyCmd.msg.html

(cl:defclass <ADCU_BodyCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (LampCmd_Active
    :reader LampCmd_Active
    :initarg :LampCmd_Active
    :type cl:fixnum
    :initform 0)
   (HeadLamp_Cmd
    :reader HeadLamp_Cmd
    :initarg :HeadLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (DblFlashLamp_Cmd
    :reader DblFlashLamp_Cmd
    :initarg :DblFlashLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (TurnLLamp_Cmd
    :reader TurnLLamp_Cmd
    :initarg :TurnLLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (TurnRLamp_Cmd
    :reader TurnRLamp_Cmd
    :initarg :TurnRLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (BackLamp_Cmd
    :reader BackLamp_Cmd
    :initarg :BackLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (Buzzer_Cmd
    :reader Buzzer_Cmd
    :initarg :Buzzer_Cmd
    :type cl:fixnum
    :initform 0)
   (Horn_Cmd
    :reader Horn_Cmd
    :initarg :Horn_Cmd
    :type cl:fixnum
    :initform 0)
   (RunLamp_Cmd
    :reader RunLamp_Cmd
    :initarg :RunLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (BrkLamp_Cmd
    :reader BrkLamp_Cmd
    :initarg :BrkLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (FogLamp_Cmd
    :reader FogLamp_Cmd
    :initarg :FogLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (WidthLamp_Cmd
    :reader WidthLamp_Cmd
    :initarg :WidthLamp_Cmd
    :type cl:fixnum
    :initform 0)
   (LampCmd_RollCnt
    :reader LampCmd_RollCnt
    :initarg :LampCmd_RollCnt
    :type cl:integer
    :initform 0)
   (LampCmd_Checksum
    :reader LampCmd_Checksum
    :initarg :LampCmd_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADCU_BodyCmd (<ADCU_BodyCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_BodyCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_BodyCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_BodyCmd> is deprecated: use e_car_msgs-msg:ADCU_BodyCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'LampCmd_Active-val :lambda-list '(m))
(cl:defmethod LampCmd_Active-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:LampCmd_Active-val is deprecated.  Use e_car_msgs-msg:LampCmd_Active instead.")
  (LampCmd_Active m))

(cl:ensure-generic-function 'HeadLamp_Cmd-val :lambda-list '(m))
(cl:defmethod HeadLamp_Cmd-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:HeadLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:HeadLamp_Cmd instead.")
  (HeadLamp_Cmd m))

(cl:ensure-generic-function 'DblFlashLamp_Cmd-val :lambda-list '(m))
(cl:defmethod DblFlashLamp_Cmd-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:DblFlashLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:DblFlashLamp_Cmd instead.")
  (DblFlashLamp_Cmd m))

(cl:ensure-generic-function 'TurnLLamp_Cmd-val :lambda-list '(m))
(cl:defmethod TurnLLamp_Cmd-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:TurnLLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:TurnLLamp_Cmd instead.")
  (TurnLLamp_Cmd m))

(cl:ensure-generic-function 'TurnRLamp_Cmd-val :lambda-list '(m))
(cl:defmethod TurnRLamp_Cmd-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:TurnRLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:TurnRLamp_Cmd instead.")
  (TurnRLamp_Cmd m))

(cl:ensure-generic-function 'BackLamp_Cmd-val :lambda-list '(m))
(cl:defmethod BackLamp_Cmd-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:BackLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:BackLamp_Cmd instead.")
  (BackLamp_Cmd m))

(cl:ensure-generic-function 'Buzzer_Cmd-val :lambda-list '(m))
(cl:defmethod Buzzer_Cmd-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Buzzer_Cmd-val is deprecated.  Use e_car_msgs-msg:Buzzer_Cmd instead.")
  (Buzzer_Cmd m))

(cl:ensure-generic-function 'Horn_Cmd-val :lambda-list '(m))
(cl:defmethod Horn_Cmd-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Horn_Cmd-val is deprecated.  Use e_car_msgs-msg:Horn_Cmd instead.")
  (Horn_Cmd m))

(cl:ensure-generic-function 'RunLamp_Cmd-val :lambda-list '(m))
(cl:defmethod RunLamp_Cmd-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:RunLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:RunLamp_Cmd instead.")
  (RunLamp_Cmd m))

(cl:ensure-generic-function 'BrkLamp_Cmd-val :lambda-list '(m))
(cl:defmethod BrkLamp_Cmd-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:BrkLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:BrkLamp_Cmd instead.")
  (BrkLamp_Cmd m))

(cl:ensure-generic-function 'FogLamp_Cmd-val :lambda-list '(m))
(cl:defmethod FogLamp_Cmd-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:FogLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:FogLamp_Cmd instead.")
  (FogLamp_Cmd m))

(cl:ensure-generic-function 'WidthLamp_Cmd-val :lambda-list '(m))
(cl:defmethod WidthLamp_Cmd-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:WidthLamp_Cmd-val is deprecated.  Use e_car_msgs-msg:WidthLamp_Cmd instead.")
  (WidthLamp_Cmd m))

(cl:ensure-generic-function 'LampCmd_RollCnt-val :lambda-list '(m))
(cl:defmethod LampCmd_RollCnt-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:LampCmd_RollCnt-val is deprecated.  Use e_car_msgs-msg:LampCmd_RollCnt instead.")
  (LampCmd_RollCnt m))

(cl:ensure-generic-function 'LampCmd_Checksum-val :lambda-list '(m))
(cl:defmethod LampCmd_Checksum-val ((m <ADCU_BodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:LampCmd_Checksum-val is deprecated.  Use e_car_msgs-msg:LampCmd_Checksum instead.")
  (LampCmd_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_BodyCmd>) ostream)
  "Serializes a message object of type '<ADCU_BodyCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'LampCmd_Active)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'HeadLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'DblFlashLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'TurnLLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'TurnRLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'BackLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Buzzer_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Horn_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'RunLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'BrkLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'FogLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'WidthLamp_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'LampCmd_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'LampCmd_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_BodyCmd>) istream)
  "Deserializes a message object of type '<ADCU_BodyCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LampCmd_Active) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'HeadLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'DblFlashLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TurnLLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TurnRLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BackLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Buzzer_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Horn_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RunLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BrkLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'FogLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'WidthLamp_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LampCmd_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LampCmd_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_BodyCmd>)))
  "Returns string type for a message object of type '<ADCU_BodyCmd>"
  "e_car_msgs/ADCU_BodyCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_BodyCmd)))
  "Returns string type for a message object of type 'ADCU_BodyCmd"
  "e_car_msgs/ADCU_BodyCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_BodyCmd>)))
  "Returns md5sum for a message object of type '<ADCU_BodyCmd>"
  "d293b40475c67e82549c2ea01e9369b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_BodyCmd)))
  "Returns md5sum for a message object of type 'ADCU_BodyCmd"
  "d293b40475c67e82549c2ea01e9369b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_BodyCmd>)))
  "Returns full string definition for message of type '<ADCU_BodyCmd>"
  (cl:format cl:nil "Header header~%~%int8 LampCmd_Active~%~%int8 HeadLamp_Cmd~%~%int8 DblFlashLamp_Cmd~%~%int8 TurnLLamp_Cmd~%~%int8 TurnRLamp_Cmd~%~%int8 BackLamp_Cmd~%~%int8 Buzzer_Cmd~%~%int8 Horn_Cmd~%~%int8 RunLamp_Cmd~%~%int8 BrkLamp_Cmd~%~%int8 FogLamp_Cmd~%~%int8 WidthLamp_Cmd~%~%int32 LampCmd_RollCnt~%~%int32 LampCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_BodyCmd)))
  "Returns full string definition for message of type 'ADCU_BodyCmd"
  (cl:format cl:nil "Header header~%~%int8 LampCmd_Active~%~%int8 HeadLamp_Cmd~%~%int8 DblFlashLamp_Cmd~%~%int8 TurnLLamp_Cmd~%~%int8 TurnRLamp_Cmd~%~%int8 BackLamp_Cmd~%~%int8 Buzzer_Cmd~%~%int8 Horn_Cmd~%~%int8 RunLamp_Cmd~%~%int8 BrkLamp_Cmd~%~%int8 FogLamp_Cmd~%~%int8 WidthLamp_Cmd~%~%int32 LampCmd_RollCnt~%~%int32 LampCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_BodyCmd>))
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
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_BodyCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_BodyCmd
    (cl:cons ':header (header msg))
    (cl:cons ':LampCmd_Active (LampCmd_Active msg))
    (cl:cons ':HeadLamp_Cmd (HeadLamp_Cmd msg))
    (cl:cons ':DblFlashLamp_Cmd (DblFlashLamp_Cmd msg))
    (cl:cons ':TurnLLamp_Cmd (TurnLLamp_Cmd msg))
    (cl:cons ':TurnRLamp_Cmd (TurnRLamp_Cmd msg))
    (cl:cons ':BackLamp_Cmd (BackLamp_Cmd msg))
    (cl:cons ':Buzzer_Cmd (Buzzer_Cmd msg))
    (cl:cons ':Horn_Cmd (Horn_Cmd msg))
    (cl:cons ':RunLamp_Cmd (RunLamp_Cmd msg))
    (cl:cons ':BrkLamp_Cmd (BrkLamp_Cmd msg))
    (cl:cons ':FogLamp_Cmd (FogLamp_Cmd msg))
    (cl:cons ':WidthLamp_Cmd (WidthLamp_Cmd msg))
    (cl:cons ':LampCmd_RollCnt (LampCmd_RollCnt msg))
    (cl:cons ':LampCmd_Checksum (LampCmd_Checksum msg))
))
