;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_SteerCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_SteerCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_STEERCMD")
  (make-package "E_CAR_MSGS::ADCU_STEERCMD"))

(in-package "ROS")
;;//! \htmlinclude ADCU_SteerCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_SteerCmd
  :super ros::object
  :slots (_header _Str_Active _Str_CtrlMode _Str_TgtAngle _Str_TgtAngleSpd _StrCmd_RollCnt _StrCmd_Checksum ))

(defmethod e_car_msgs::ADCU_SteerCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Str_Active __Str_Active) 0)
    ((:Str_CtrlMode __Str_CtrlMode) 0)
    ((:Str_TgtAngle __Str_TgtAngle) 0.0)
    ((:Str_TgtAngleSpd __Str_TgtAngleSpd) 0.0)
    ((:StrCmd_RollCnt __StrCmd_RollCnt) 0)
    ((:StrCmd_Checksum __StrCmd_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Str_Active (round __Str_Active))
   (setq _Str_CtrlMode (round __Str_CtrlMode))
   (setq _Str_TgtAngle (float __Str_TgtAngle))
   (setq _Str_TgtAngleSpd (float __Str_TgtAngleSpd))
   (setq _StrCmd_RollCnt (round __StrCmd_RollCnt))
   (setq _StrCmd_Checksum (round __StrCmd_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Str_Active
   (&optional __Str_Active)
   (if __Str_Active (setq _Str_Active __Str_Active)) _Str_Active)
  (:Str_CtrlMode
   (&optional __Str_CtrlMode)
   (if __Str_CtrlMode (setq _Str_CtrlMode __Str_CtrlMode)) _Str_CtrlMode)
  (:Str_TgtAngle
   (&optional __Str_TgtAngle)
   (if __Str_TgtAngle (setq _Str_TgtAngle __Str_TgtAngle)) _Str_TgtAngle)
  (:Str_TgtAngleSpd
   (&optional __Str_TgtAngleSpd)
   (if __Str_TgtAngleSpd (setq _Str_TgtAngleSpd __Str_TgtAngleSpd)) _Str_TgtAngleSpd)
  (:StrCmd_RollCnt
   (&optional __StrCmd_RollCnt)
   (if __StrCmd_RollCnt (setq _StrCmd_RollCnt __StrCmd_RollCnt)) _StrCmd_RollCnt)
  (:StrCmd_Checksum
   (&optional __StrCmd_Checksum)
   (if __StrCmd_Checksum (setq _StrCmd_Checksum __StrCmd_Checksum)) _StrCmd_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _Str_Active
    1
    ;; int8 _Str_CtrlMode
    1
    ;; float32 _Str_TgtAngle
    4
    ;; float32 _Str_TgtAngleSpd
    4
    ;; int32 _StrCmd_RollCnt
    4
    ;; int32 _StrCmd_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _Str_Active
       (write-byte _Str_Active s)
     ;; int8 _Str_CtrlMode
       (write-byte _Str_CtrlMode s)
     ;; float32 _Str_TgtAngle
       (sys::poke _Str_TgtAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Str_TgtAngleSpd
       (sys::poke _Str_TgtAngleSpd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _StrCmd_RollCnt
       (write-long _StrCmd_RollCnt s)
     ;; int32 _StrCmd_Checksum
       (write-long _StrCmd_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _Str_Active
     (setq _Str_Active (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Str_Active 127) (setq _Str_Active (- _Str_Active 256)))
   ;; int8 _Str_CtrlMode
     (setq _Str_CtrlMode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Str_CtrlMode 127) (setq _Str_CtrlMode (- _Str_CtrlMode 256)))
   ;; float32 _Str_TgtAngle
     (setq _Str_TgtAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Str_TgtAngleSpd
     (setq _Str_TgtAngleSpd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _StrCmd_RollCnt
     (setq _StrCmd_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _StrCmd_Checksum
     (setq _StrCmd_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_SteerCmd :md5sum-) "c28ae07fba8b70da0e80a1960035feb5")
(setf (get e_car_msgs::ADCU_SteerCmd :datatype-) "e_car_msgs/ADCU_SteerCmd")
(setf (get e_car_msgs::ADCU_SteerCmd :definition-)
      "Header header

int8 Str_Active

int8 Str_CtrlMode

float32 Str_TgtAngle

float32 Str_TgtAngleSpd

int32 StrCmd_RollCnt

int32 StrCmd_Checksum
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



(provide :e_car_msgs/ADCU_SteerCmd "c28ae07fba8b70da0e80a1960035feb5")


