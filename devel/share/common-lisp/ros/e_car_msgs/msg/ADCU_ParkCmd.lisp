; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_ParkCmd.msg.html

(cl:defclass <ADCU_ParkCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Prk_Active
    :reader Prk_Active
    :initarg :Prk_Active
    :type cl:fixnum
    :initform 0)
   (Prk_Enable
    :reader Prk_Enable
    :initarg :Prk_Enable
    :type cl:fixnum
    :initform 0)
   (PrkCmd_RollCnt
    :reader PrkCmd_RollCnt
    :initarg :PrkCmd_RollCnt
    :type cl:integer
    :initform 0)
   (PrkCmd_Checksum
    :reader PrkCmd_Checksum
    :initarg :PrkCmd_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADCU_ParkCmd (<ADCU_ParkCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_ParkCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_ParkCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_ParkCmd> is deprecated: use e_car_msgs-msg:ADCU_ParkCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_ParkCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Prk_Active-val :lambda-list '(m))
(cl:defmethod Prk_Active-val ((m <ADCU_ParkCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Prk_Active-val is deprecated.  Use e_car_msgs-msg:Prk_Active instead.")
  (Prk_Active m))

(cl:ensure-generic-function 'Prk_Enable-val :lambda-list '(m))
(cl:defmethod Prk_Enable-val ((m <ADCU_ParkCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Prk_Enable-val is deprecated.  Use e_car_msgs-msg:Prk_Enable instead.")
  (Prk_Enable m))

(cl:ensure-generic-function 'PrkCmd_RollCnt-val :lambda-list '(m))
(cl:defmethod PrkCmd_RollCnt-val ((m <ADCU_ParkCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:PrkCmd_RollCnt-val is deprecated.  Use e_car_msgs-msg:PrkCmd_RollCnt instead.")
  (PrkCmd_RollCnt m))

(cl:ensure-generic-function 'PrkCmd_Checksum-val :lambda-list '(m))
(cl:defmethod PrkCmd_Checksum-val ((m <ADCU_ParkCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:PrkCmd_Checksum-val is deprecated.  Use e_car_msgs-msg:PrkCmd_Checksum instead.")
  (PrkCmd_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_ParkCmd>) ostream)
  "Serializes a message object of type '<ADCU_ParkCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Prk_Active)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Prk_Enable)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'PrkCmd_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'PrkCmd_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_ParkCmd>) istream)
  "Deserializes a message object of type '<ADCU_ParkCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Prk_Active) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Prk_Enable) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'PrkCmd_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'PrkCmd_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_ParkCmd>)))
  "Returns string type for a message object of type '<ADCU_ParkCmd>"
  "e_car_msgs/ADCU_ParkCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_ParkCmd)))
  "Returns string type for a message object of type 'ADCU_ParkCmd"
  "e_car_msgs/ADCU_ParkCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_ParkCmd>)))
  "Returns md5sum for a message object of type '<ADCU_ParkCmd>"
  "cd00658d46e5ca4d0dd437a5ea884545")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_ParkCmd)))
  "Returns md5sum for a message object of type 'ADCU_ParkCmd"
  "cd00658d46e5ca4d0dd437a5ea884545")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_ParkCmd>)))
  "Returns full string definition for message of type '<ADCU_ParkCmd>"
  (cl:format cl:nil "Header header~%~%int8 Prk_Active~%~%int8 Prk_Enable~%~%int32 PrkCmd_RollCnt~%~%int32 PrkCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_ParkCmd)))
  "Returns full string definition for message of type 'ADCU_ParkCmd"
  (cl:format cl:nil "Header header~%~%int8 Prk_Active~%~%int8 Prk_Enable~%~%int32 PrkCmd_RollCnt~%~%int32 PrkCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_ParkCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_ParkCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_ParkCmd
    (cl:cons ':header (header msg))
    (cl:cons ':Prk_Active (Prk_Active msg))
    (cl:cons ':Prk_Enable (Prk_Enable msg))
    (cl:cons ':PrkCmd_RollCnt (PrkCmd_RollCnt msg))
    (cl:cons ':PrkCmd_Checksum (PrkCmd_Checksum msg))
))
