;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_ParkCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_ParkCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_PARKCMD")
  (make-package "E_CAR_MSGS::ADCU_PARKCMD"))

(in-package "ROS")
;;//! \htmlinclude ADCU_ParkCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_ParkCmd
  :super ros::object
  :slots (_header _Prk_Active _Prk_Enable _PrkCmd_RollCnt _PrkCmd_Checksum ))

(defmethod e_car_msgs::ADCU_ParkCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Prk_Active __Prk_Active) 0)
    ((:Prk_Enable __Prk_Enable) 0)
    ((:PrkCmd_RollCnt __PrkCmd_RollCnt) 0)
    ((:PrkCmd_Checksum __PrkCmd_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Prk_Active (round __Prk_Active))
   (setq _Prk_Enable (round __Prk_Enable))
   (setq _PrkCmd_RollCnt (round __PrkCmd_RollCnt))
   (setq _PrkCmd_Checksum (round __PrkCmd_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Prk_Active
   (&optional __Prk_Active)
   (if __Prk_Active (setq _Prk_Active __Prk_Active)) _Prk_Active)
  (:Prk_Enable
   (&optional __Prk_Enable)
   (if __Prk_Enable (setq _Prk_Enable __Prk_Enable)) _Prk_Enable)
  (:PrkCmd_RollCnt
   (&optional __PrkCmd_RollCnt)
   (if __PrkCmd_RollCnt (setq _PrkCmd_RollCnt __PrkCmd_RollCnt)) _PrkCmd_RollCnt)
  (:PrkCmd_Checksum
   (&optional __PrkCmd_Checksum)
   (if __PrkCmd_Checksum (setq _PrkCmd_Checksum __PrkCmd_Checksum)) _PrkCmd_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _Prk_Active
    1
    ;; int8 _Prk_Enable
    1
    ;; int32 _PrkCmd_RollCnt
    4
    ;; int32 _PrkCmd_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _Prk_Active
       (write-byte _Prk_Active s)
     ;; int8 _Prk_Enable
       (write-byte _Prk_Enable s)
     ;; int32 _PrkCmd_RollCnt
       (write-long _PrkCmd_RollCnt s)
     ;; int32 _PrkCmd_Checksum
       (write-long _PrkCmd_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _Prk_Active
     (setq _Prk_Active (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Prk_Active 127) (setq _Prk_Active (- _Prk_Active 256)))
   ;; int8 _Prk_Enable
     (setq _Prk_Enable (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Prk_Enable 127) (setq _Prk_Enable (- _Prk_Enable 256)))
   ;; int32 _PrkCmd_RollCnt
     (setq _PrkCmd_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _PrkCmd_Checksum
     (setq _PrkCmd_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_ParkCmd :md5sum-) "cd00658d46e5ca4d0dd437a5ea884545")
(setf (get e_car_msgs::ADCU_ParkCmd :datatype-) "e_car_msgs/ADCU_ParkCmd")
(setf (get e_car_msgs::ADCU_ParkCmd :definition-)
      "Header header

int8 Prk_Active

int8 Prk_Enable

int32 PrkCmd_RollCnt

int32 PrkCmd_Checksum
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



(provide :e_car_msgs/ADCU_ParkCmd "cd00658d46e5ca4d0dd437a5ea884545")


