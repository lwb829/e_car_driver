; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_SweepCmd.msg.html

(cl:defclass <ADCU_SweepCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Tgt_SweepMode
    :reader Tgt_SweepMode
    :initarg :Tgt_SweepMode
    :type cl:fixnum
    :initform 0)
   (Sweep_Cmd
    :reader Sweep_Cmd
    :initarg :Sweep_Cmd
    :type cl:fixnum
    :initform 0)
   (ShakeDust_Cmd
    :reader ShakeDust_Cmd
    :initarg :ShakeDust_Cmd
    :type cl:fixnum
    :initform 0)
   (GbgDump_Cmd
    :reader GbgDump_Cmd
    :initarg :GbgDump_Cmd
    :type cl:fixnum
    :initform 0)
   (FtFenderCtrl_Cmd
    :reader FtFenderCtrl_Cmd
    :initarg :FtFenderCtrl_Cmd
    :type cl:fixnum
    :initform 0)
   (SweepEStop_Cmd
    :reader SweepEStop_Cmd
    :initarg :SweepEStop_Cmd
    :type cl:fixnum
    :initform 0)
   (BrushWtrValFbd_Cmd
    :reader BrushWtrValFbd_Cmd
    :initarg :BrushWtrValFbd_Cmd
    :type cl:fixnum
    :initform 0)
   (SweepCmd_RollCnt
    :reader SweepCmd_RollCnt
    :initarg :SweepCmd_RollCnt
    :type cl:integer
    :initform 0)
   (SweepCmd_Checksum
    :reader SweepCmd_Checksum
    :initarg :SweepCmd_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADCU_SweepCmd (<ADCU_SweepCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_SweepCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_SweepCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_SweepCmd> is deprecated: use e_car_msgs-msg:ADCU_SweepCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_SweepCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Tgt_SweepMode-val :lambda-list '(m))
(cl:defmethod Tgt_SweepMode-val ((m <ADCU_SweepCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Tgt_SweepMode-val is deprecated.  Use e_car_msgs-msg:Tgt_SweepMode instead.")
  (Tgt_SweepMode m))

(cl:ensure-generic-function 'Sweep_Cmd-val :lambda-list '(m))
(cl:defmethod Sweep_Cmd-val ((m <ADCU_SweepCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Sweep_Cmd-val is deprecated.  Use e_car_msgs-msg:Sweep_Cmd instead.")
  (Sweep_Cmd m))

(cl:ensure-generic-function 'ShakeDust_Cmd-val :lambda-list '(m))
(cl:defmethod ShakeDust_Cmd-val ((m <ADCU_SweepCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:ShakeDust_Cmd-val is deprecated.  Use e_car_msgs-msg:ShakeDust_Cmd instead.")
  (ShakeDust_Cmd m))

(cl:ensure-generic-function 'GbgDump_Cmd-val :lambda-list '(m))
(cl:defmethod GbgDump_Cmd-val ((m <ADCU_SweepCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:GbgDump_Cmd-val is deprecated.  Use e_car_msgs-msg:GbgDump_Cmd instead.")
  (GbgDump_Cmd m))

(cl:ensure-generic-function 'FtFenderCtrl_Cmd-val :lambda-list '(m))
(cl:defmethod FtFenderCtrl_Cmd-val ((m <ADCU_SweepCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:FtFenderCtrl_Cmd-val is deprecated.  Use e_car_msgs-msg:FtFenderCtrl_Cmd instead.")
  (FtFenderCtrl_Cmd m))

(cl:ensure-generic-function 'SweepEStop_Cmd-val :lambda-list '(m))
(cl:defmethod SweepEStop_Cmd-val ((m <ADCU_SweepCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:SweepEStop_Cmd-val is deprecated.  Use e_car_msgs-msg:SweepEStop_Cmd instead.")
  (SweepEStop_Cmd m))

(cl:ensure-generic-function 'BrushWtrValFbd_Cmd-val :lambda-list '(m))
(cl:defmethod BrushWtrValFbd_Cmd-val ((m <ADCU_SweepCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:BrushWtrValFbd_Cmd-val is deprecated.  Use e_car_msgs-msg:BrushWtrValFbd_Cmd instead.")
  (BrushWtrValFbd_Cmd m))

(cl:ensure-generic-function 'SweepCmd_RollCnt-val :lambda-list '(m))
(cl:defmethod SweepCmd_RollCnt-val ((m <ADCU_SweepCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:SweepCmd_RollCnt-val is deprecated.  Use e_car_msgs-msg:SweepCmd_RollCnt instead.")
  (SweepCmd_RollCnt m))

(cl:ensure-generic-function 'SweepCmd_Checksum-val :lambda-list '(m))
(cl:defmethod SweepCmd_Checksum-val ((m <ADCU_SweepCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:SweepCmd_Checksum-val is deprecated.  Use e_car_msgs-msg:SweepCmd_Checksum instead.")
  (SweepCmd_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_SweepCmd>) ostream)
  "Serializes a message object of type '<ADCU_SweepCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Tgt_SweepMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Sweep_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ShakeDust_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'GbgDump_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'FtFenderCtrl_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'SweepEStop_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'BrushWtrValFbd_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'SweepCmd_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'SweepCmd_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_SweepCmd>) istream)
  "Deserializes a message object of type '<ADCU_SweepCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Tgt_SweepMode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Sweep_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ShakeDust_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'GbgDump_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'FtFenderCtrl_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SweepEStop_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BrushWtrValFbd_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SweepCmd_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SweepCmd_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_SweepCmd>)))
  "Returns string type for a message object of type '<ADCU_SweepCmd>"
  "e_car_msgs/ADCU_SweepCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_SweepCmd)))
  "Returns string type for a message object of type 'ADCU_SweepCmd"
  "e_car_msgs/ADCU_SweepCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_SweepCmd>)))
  "Returns md5sum for a message object of type '<ADCU_SweepCmd>"
  "9fc2cfb79831693da7794ecbd5abc3cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_SweepCmd)))
  "Returns md5sum for a message object of type 'ADCU_SweepCmd"
  "9fc2cfb79831693da7794ecbd5abc3cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_SweepCmd>)))
  "Returns full string definition for message of type '<ADCU_SweepCmd>"
  (cl:format cl:nil "Header header~%~%int8 Tgt_SweepMode~%~%int8 Sweep_Cmd~%~%int8 ShakeDust_Cmd~%~%int8 GbgDump_Cmd~%~%int8 FtFenderCtrl_Cmd~%~%int8 SweepEStop_Cmd~%~%int8 BrushWtrValFbd_Cmd~%~%int32 SweepCmd_RollCnt~%~%int32 SweepCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_SweepCmd)))
  "Returns full string definition for message of type 'ADCU_SweepCmd"
  (cl:format cl:nil "Header header~%~%int8 Tgt_SweepMode~%~%int8 Sweep_Cmd~%~%int8 ShakeDust_Cmd~%~%int8 GbgDump_Cmd~%~%int8 FtFenderCtrl_Cmd~%~%int8 SweepEStop_Cmd~%~%int8 BrushWtrValFbd_Cmd~%~%int32 SweepCmd_RollCnt~%~%int32 SweepCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_SweepCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_SweepCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_SweepCmd
    (cl:cons ':header (header msg))
    (cl:cons ':Tgt_SweepMode (Tgt_SweepMode msg))
    (cl:cons ':Sweep_Cmd (Sweep_Cmd msg))
    (cl:cons ':ShakeDust_Cmd (ShakeDust_Cmd msg))
    (cl:cons ':GbgDump_Cmd (GbgDump_Cmd msg))
    (cl:cons ':FtFenderCtrl_Cmd (FtFenderCtrl_Cmd msg))
    (cl:cons ':SweepEStop_Cmd (SweepEStop_Cmd msg))
    (cl:cons ':BrushWtrValFbd_Cmd (BrushWtrValFbd_Cmd msg))
    (cl:cons ':SweepCmd_RollCnt (SweepCmd_RollCnt msg))
    (cl:cons ':SweepCmd_Checksum (SweepCmd_Checksum msg))
))
