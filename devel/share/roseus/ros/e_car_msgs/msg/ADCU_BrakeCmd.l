;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_BrakeCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_BrakeCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_BRAKECMD")
  (make-package "E_CAR_MSGS::ADCU_BRAKECMD"))

(in-package "ROS")
;;//! \htmlinclude ADCU_BrakeCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_BrakeCmd
  :super ros::object
  :slots (_header _Brk_Active _Brk_CtrlMode _Brk_TgtPedpos _Brk_TgtPress _Brk_TgtAccSpd _BrkCmd_RollCnt _BrkCmd_Checksum ))

(defmethod e_car_msgs::ADCU_BrakeCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Brk_Active __Brk_Active) 0)
    ((:Brk_CtrlMode __Brk_CtrlMode) 0)
    ((:Brk_TgtPedpos __Brk_TgtPedpos) 0.0)
    ((:Brk_TgtPress __Brk_TgtPress) 0.0)
    ((:Brk_TgtAccSpd __Brk_TgtAccSpd) 0.0)
    ((:BrkCmd_RollCnt __BrkCmd_RollCnt) 0)
    ((:BrkCmd_Checksum __BrkCmd_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Brk_Active (round __Brk_Active))
   (setq _Brk_CtrlMode (round __Brk_CtrlMode))
   (setq _Brk_TgtPedpos (float __Brk_TgtPedpos))
   (setq _Brk_TgtPress (float __Brk_TgtPress))
   (setq _Brk_TgtAccSpd (float __Brk_TgtAccSpd))
   (setq _BrkCmd_RollCnt (round __BrkCmd_RollCnt))
   (setq _BrkCmd_Checksum (round __BrkCmd_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Brk_Active
   (&optional __Brk_Active)
   (if __Brk_Active (setq _Brk_Active __Brk_Active)) _Brk_Active)
  (:Brk_CtrlMode
   (&optional __Brk_CtrlMode)
   (if __Brk_CtrlMode (setq _Brk_CtrlMode __Brk_CtrlMode)) _Brk_CtrlMode)
  (:Brk_TgtPedpos
   (&optional __Brk_TgtPedpos)
   (if __Brk_TgtPedpos (setq _Brk_TgtPedpos __Brk_TgtPedpos)) _Brk_TgtPedpos)
  (:Brk_TgtPress
   (&optional __Brk_TgtPress)
   (if __Brk_TgtPress (setq _Brk_TgtPress __Brk_TgtPress)) _Brk_TgtPress)
  (:Brk_TgtAccSpd
   (&optional __Brk_TgtAccSpd)
   (if __Brk_TgtAccSpd (setq _Brk_TgtAccSpd __Brk_TgtAccSpd)) _Brk_TgtAccSpd)
  (:BrkCmd_RollCnt
   (&optional __BrkCmd_RollCnt)
   (if __BrkCmd_RollCnt (setq _BrkCmd_RollCnt __BrkCmd_RollCnt)) _BrkCmd_RollCnt)
  (:BrkCmd_Checksum
   (&optional __BrkCmd_Checksum)
   (if __BrkCmd_Checksum (setq _BrkCmd_Checksum __BrkCmd_Checksum)) _BrkCmd_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _Brk_Active
    1
    ;; int8 _Brk_CtrlMode
    1
    ;; float32 _Brk_TgtPedpos
    4
    ;; float32 _Brk_TgtPress
    4
    ;; float32 _Brk_TgtAccSpd
    4
    ;; int32 _BrkCmd_RollCnt
    4
    ;; int32 _BrkCmd_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _Brk_Active
       (write-byte _Brk_Active s)
     ;; int8 _Brk_CtrlMode
       (write-byte _Brk_CtrlMode s)
     ;; float32 _Brk_TgtPedpos
       (sys::poke _Brk_TgtPedpos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Brk_TgtPress
       (sys::poke _Brk_TgtPress (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Brk_TgtAccSpd
       (sys::poke _Brk_TgtAccSpd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _BrkCmd_RollCnt
       (write-long _BrkCmd_RollCnt s)
     ;; int32 _BrkCmd_Checksum
       (write-long _BrkCmd_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _Brk_Active
     (setq _Brk_Active (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Brk_Active 127) (setq _Brk_Active (- _Brk_Active 256)))
   ;; int8 _Brk_CtrlMode
     (setq _Brk_CtrlMode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Brk_CtrlMode 127) (setq _Brk_CtrlMode (- _Brk_CtrlMode 256)))
   ;; float32 _Brk_TgtPedpos
     (setq _Brk_TgtPedpos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Brk_TgtPress
     (setq _Brk_TgtPress (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Brk_TgtAccSpd
     (setq _Brk_TgtAccSpd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _BrkCmd_RollCnt
     (setq _BrkCmd_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _BrkCmd_Checksum
     (setq _BrkCmd_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_BrakeCmd :md5sum-) "b3c2117e1232bca759470cc478a35c8d")
(setf (get e_car_msgs::ADCU_BrakeCmd :datatype-) "e_car_msgs/ADCU_BrakeCmd")
(setf (get e_car_msgs::ADCU_BrakeCmd :definition-)
      "Header header

int8 Brk_Active

int8 Brk_CtrlMode

float32 Brk_TgtPedpos

float32 Brk_TgtPress

float32 Brk_TgtAccSpd

int32 BrkCmd_RollCnt

int32 BrkCmd_Checksum
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



(provide :e_car_msgs/ADCU_BrakeCmd "b3c2117e1232bca759470cc478a35c8d")


