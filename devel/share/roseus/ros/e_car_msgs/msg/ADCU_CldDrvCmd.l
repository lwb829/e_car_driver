;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_CldDrvCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_CldDrvCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_CLDDRVCMD")
  (make-package "E_CAR_MSGS::ADCU_CLDDRVCMD"))

(in-package "ROS")
;;//! \htmlinclude ADCU_CldDrvCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_CldDrvCmd
  :super ros::object
  :slots (_header _Cld_CtrlActive _Cld_PrkEnable _Cld_DriveMode _Cld_TgtGear _Cld_TgtThrotVal _Cld_TgtBrkVal _Cld_TgtStrAngle _CldDrvCmd_RollCnt _CldDrvCmd_Checksum ))

(defmethod e_car_msgs::ADCU_CldDrvCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Cld_CtrlActive __Cld_CtrlActive) 0)
    ((:Cld_PrkEnable __Cld_PrkEnable) 0)
    ((:Cld_DriveMode __Cld_DriveMode) 0)
    ((:Cld_TgtGear __Cld_TgtGear) 0)
    ((:Cld_TgtThrotVal __Cld_TgtThrotVal) 0.0)
    ((:Cld_TgtBrkVal __Cld_TgtBrkVal) 0.0)
    ((:Cld_TgtStrAngle __Cld_TgtStrAngle) 0.0)
    ((:CldDrvCmd_RollCnt __CldDrvCmd_RollCnt) 0)
    ((:CldDrvCmd_Checksum __CldDrvCmd_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Cld_CtrlActive (round __Cld_CtrlActive))
   (setq _Cld_PrkEnable (round __Cld_PrkEnable))
   (setq _Cld_DriveMode (round __Cld_DriveMode))
   (setq _Cld_TgtGear (round __Cld_TgtGear))
   (setq _Cld_TgtThrotVal (float __Cld_TgtThrotVal))
   (setq _Cld_TgtBrkVal (float __Cld_TgtBrkVal))
   (setq _Cld_TgtStrAngle (float __Cld_TgtStrAngle))
   (setq _CldDrvCmd_RollCnt (round __CldDrvCmd_RollCnt))
   (setq _CldDrvCmd_Checksum (round __CldDrvCmd_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Cld_CtrlActive
   (&optional __Cld_CtrlActive)
   (if __Cld_CtrlActive (setq _Cld_CtrlActive __Cld_CtrlActive)) _Cld_CtrlActive)
  (:Cld_PrkEnable
   (&optional __Cld_PrkEnable)
   (if __Cld_PrkEnable (setq _Cld_PrkEnable __Cld_PrkEnable)) _Cld_PrkEnable)
  (:Cld_DriveMode
   (&optional __Cld_DriveMode)
   (if __Cld_DriveMode (setq _Cld_DriveMode __Cld_DriveMode)) _Cld_DriveMode)
  (:Cld_TgtGear
   (&optional __Cld_TgtGear)
   (if __Cld_TgtGear (setq _Cld_TgtGear __Cld_TgtGear)) _Cld_TgtGear)
  (:Cld_TgtThrotVal
   (&optional __Cld_TgtThrotVal)
   (if __Cld_TgtThrotVal (setq _Cld_TgtThrotVal __Cld_TgtThrotVal)) _Cld_TgtThrotVal)
  (:Cld_TgtBrkVal
   (&optional __Cld_TgtBrkVal)
   (if __Cld_TgtBrkVal (setq _Cld_TgtBrkVal __Cld_TgtBrkVal)) _Cld_TgtBrkVal)
  (:Cld_TgtStrAngle
   (&optional __Cld_TgtStrAngle)
   (if __Cld_TgtStrAngle (setq _Cld_TgtStrAngle __Cld_TgtStrAngle)) _Cld_TgtStrAngle)
  (:CldDrvCmd_RollCnt
   (&optional __CldDrvCmd_RollCnt)
   (if __CldDrvCmd_RollCnt (setq _CldDrvCmd_RollCnt __CldDrvCmd_RollCnt)) _CldDrvCmd_RollCnt)
  (:CldDrvCmd_Checksum
   (&optional __CldDrvCmd_Checksum)
   (if __CldDrvCmd_Checksum (setq _CldDrvCmd_Checksum __CldDrvCmd_Checksum)) _CldDrvCmd_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _Cld_CtrlActive
    1
    ;; int8 _Cld_PrkEnable
    1
    ;; int8 _Cld_DriveMode
    1
    ;; int32 _Cld_TgtGear
    4
    ;; float32 _Cld_TgtThrotVal
    4
    ;; float32 _Cld_TgtBrkVal
    4
    ;; float32 _Cld_TgtStrAngle
    4
    ;; int32 _CldDrvCmd_RollCnt
    4
    ;; int32 _CldDrvCmd_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _Cld_CtrlActive
       (write-byte _Cld_CtrlActive s)
     ;; int8 _Cld_PrkEnable
       (write-byte _Cld_PrkEnable s)
     ;; int8 _Cld_DriveMode
       (write-byte _Cld_DriveMode s)
     ;; int32 _Cld_TgtGear
       (write-long _Cld_TgtGear s)
     ;; float32 _Cld_TgtThrotVal
       (sys::poke _Cld_TgtThrotVal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Cld_TgtBrkVal
       (sys::poke _Cld_TgtBrkVal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Cld_TgtStrAngle
       (sys::poke _Cld_TgtStrAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _CldDrvCmd_RollCnt
       (write-long _CldDrvCmd_RollCnt s)
     ;; int32 _CldDrvCmd_Checksum
       (write-long _CldDrvCmd_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _Cld_CtrlActive
     (setq _Cld_CtrlActive (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_CtrlActive 127) (setq _Cld_CtrlActive (- _Cld_CtrlActive 256)))
   ;; int8 _Cld_PrkEnable
     (setq _Cld_PrkEnable (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_PrkEnable 127) (setq _Cld_PrkEnable (- _Cld_PrkEnable 256)))
   ;; int8 _Cld_DriveMode
     (setq _Cld_DriveMode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_DriveMode 127) (setq _Cld_DriveMode (- _Cld_DriveMode 256)))
   ;; int32 _Cld_TgtGear
     (setq _Cld_TgtGear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _Cld_TgtThrotVal
     (setq _Cld_TgtThrotVal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Cld_TgtBrkVal
     (setq _Cld_TgtBrkVal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Cld_TgtStrAngle
     (setq _Cld_TgtStrAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _CldDrvCmd_RollCnt
     (setq _CldDrvCmd_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _CldDrvCmd_Checksum
     (setq _CldDrvCmd_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_CldDrvCmd :md5sum-) "03ef622a29189d40a66afa9e28b57a09")
(setf (get e_car_msgs::ADCU_CldDrvCmd :datatype-) "e_car_msgs/ADCU_CldDrvCmd")
(setf (get e_car_msgs::ADCU_CldDrvCmd :definition-)
      "Header header

int8 Cld_CtrlActive

int8 Cld_PrkEnable

int8 Cld_DriveMode

int32 Cld_TgtGear

float32 Cld_TgtThrotVal

float32 Cld_TgtBrkVal

float32 Cld_TgtStrAngle

int32 CldDrvCmd_RollCnt

int32 CldDrvCmd_Checksum
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :e_car_msgs/ADCU_CldDrvCmd "03ef622a29189d40a66afa9e28b57a09")


