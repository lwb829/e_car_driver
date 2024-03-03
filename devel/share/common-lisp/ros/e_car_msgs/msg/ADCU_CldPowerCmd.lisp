; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_CldPowerCmd.msg.html

(cl:defclass <ADCU_CldPowerCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (CldVehPwrup_Cmd
    :reader CldVehPwrup_Cmd
    :initarg :CldVehPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (CldChasPwrup_Cmd
    :reader CldChasPwrup_Cmd
    :initarg :CldChasPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld12VMCPwrup_Cmd
    :reader Cld12VMCPwrup_Cmd
    :initarg :Cld12VMCPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld12VRCPwrup_Cmd
    :reader Cld12VRCPwrup_Cmd
    :initarg :Cld12VRCPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld24VMCPwrup_Cmd
    :reader Cld24VMCPwrup_Cmd
    :initarg :Cld24VMCPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (CldPA12VPwrup_Cmd
    :reader CldPA12VPwrup_Cmd
    :initarg :CldPA12VPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (CldPA24VPwrup_Cmd
    :reader CldPA24VPwrup_Cmd
    :initarg :CldPA24VPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld12VSC1Pwrup_Cmd
    :reader Cld12VSC1Pwrup_Cmd
    :initarg :Cld12VSC1Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld12VSC2Pwrup_Cmd
    :reader Cld12VSC2Pwrup_Cmd
    :initarg :Cld12VSC2Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld12VSC3Pwrup_Cmd
    :reader Cld12VSC3Pwrup_Cmd
    :initarg :Cld12VSC3Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld12VSC4Pwrup_Cmd
    :reader Cld12VSC4Pwrup_Cmd
    :initarg :Cld12VSC4Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld12VSC5Pwrup_Cmd
    :reader Cld12VSC5Pwrup_Cmd
    :initarg :Cld12VSC5Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld12VSC6Pwrup_Cmd
    :reader Cld12VSC6Pwrup_Cmd
    :initarg :Cld12VSC6Pwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld12VMCPwrdownCnfm_Cmd
    :reader Cld12VMCPwrdownCnfm_Cmd
    :initarg :Cld12VMCPwrdownCnfm_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld12VRCPwrdownCnfm_Cmd
    :reader Cld12VRCPwrdownCnfm_Cmd
    :initarg :Cld12VRCPwrdownCnfm_Cmd
    :type cl:fixnum
    :initform 0)
   (Cld24VMCPwrdownCnfm_Cmd
    :reader Cld24VMCPwrdownCnfm_Cmd
    :initarg :Cld24VMCPwrdownCnfm_Cmd
    :type cl:fixnum
    :initform 0)
   (CldPA12VPwrdownCnfm_Cmd
    :reader CldPA12VPwrdownCnfm_Cmd
    :initarg :CldPA12VPwrdownCnfm_Cmd
    :type cl:fixnum
    :initform 0)
   (CldPA24VPwrdownCnfm_Cmd
    :reader CldPA24VPwrdownCnfm_Cmd
    :initarg :CldPA24VPwrdownCnfm_Cmd
    :type cl:fixnum
    :initform 0)
   (CldPwrCmd_RollCnt
    :reader CldPwrCmd_RollCnt
    :initarg :CldPwrCmd_RollCnt
    :type cl:integer
    :initform 0)
   (CldPwrCmd_Checksum
    :reader CldPwrCmd_Checksum
    :initarg :CldPwrCmd_Checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADCU_CldPowerCmd (<ADCU_CldPowerCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_CldPowerCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_CldPowerCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_CldPowerCmd> is deprecated: use e_car_msgs-msg:ADCU_CldPowerCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'CldVehPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod CldVehPwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldVehPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:CldVehPwrup_Cmd instead.")
  (CldVehPwrup_Cmd m))

(cl:ensure-generic-function 'CldChasPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod CldChasPwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldChasPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:CldChasPwrup_Cmd instead.")
  (CldChasPwrup_Cmd m))

(cl:ensure-generic-function 'Cld12VMCPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod Cld12VMCPwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld12VMCPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld12VMCPwrup_Cmd instead.")
  (Cld12VMCPwrup_Cmd m))

(cl:ensure-generic-function 'Cld12VRCPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod Cld12VRCPwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld12VRCPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld12VRCPwrup_Cmd instead.")
  (Cld12VRCPwrup_Cmd m))

(cl:ensure-generic-function 'Cld24VMCPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod Cld24VMCPwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld24VMCPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld24VMCPwrup_Cmd instead.")
  (Cld24VMCPwrup_Cmd m))

(cl:ensure-generic-function 'CldPA12VPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod CldPA12VPwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldPA12VPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:CldPA12VPwrup_Cmd instead.")
  (CldPA12VPwrup_Cmd m))

(cl:ensure-generic-function 'CldPA24VPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod CldPA24VPwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldPA24VPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:CldPA24VPwrup_Cmd instead.")
  (CldPA24VPwrup_Cmd m))

(cl:ensure-generic-function 'Cld12VSC1Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod Cld12VSC1Pwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld12VSC1Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld12VSC1Pwrup_Cmd instead.")
  (Cld12VSC1Pwrup_Cmd m))

(cl:ensure-generic-function 'Cld12VSC2Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod Cld12VSC2Pwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld12VSC2Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld12VSC2Pwrup_Cmd instead.")
  (Cld12VSC2Pwrup_Cmd m))

(cl:ensure-generic-function 'Cld12VSC3Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod Cld12VSC3Pwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld12VSC3Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld12VSC3Pwrup_Cmd instead.")
  (Cld12VSC3Pwrup_Cmd m))

(cl:ensure-generic-function 'Cld12VSC4Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod Cld12VSC4Pwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld12VSC4Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld12VSC4Pwrup_Cmd instead.")
  (Cld12VSC4Pwrup_Cmd m))

(cl:ensure-generic-function 'Cld12VSC5Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod Cld12VSC5Pwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld12VSC5Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld12VSC5Pwrup_Cmd instead.")
  (Cld12VSC5Pwrup_Cmd m))

(cl:ensure-generic-function 'Cld12VSC6Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod Cld12VSC6Pwrup_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld12VSC6Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld12VSC6Pwrup_Cmd instead.")
  (Cld12VSC6Pwrup_Cmd m))

(cl:ensure-generic-function 'Cld12VMCPwrdownCnfm_Cmd-val :lambda-list '(m))
(cl:defmethod Cld12VMCPwrdownCnfm_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld12VMCPwrdownCnfm_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld12VMCPwrdownCnfm_Cmd instead.")
  (Cld12VMCPwrdownCnfm_Cmd m))

(cl:ensure-generic-function 'Cld12VRCPwrdownCnfm_Cmd-val :lambda-list '(m))
(cl:defmethod Cld12VRCPwrdownCnfm_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld12VRCPwrdownCnfm_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld12VRCPwrdownCnfm_Cmd instead.")
  (Cld12VRCPwrdownCnfm_Cmd m))

(cl:ensure-generic-function 'Cld24VMCPwrdownCnfm_Cmd-val :lambda-list '(m))
(cl:defmethod Cld24VMCPwrdownCnfm_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:Cld24VMCPwrdownCnfm_Cmd-val is deprecated.  Use e_car_msgs-msg:Cld24VMCPwrdownCnfm_Cmd instead.")
  (Cld24VMCPwrdownCnfm_Cmd m))

(cl:ensure-generic-function 'CldPA12VPwrdownCnfm_Cmd-val :lambda-list '(m))
(cl:defmethod CldPA12VPwrdownCnfm_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldPA12VPwrdownCnfm_Cmd-val is deprecated.  Use e_car_msgs-msg:CldPA12VPwrdownCnfm_Cmd instead.")
  (CldPA12VPwrdownCnfm_Cmd m))

(cl:ensure-generic-function 'CldPA24VPwrdownCnfm_Cmd-val :lambda-list '(m))
(cl:defmethod CldPA24VPwrdownCnfm_Cmd-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldPA24VPwrdownCnfm_Cmd-val is deprecated.  Use e_car_msgs-msg:CldPA24VPwrdownCnfm_Cmd instead.")
  (CldPA24VPwrdownCnfm_Cmd m))

(cl:ensure-generic-function 'CldPwrCmd_RollCnt-val :lambda-list '(m))
(cl:defmethod CldPwrCmd_RollCnt-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldPwrCmd_RollCnt-val is deprecated.  Use e_car_msgs-msg:CldPwrCmd_RollCnt instead.")
  (CldPwrCmd_RollCnt m))

(cl:ensure-generic-function 'CldPwrCmd_Checksum-val :lambda-list '(m))
(cl:defmethod CldPwrCmd_Checksum-val ((m <ADCU_CldPowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:CldPwrCmd_Checksum-val is deprecated.  Use e_car_msgs-msg:CldPwrCmd_Checksum instead.")
  (CldPwrCmd_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_CldPowerCmd>) ostream)
  "Serializes a message object of type '<ADCU_CldPowerCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'CldVehPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CldChasPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld12VMCPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld12VRCPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld24VMCPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CldPA12VPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CldPA24VPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld12VSC1Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld12VSC2Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld12VSC3Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld12VSC4Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld12VSC5Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld12VSC6Pwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld12VMCPwrdownCnfm_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld12VRCPwrdownCnfm_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Cld24VMCPwrdownCnfm_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CldPA12VPwrdownCnfm_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CldPA24VPwrdownCnfm_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CldPwrCmd_RollCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CldPwrCmd_Checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_CldPowerCmd>) istream)
  "Deserializes a message object of type '<ADCU_CldPowerCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldVehPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldChasPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld12VMCPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld12VRCPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld24VMCPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldPA12VPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldPA24VPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld12VSC1Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld12VSC2Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld12VSC3Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld12VSC4Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld12VSC5Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld12VSC6Pwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld12VMCPwrdownCnfm_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld12VRCPwrdownCnfm_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cld24VMCPwrdownCnfm_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldPA12VPwrdownCnfm_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldPA24VPwrdownCnfm_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldPwrCmd_RollCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CldPwrCmd_Checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_CldPowerCmd>)))
  "Returns string type for a message object of type '<ADCU_CldPowerCmd>"
  "e_car_msgs/ADCU_CldPowerCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_CldPowerCmd)))
  "Returns string type for a message object of type 'ADCU_CldPowerCmd"
  "e_car_msgs/ADCU_CldPowerCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_CldPowerCmd>)))
  "Returns md5sum for a message object of type '<ADCU_CldPowerCmd>"
  "712914972d7a36597399d67071cb4425")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_CldPowerCmd)))
  "Returns md5sum for a message object of type 'ADCU_CldPowerCmd"
  "712914972d7a36597399d67071cb4425")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_CldPowerCmd>)))
  "Returns full string definition for message of type '<ADCU_CldPowerCmd>"
  (cl:format cl:nil "Header header~%~%int8 CldVehPwrup_Cmd~%~%int8 CldChasPwrup_Cmd~%~%int8 Cld12VMCPwrup_Cmd~%~%int8 Cld12VRCPwrup_Cmd~%~%int8 Cld24VMCPwrup_Cmd~%~%int8 CldPA12VPwrup_Cmd~%~%int8 CldPA24VPwrup_Cmd~%~%int8 Cld12VSC1Pwrup_Cmd~%~%int8 Cld12VSC2Pwrup_Cmd~%~%int8 Cld12VSC3Pwrup_Cmd~%~%int8 Cld12VSC4Pwrup_Cmd~%~%int8 Cld12VSC5Pwrup_Cmd~%~%int8 Cld12VSC6Pwrup_Cmd~%~%int8 Cld12VMCPwrdownCnfm_Cmd~%~%int8 Cld12VRCPwrdownCnfm_Cmd~%~%int8 Cld24VMCPwrdownCnfm_Cmd~%~%int8 CldPA12VPwrdownCnfm_Cmd~%~%int8 CldPA24VPwrdownCnfm_Cmd~%~%int32 CldPwrCmd_RollCnt~%~%int32 CldPwrCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_CldPowerCmd)))
  "Returns full string definition for message of type 'ADCU_CldPowerCmd"
  (cl:format cl:nil "Header header~%~%int8 CldVehPwrup_Cmd~%~%int8 CldChasPwrup_Cmd~%~%int8 Cld12VMCPwrup_Cmd~%~%int8 Cld12VRCPwrup_Cmd~%~%int8 Cld24VMCPwrup_Cmd~%~%int8 CldPA12VPwrup_Cmd~%~%int8 CldPA24VPwrup_Cmd~%~%int8 Cld12VSC1Pwrup_Cmd~%~%int8 Cld12VSC2Pwrup_Cmd~%~%int8 Cld12VSC3Pwrup_Cmd~%~%int8 Cld12VSC4Pwrup_Cmd~%~%int8 Cld12VSC5Pwrup_Cmd~%~%int8 Cld12VSC6Pwrup_Cmd~%~%int8 Cld12VMCPwrdownCnfm_Cmd~%~%int8 Cld12VRCPwrdownCnfm_Cmd~%~%int8 Cld24VMCPwrdownCnfm_Cmd~%~%int8 CldPA12VPwrdownCnfm_Cmd~%~%int8 CldPA24VPwrdownCnfm_Cmd~%~%int32 CldPwrCmd_RollCnt~%~%int32 CldPwrCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_CldPowerCmd>))
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
     1
     1
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_CldPowerCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_CldPowerCmd
    (cl:cons ':header (header msg))
    (cl:cons ':CldVehPwrup_Cmd (CldVehPwrup_Cmd msg))
    (cl:cons ':CldChasPwrup_Cmd (CldChasPwrup_Cmd msg))
    (cl:cons ':Cld12VMCPwrup_Cmd (Cld12VMCPwrup_Cmd msg))
    (cl:cons ':Cld12VRCPwrup_Cmd (Cld12VRCPwrup_Cmd msg))
    (cl:cons ':Cld24VMCPwrup_Cmd (Cld24VMCPwrup_Cmd msg))
    (cl:cons ':CldPA12VPwrup_Cmd (CldPA12VPwrup_Cmd msg))
    (cl:cons ':CldPA24VPwrup_Cmd (CldPA24VPwrup_Cmd msg))
    (cl:cons ':Cld12VSC1Pwrup_Cmd (Cld12VSC1Pwrup_Cmd msg))
    (cl:cons ':Cld12VSC2Pwrup_Cmd (Cld12VSC2Pwrup_Cmd msg))
    (cl:cons ':Cld12VSC3Pwrup_Cmd (Cld12VSC3Pwrup_Cmd msg))
    (cl:cons ':Cld12VSC4Pwrup_Cmd (Cld12VSC4Pwrup_Cmd msg))
    (cl:cons ':Cld12VSC5Pwrup_Cmd (Cld12VSC5Pwrup_Cmd msg))
    (cl:cons ':Cld12VSC6Pwrup_Cmd (Cld12VSC6Pwrup_Cmd msg))
    (cl:cons ':Cld12VMCPwrdownCnfm_Cmd (Cld12VMCPwrdownCnfm_Cmd msg))
    (cl:cons ':Cld12VRCPwrdownCnfm_Cmd (Cld12VRCPwrdownCnfm_Cmd msg))
    (cl:cons ':Cld24VMCPwrdownCnfm_Cmd (Cld24VMCPwrdownCnfm_Cmd msg))
    (cl:cons ':CldPA12VPwrdownCnfm_Cmd (CldPA12VPwrdownCnfm_Cmd msg))
    (cl:cons ':CldPA24VPwrdownCnfm_Cmd (CldPA24VPwrdownCnfm_Cmd msg))
    (cl:cons ':CldPwrCmd_RollCnt (CldPwrCmd_RollCnt msg))
    (cl:cons ':CldPwrCmd_Checksum (CldPwrCmd_Checksum msg))
))
