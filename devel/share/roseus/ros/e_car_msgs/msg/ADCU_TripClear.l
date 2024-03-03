;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_TripClear)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_TripClear (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_TRIPCLEAR")
  (make-package "E_CAR_MSGS::ADCU_TRIPCLEAR"))

(in-package "ROS")
;;//! \htmlinclude ADCU_TripClear.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_TripClear
  :super ros::object
  :slots (_header _TotalTripClear_Cmd _RmtDrvTripClear_Cmd _AutoDrvTripClear_Cmd _CldDrvTripClear_Cmd _TripClear_RollCnt _TripClear_Checksum ))

(defmethod e_car_msgs::ADCU_TripClear
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:TotalTripClear_Cmd __TotalTripClear_Cmd) 0)
    ((:RmtDrvTripClear_Cmd __RmtDrvTripClear_Cmd) 0)
    ((:AutoDrvTripClear_Cmd __AutoDrvTripClear_Cmd) 0)
    ((:CldDrvTripClear_Cmd __CldDrvTripClear_Cmd) 0)
    ((:TripClear_RollCnt __TripClear_RollCnt) 0)
    ((:TripClear_Checksum __TripClear_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _TotalTripClear_Cmd (round __TotalTripClear_Cmd))
   (setq _RmtDrvTripClear_Cmd (round __RmtDrvTripClear_Cmd))
   (setq _AutoDrvTripClear_Cmd (round __AutoDrvTripClear_Cmd))
   (setq _CldDrvTripClear_Cmd (round __CldDrvTripClear_Cmd))
   (setq _TripClear_RollCnt (round __TripClear_RollCnt))
   (setq _TripClear_Checksum (round __TripClear_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:TotalTripClear_Cmd
   (&optional __TotalTripClear_Cmd)
   (if __TotalTripClear_Cmd (setq _TotalTripClear_Cmd __TotalTripClear_Cmd)) _TotalTripClear_Cmd)
  (:RmtDrvTripClear_Cmd
   (&optional __RmtDrvTripClear_Cmd)
   (if __RmtDrvTripClear_Cmd (setq _RmtDrvTripClear_Cmd __RmtDrvTripClear_Cmd)) _RmtDrvTripClear_Cmd)
  (:AutoDrvTripClear_Cmd
   (&optional __AutoDrvTripClear_Cmd)
   (if __AutoDrvTripClear_Cmd (setq _AutoDrvTripClear_Cmd __AutoDrvTripClear_Cmd)) _AutoDrvTripClear_Cmd)
  (:CldDrvTripClear_Cmd
   (&optional __CldDrvTripClear_Cmd)
   (if __CldDrvTripClear_Cmd (setq _CldDrvTripClear_Cmd __CldDrvTripClear_Cmd)) _CldDrvTripClear_Cmd)
  (:TripClear_RollCnt
   (&optional __TripClear_RollCnt)
   (if __TripClear_RollCnt (setq _TripClear_RollCnt __TripClear_RollCnt)) _TripClear_RollCnt)
  (:TripClear_Checksum
   (&optional __TripClear_Checksum)
   (if __TripClear_Checksum (setq _TripClear_Checksum __TripClear_Checksum)) _TripClear_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _TotalTripClear_Cmd
    1
    ;; int8 _RmtDrvTripClear_Cmd
    1
    ;; int8 _AutoDrvTripClear_Cmd
    1
    ;; int8 _CldDrvTripClear_Cmd
    1
    ;; int32 _TripClear_RollCnt
    4
    ;; int32 _TripClear_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _TotalTripClear_Cmd
       (write-byte _TotalTripClear_Cmd s)
     ;; int8 _RmtDrvTripClear_Cmd
       (write-byte _RmtDrvTripClear_Cmd s)
     ;; int8 _AutoDrvTripClear_Cmd
       (write-byte _AutoDrvTripClear_Cmd s)
     ;; int8 _CldDrvTripClear_Cmd
       (write-byte _CldDrvTripClear_Cmd s)
     ;; int32 _TripClear_RollCnt
       (write-long _TripClear_RollCnt s)
     ;; int32 _TripClear_Checksum
       (write-long _TripClear_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _TotalTripClear_Cmd
     (setq _TotalTripClear_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _TotalTripClear_Cmd 127) (setq _TotalTripClear_Cmd (- _TotalTripClear_Cmd 256)))
   ;; int8 _RmtDrvTripClear_Cmd
     (setq _RmtDrvTripClear_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _RmtDrvTripClear_Cmd 127) (setq _RmtDrvTripClear_Cmd (- _RmtDrvTripClear_Cmd 256)))
   ;; int8 _AutoDrvTripClear_Cmd
     (setq _AutoDrvTripClear_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AutoDrvTripClear_Cmd 127) (setq _AutoDrvTripClear_Cmd (- _AutoDrvTripClear_Cmd 256)))
   ;; int8 _CldDrvTripClear_Cmd
     (setq _CldDrvTripClear_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _CldDrvTripClear_Cmd 127) (setq _CldDrvTripClear_Cmd (- _CldDrvTripClear_Cmd 256)))
   ;; int32 _TripClear_RollCnt
     (setq _TripClear_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _TripClear_Checksum
     (setq _TripClear_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_TripClear :md5sum-) "1a36ba245d873b5273a133be9bf8ae01")
(setf (get e_car_msgs::ADCU_TripClear :datatype-) "e_car_msgs/ADCU_TripClear")
(setf (get e_car_msgs::ADCU_TripClear :definition-)
      "Header header

int8 TotalTripClear_Cmd

int8 RmtDrvTripClear_Cmd

int8 AutoDrvTripClear_Cmd

int8 CldDrvTripClear_Cmd

int32 TripClear_RollCnt

int32 TripClear_Checksum
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



(provide :e_car_msgs/ADCU_TripClear "1a36ba245d873b5273a133be9bf8ae01")


