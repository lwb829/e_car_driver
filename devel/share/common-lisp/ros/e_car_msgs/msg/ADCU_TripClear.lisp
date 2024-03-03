; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_TripClear.msg.html

(cl:defclass <ADCU_TripClear> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (TotalTripClear_Cmd
    :reader TotalTripClear_Cmd
    :initarg :TotalTripClear_Cmd
    :type cl:fixnum
    :initform 0)
   (RmtDrvTripClear_Cmd
    :reader RmtDrvTripClear_Cmd
    :initarg :RmtDrvTripClear_Cmd
    :type cl:fixnum
    :initform 0)
   (AutoDrvTripClear_Cmd
    :reader AutoDrvTripClear_Cmd
    :initarg :AutoDrvTripClear_Cmd
    :type cl:fixnum
    :initform 0)
   (CldDrvTripClear_Cmd
    :reader CldDrvTripClear_Cmd
    :initarg :CldDrvTripClear_Cmd
    :type cl:fixnum
    :initform 0)
   (TripClear_RollCnt
    :reader TripClear_RollCnt
    :initarg :TripClear_RollCnt
    :type cl:integer
    :initform 0)
   (TripClear_Checksum
    :reader TripClear_Checksum
    :initarg :TripClear_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADCU_TripClear (<ADCU_TripClear>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_TripClear>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_TripClear)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_TripClear> is deprecated: use e_car_msgs-msg:ADCU_TripClear instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_TripClear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'TotalTripClear_Cmd-val :lambda-list '(m))
(cl:defmethod TotalTripClear_Cmd-val ((m <ADCU_TripClear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:TotalTripClear_Cmd-val is deprecated.  Use e_car_msgs-msg:TotalTripClear_Cmd instead.")
  (TotalTripClear_Cmd m))

(cl:ensure-generic-function 'RmtDrvTripClear_Cmd-val :lambda-list '(m))
(cl:defmethod RmtDrvTripClear_Cmd-val ((m <ADCU_TripClear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:RmtDrvTripClear_Cmd-val is deprecated.  Use e_car_msgs-msg:RmtDrvTripClear_Cmd instead.")
  (RmtDrvTripClear_Cmd m))

(cl:ensure-generic-function 'AutoDrvTripClear_Cmd-val :lambda-list '(m))
(cl:defmethod AutoDrvTripClear_Cmd-val ((m <ADCU_TripClear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AutoDrvTripClear_Cmd-val is deprecated.  Use e_car_msgs-msg:AutoDrvTripClear_Cmd instead.")
  (AutoDrvTripClear_Cmd m))

(cl:ensure-generic-function 'CldDrvTripClear_Cmd-val :lambda-list '(m))
(cl:defmethod CldDrvTripClear_Cmd-val ((m <ADCU_TripClear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldDrvTripClear_Cmd-val is deprecated.  Use e_car_msgs-msg:CldDrvTripClear_Cmd instead.")
  (CldDrvTripClear_Cmd m))

(cl:ensure-generic-function 'TripClear_RollCnt-val :lambda-list '(m))
(cl:defmethod TripClear_RollCnt-val ((m <ADCU_TripClear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:TripClear_RollCnt-val is deprecated.  Use e_car_msgs-msg:TripClear_RollCnt instead.")
  (TripClear_RollCnt m))

(cl:ensure-generic-function 'TripClear_Checksum-val :lambda-list '(m))
(cl:defmethod TripClear_Checksum-val ((m <ADCU_TripClear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:TripClear_Checksum-val is deprecated.  Use e_car_msgs-msg:TripClear_Checksum instead.")
  (TripClear_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_TripClear>) ostream)
  "Serializes a message object of type '<ADCU_TripClear>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'TotalTripClear_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'RmtDrvTripClear_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AutoDrvTripClear_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CldDrvTripClear_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'TripClear_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'TripClear_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_TripClear>) istream)
  "Deserializes a message object of type '<ADCU_TripClear>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TotalTripClear_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RmtDrvTripClear_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AutoDrvTripClear_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldDrvTripClear_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TripClear_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TripClear_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_TripClear>)))
  "Returns string type for a message object of type '<ADCU_TripClear>"
  "e_car_msgs/ADCU_TripClear")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_TripClear)))
  "Returns string type for a message object of type 'ADCU_TripClear"
  "e_car_msgs/ADCU_TripClear")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_TripClear>)))
  "Returns md5sum for a message object of type '<ADCU_TripClear>"
  "1a36ba245d873b5273a133be9bf8ae01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_TripClear)))
  "Returns md5sum for a message object of type 'ADCU_TripClear"
  "1a36ba245d873b5273a133be9bf8ae01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_TripClear>)))
  "Returns full string definition for message of type '<ADCU_TripClear>"
  (cl:format cl:nil "Header header~%~%int8 TotalTripClear_Cmd~%~%int8 RmtDrvTripClear_Cmd~%~%int8 AutoDrvTripClear_Cmd~%~%int8 CldDrvTripClear_Cmd~%~%int32 TripClear_RollCnt~%~%int32 TripClear_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_TripClear)))
  "Returns full string definition for message of type 'ADCU_TripClear"
  (cl:format cl:nil "Header header~%~%int8 TotalTripClear_Cmd~%~%int8 RmtDrvTripClear_Cmd~%~%int8 AutoDrvTripClear_Cmd~%~%int8 CldDrvTripClear_Cmd~%~%int32 TripClear_RollCnt~%~%int32 TripClear_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_TripClear>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_TripClear>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_TripClear
    (cl:cons ':header (header msg))
    (cl:cons ':TotalTripClear_Cmd (TotalTripClear_Cmd msg))
    (cl:cons ':RmtDrvTripClear_Cmd (RmtDrvTripClear_Cmd msg))
    (cl:cons ':AutoDrvTripClear_Cmd (AutoDrvTripClear_Cmd msg))
    (cl:cons ':CldDrvTripClear_Cmd (CldDrvTripClear_Cmd msg))
    (cl:cons ':TripClear_RollCnt (TripClear_RollCnt msg))
    (cl:cons ':TripClear_Checksum (TripClear_Checksum msg))
))
