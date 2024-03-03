; Auto-generated. Do not edit!


(cl:in-package e_car_msgs-msg)


;//! \htmlinclude ADCU_PowerCmd.msg.html

(cl:defclass <ADCU_PowerCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ADVehPwrup_Cmd
    :reader ADVehPwrup_Cmd
    :initarg :ADVehPwrup_Cmd
    :type cl:fixnum
    :initform 0)
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
   (AD12VRCPwrup_Cmd
    :reader AD12VRCPwrup_Cmd
    :initarg :AD12VRCPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (AD24VMCPwrup_Cmd
    :reader AD24VMCPwrup_Cmd
    :initarg :AD24VMCPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (ADPA12VPwrup_Cmd
    :reader ADPA12VPwrup_Cmd
    :initarg :ADPA12VPwrup_Cmd
    :type cl:fixnum
    :initform 0)
   (ADPA24VPwrup_Cmd
    :reader ADPA24VPwrup_Cmd
    :initarg :ADPA24VPwrup_Cmd
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
   (AD12VMCPwrdownCnfm_Cmd
    :reader AD12VMCPwrdownCnfm_Cmd
    :initarg :AD12VMCPwrdownCnfm_Cmd
    :type cl:fixnum
    :initform 0)
   (AD12VRCPwrdownCnfm_Cmd
    :reader AD12VRCPwrdownCnfm_Cmd
    :initarg :AD12VRCPwrdownCnfm_Cmd
    :type cl:fixnum
    :initform 0)
   (AD24VMCPwrdownCnfm_Cmd
    :reader AD24VMCPwrdownCnfm_Cmd
    :initarg :AD24VMCPwrdownCnfm_Cmd
    :type cl:fixnum
    :initform 0)
   (ADPA12VPwrdownCnfm_Cmd
    :reader ADPA12VPwrdownCnfm_Cmd
    :initarg :ADPA12VPwrdownCnfm_Cmd
    :type cl:fixnum
    :initform 0)
   (ADPA24VPwrdwnCnfm_Cmd
    :reader ADPA24VPwrdwnCnfm_Cmd
    :initarg :ADPA24VPwrdwnCnfm_Cmd
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

(cl:defclass ADCU_PowerCmd (<ADCU_PowerCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCU_PowerCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCU_PowerCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e_car_msgs-msg:<ADCU_PowerCmd> is deprecated: use e_car_msgs-msg:ADCU_PowerCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:header-val is deprecated.  Use e_car_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ADVehPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod ADVehPwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:ADVehPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:ADVehPwrup_Cmd instead.")
  (ADVehPwrup_Cmd m))

(cl:ensure-generic-function 'ADChasPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod ADChasPwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:ADChasPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:ADChasPwrup_Cmd instead.")
  (ADChasPwrup_Cmd m))

(cl:ensure-generic-function 'AD12VMCPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VMCPwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VMCPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VMCPwrup_Cmd instead.")
  (AD12VMCPwrup_Cmd m))

(cl:ensure-generic-function 'AD12VRCPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VRCPwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VRCPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VRCPwrup_Cmd instead.")
  (AD12VRCPwrup_Cmd m))

(cl:ensure-generic-function 'AD24VMCPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD24VMCPwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD24VMCPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD24VMCPwrup_Cmd instead.")
  (AD24VMCPwrup_Cmd m))

(cl:ensure-generic-function 'ADPA12VPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod ADPA12VPwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:ADPA12VPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:ADPA12VPwrup_Cmd instead.")
  (ADPA12VPwrup_Cmd m))

(cl:ensure-generic-function 'ADPA24VPwrup_Cmd-val :lambda-list '(m))
(cl:defmethod ADPA24VPwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:ADPA24VPwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:ADPA24VPwrup_Cmd instead.")
  (ADPA24VPwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC1Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC1Pwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC1Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC1Pwrup_Cmd instead.")
  (AD12VSC1Pwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC2Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC2Pwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC2Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC2Pwrup_Cmd instead.")
  (AD12VSC2Pwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC3Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC3Pwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC3Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC3Pwrup_Cmd instead.")
  (AD12VSC3Pwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC4Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC4Pwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC4Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC4Pwrup_Cmd instead.")
  (AD12VSC4Pwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC5Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC5Pwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC5Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC5Pwrup_Cmd instead.")
  (AD12VSC5Pwrup_Cmd m))

(cl:ensure-generic-function 'AD12VSC6Pwrup_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VSC6Pwrup_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VSC6Pwrup_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VSC6Pwrup_Cmd instead.")
  (AD12VSC6Pwrup_Cmd m))

(cl:ensure-generic-function 'AD12VMCPwrdownCnfm_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VMCPwrdownCnfm_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VMCPwrdownCnfm_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VMCPwrdownCnfm_Cmd instead.")
  (AD12VMCPwrdownCnfm_Cmd m))

(cl:ensure-generic-function 'AD12VRCPwrdownCnfm_Cmd-val :lambda-list '(m))
(cl:defmethod AD12VRCPwrdownCnfm_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD12VRCPwrdownCnfm_Cmd-val is deprecated.  Use e_car_msgs-msg:AD12VRCPwrdownCnfm_Cmd instead.")
  (AD12VRCPwrdownCnfm_Cmd m))

(cl:ensure-generic-function 'AD24VMCPwrdownCnfm_Cmd-val :lambda-list '(m))
(cl:defmethod AD24VMCPwrdownCnfm_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:AD24VMCPwrdownCnfm_Cmd-val is deprecated.  Use e_car_msgs-msg:AD24VMCPwrdownCnfm_Cmd instead.")
  (AD24VMCPwrdownCnfm_Cmd m))

(cl:ensure-generic-function 'ADPA12VPwrdownCnfm_Cmd-val :lambda-list '(m))
(cl:defmethod ADPA12VPwrdownCnfm_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:ADPA12VPwrdownCnfm_Cmd-val is deprecated.  Use e_car_msgs-msg:ADPA12VPwrdownCnfm_Cmd instead.")
  (ADPA12VPwrdownCnfm_Cmd m))

(cl:ensure-generic-function 'ADPA24VPwrdwnCnfm_Cmd-val :lambda-list '(m))
(cl:defmethod ADPA24VPwrdwnCnfm_Cmd-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:ADPA24VPwrdwnCnfm_Cmd-val is deprecated.  Use e_car_msgs-msg:ADPA24VPwrdwnCnfm_Cmd instead.")
  (ADPA24VPwrdwnCnfm_Cmd m))

(cl:ensure-generic-function 'PwrCmd_RollCnt-val :lambda-list '(m))
(cl:defmethod PwrCmd_RollCnt-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:PwrCmd_RollCnt-val is deprecated.  Use e_car_msgs-msg:PwrCmd_RollCnt instead.")
  (PwrCmd_RollCnt m))

(cl:ensure-generic-function 'PwrCmd_Checksum-val :lambda-list '(m))
(cl:defmethod PwrCmd_Checksum-val ((m <ADCU_PowerCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e_car_msgs-msg:PwrCmd_Checksum-val is deprecated.  Use e_car_msgs-msg:PwrCmd_Checksum instead.")
  (PwrCmd_Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCU_PowerCmd>) ostream)
  "Serializes a message object of type '<ADCU_PowerCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ADVehPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ADChasPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD12VMCPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD12VRCPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD24VMCPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ADPA12VPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ADPA24VPwrup_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
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
  (cl:let* ((signed (cl:slot-value msg 'AD12VMCPwrdownCnfm_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD12VRCPwrdownCnfm_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AD24VMCPwrdownCnfm_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ADPA12VPwrdownCnfm_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ADPA24VPwrdwnCnfm_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCU_PowerCmd>) istream)
  "Deserializes a message object of type '<ADCU_PowerCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ADVehPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ADChasPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD12VMCPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD12VRCPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD24VMCPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ADPA12VPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ADPA24VPwrup_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
      (cl:setf (cl:slot-value msg 'AD12VMCPwrdownCnfm_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD12VRCPwrdownCnfm_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AD24VMCPwrdownCnfm_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ADPA12VPwrdownCnfm_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ADPA24VPwrdwnCnfm_Cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCU_PowerCmd>)))
  "Returns string type for a message object of type '<ADCU_PowerCmd>"
  "e_car_msgs/ADCU_PowerCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCU_PowerCmd)))
  "Returns string type for a message object of type 'ADCU_PowerCmd"
  "e_car_msgs/ADCU_PowerCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCU_PowerCmd>)))
  "Returns md5sum for a message object of type '<ADCU_PowerCmd>"
  "c35626040527e5a2f86622e5735f1b6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCU_PowerCmd)))
  "Returns md5sum for a message object of type 'ADCU_PowerCmd"
  "c35626040527e5a2f86622e5735f1b6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCU_PowerCmd>)))
  "Returns full string definition for message of type '<ADCU_PowerCmd>"
  (cl:format cl:nil "Header header~%~%int8 ADVehPwrup_Cmd~%~%int8 ADChasPwrup_Cmd~%~%int8 AD12VMCPwrup_Cmd~%~%int8 AD12VRCPwrup_Cmd~%~%int8 AD24VMCPwrup_Cmd~%~%int8 ADPA12VPwrup_Cmd~%~%int8 ADPA24VPwrup_Cmd~%~%int8 AD12VSC1Pwrup_Cmd~%~%int8 AD12VSC2Pwrup_Cmd~%~%int8 AD12VSC3Pwrup_Cmd~%~%int8 AD12VSC4Pwrup_Cmd~%~%int8 AD12VSC5Pwrup_Cmd~%~%int8 AD12VSC6Pwrup_Cmd~%~%int8 AD12VMCPwrdownCnfm_Cmd~%~%int8 AD12VRCPwrdownCnfm_Cmd~%~%int8 AD24VMCPwrdownCnfm_Cmd~%~%int8 ADPA12VPwrdownCnfm_Cmd~%~%int8 ADPA24VPwrdwnCnfm_Cmd~%~%int32 PwrCmd_RollCnt~%~%int32 PwrCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCU_PowerCmd)))
  "Returns full string definition for message of type 'ADCU_PowerCmd"
  (cl:format cl:nil "Header header~%~%int8 ADVehPwrup_Cmd~%~%int8 ADChasPwrup_Cmd~%~%int8 AD12VMCPwrup_Cmd~%~%int8 AD12VRCPwrup_Cmd~%~%int8 AD24VMCPwrup_Cmd~%~%int8 ADPA12VPwrup_Cmd~%~%int8 ADPA24VPwrup_Cmd~%~%int8 AD12VSC1Pwrup_Cmd~%~%int8 AD12VSC2Pwrup_Cmd~%~%int8 AD12VSC3Pwrup_Cmd~%~%int8 AD12VSC4Pwrup_Cmd~%~%int8 AD12VSC5Pwrup_Cmd~%~%int8 AD12VSC6Pwrup_Cmd~%~%int8 AD12VMCPwrdownCnfm_Cmd~%~%int8 AD12VRCPwrdownCnfm_Cmd~%~%int8 AD24VMCPwrdownCnfm_Cmd~%~%int8 ADPA12VPwrdownCnfm_Cmd~%~%int8 ADPA24VPwrdwnCnfm_Cmd~%~%int32 PwrCmd_RollCnt~%~%int32 PwrCmd_Checksum~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCU_PowerCmd>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCU_PowerCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCU_PowerCmd
    (cl:cons ':header (header msg))
    (cl:cons ':ADVehPwrup_Cmd (ADVehPwrup_Cmd msg))
    (cl:cons ':ADChasPwrup_Cmd (ADChasPwrup_Cmd msg))
    (cl:cons ':AD12VMCPwrup_Cmd (AD12VMCPwrup_Cmd msg))
    (cl:cons ':AD12VRCPwrup_Cmd (AD12VRCPwrup_Cmd msg))
    (cl:cons ':AD24VMCPwrup_Cmd (AD24VMCPwrup_Cmd msg))
    (cl:cons ':ADPA12VPwrup_Cmd (ADPA12VPwrup_Cmd msg))
    (cl:cons ':ADPA24VPwrup_Cmd (ADPA24VPwrup_Cmd msg))
    (cl:cons ':AD12VSC1Pwrup_Cmd (AD12VSC1Pwrup_Cmd msg))
    (cl:cons ':AD12VSC2Pwrup_Cmd (AD12VSC2Pwrup_Cmd msg))
    (cl:cons ':AD12VSC3Pwrup_Cmd (AD12VSC3Pwrup_Cmd msg))
    (cl:cons ':AD12VSC4Pwrup_Cmd (AD12VSC4Pwrup_Cmd msg))
    (cl:cons ':AD12VSC5Pwrup_Cmd (AD12VSC5Pwrup_Cmd msg))
    (cl:cons ':AD12VSC6Pwrup_Cmd (AD12VSC6Pwrup_Cmd msg))
    (cl:cons ':AD12VMCPwrdownCnfm_Cmd (AD12VMCPwrdownCnfm_Cmd msg))
    (cl:cons ':AD12VRCPwrdownCnfm_Cmd (AD12VRCPwrdownCnfm_Cmd msg))
    (cl:cons ':AD24VMCPwrdownCnfm_Cmd (AD24VMCPwrdownCnfm_Cmd msg))
    (cl:cons ':ADPA12VPwrdownCnfm_Cmd (ADPA12VPwrdownCnfm_Cmd msg))
    (cl:cons ':ADPA24VPwrdwnCnfm_Cmd (ADPA24VPwrdwnCnfm_Cmd msg))
    (cl:cons ':PwrCmd_RollCnt (PwrCmd_RollCnt msg))
    (cl:cons ':PwrCmd_Checksum (PwrCmd_Checksum msg))
))
