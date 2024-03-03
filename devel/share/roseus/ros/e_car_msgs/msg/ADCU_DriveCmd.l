;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_DriveCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_DriveCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_DRIVECMD")
  (make-package "E_CAR_MSGS::ADCU_DRIVECMD"))

(in-package "ROS")
;;//! \htmlinclude ADCU_DriveCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_DriveCmd
  :super ros::object
  :slots (_header _Drv_Active _Drv_CtrlMode _Drv_TgtGear _Drv_TgtPedpos _Drv_TgtVehSpd0 _DrvCmd0_RollCnt _DrvCmd0_Checksum ))

(defmethod e_car_msgs::ADCU_DriveCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Drv_Active __Drv_Active) 0)
    ((:Drv_CtrlMode __Drv_CtrlMode) 0)
    ((:Drv_TgtGear __Drv_TgtGear) 0)
    ((:Drv_TgtPedpos __Drv_TgtPedpos) 0)
    ((:Drv_TgtVehSpd0 __Drv_TgtVehSpd0) 0.0)
    ((:DrvCmd0_RollCnt __DrvCmd0_RollCnt) 0)
    ((:DrvCmd0_Checksum __DrvCmd0_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Drv_Active (round __Drv_Active))
   (setq _Drv_CtrlMode (round __Drv_CtrlMode))
   (setq _Drv_TgtGear (round __Drv_TgtGear))
   (setq _Drv_TgtPedpos (round __Drv_TgtPedpos))
   (setq _Drv_TgtVehSpd0 (float __Drv_TgtVehSpd0))
   (setq _DrvCmd0_RollCnt (round __DrvCmd0_RollCnt))
   (setq _DrvCmd0_Checksum (round __DrvCmd0_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Drv_Active
   (&optional __Drv_Active)
   (if __Drv_Active (setq _Drv_Active __Drv_Active)) _Drv_Active)
  (:Drv_CtrlMode
   (&optional __Drv_CtrlMode)
   (if __Drv_CtrlMode (setq _Drv_CtrlMode __Drv_CtrlMode)) _Drv_CtrlMode)
  (:Drv_TgtGear
   (&optional __Drv_TgtGear)
   (if __Drv_TgtGear (setq _Drv_TgtGear __Drv_TgtGear)) _Drv_TgtGear)
  (:Drv_TgtPedpos
   (&optional __Drv_TgtPedpos)
   (if __Drv_TgtPedpos (setq _Drv_TgtPedpos __Drv_TgtPedpos)) _Drv_TgtPedpos)
  (:Drv_TgtVehSpd0
   (&optional __Drv_TgtVehSpd0)
   (if __Drv_TgtVehSpd0 (setq _Drv_TgtVehSpd0 __Drv_TgtVehSpd0)) _Drv_TgtVehSpd0)
  (:DrvCmd0_RollCnt
   (&optional __DrvCmd0_RollCnt)
   (if __DrvCmd0_RollCnt (setq _DrvCmd0_RollCnt __DrvCmd0_RollCnt)) _DrvCmd0_RollCnt)
  (:DrvCmd0_Checksum
   (&optional __DrvCmd0_Checksum)
   (if __DrvCmd0_Checksum (setq _DrvCmd0_Checksum __DrvCmd0_Checksum)) _DrvCmd0_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _Drv_Active
    1
    ;; int8 _Drv_CtrlMode
    1
    ;; int8 _Drv_TgtGear
    1
    ;; int32 _Drv_TgtPedpos
    4
    ;; float32 _Drv_TgtVehSpd0
    4
    ;; int32 _DrvCmd0_RollCnt
    4
    ;; int32 _DrvCmd0_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _Drv_Active
       (write-byte _Drv_Active s)
     ;; int8 _Drv_CtrlMode
       (write-byte _Drv_CtrlMode s)
     ;; int8 _Drv_TgtGear
       (write-byte _Drv_TgtGear s)
     ;; int32 _Drv_TgtPedpos
       (write-long _Drv_TgtPedpos s)
     ;; float32 _Drv_TgtVehSpd0
       (sys::poke _Drv_TgtVehSpd0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _DrvCmd0_RollCnt
       (write-long _DrvCmd0_RollCnt s)
     ;; int32 _DrvCmd0_Checksum
       (write-long _DrvCmd0_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _Drv_Active
     (setq _Drv_Active (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Drv_Active 127) (setq _Drv_Active (- _Drv_Active 256)))
   ;; int8 _Drv_CtrlMode
     (setq _Drv_CtrlMode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Drv_CtrlMode 127) (setq _Drv_CtrlMode (- _Drv_CtrlMode 256)))
   ;; int8 _Drv_TgtGear
     (setq _Drv_TgtGear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Drv_TgtGear 127) (setq _Drv_TgtGear (- _Drv_TgtGear 256)))
   ;; int32 _Drv_TgtPedpos
     (setq _Drv_TgtPedpos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _Drv_TgtVehSpd0
     (setq _Drv_TgtVehSpd0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _DrvCmd0_RollCnt
     (setq _DrvCmd0_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _DrvCmd0_Checksum
     (setq _DrvCmd0_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_DriveCmd :md5sum-) "6768bd00ea2c2e5ce1f0b7314b783986")
(setf (get e_car_msgs::ADCU_DriveCmd :datatype-) "e_car_msgs/ADCU_DriveCmd")
(setf (get e_car_msgs::ADCU_DriveCmd :definition-)
      "Header header

int8 Drv_Active

int8 Drv_CtrlMode

int8 Drv_TgtGear

int32 Drv_TgtPedpos

float32 Drv_TgtVehSpd0

int32 DrvCmd0_RollCnt

int32 DrvCmd0_Checksum
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



(provide :e_car_msgs/ADCU_DriveCmd "6768bd00ea2c2e5ce1f0b7314b783986")


