;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_CrashClrCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_CrashClrCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_CRASHCLRCMD")
  (make-package "E_CAR_MSGS::ADCU_CRASHCLRCMD"))

(in-package "ROS")
;;//! \htmlinclude ADCU_CrashClrCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_CrashClrCmd
  :super ros::object
  :slots (_header _CrashClearCmd_Valid _CrashClear_Cmd _EmgcSwhClearCmd_Valid _EmgcSwhClear_Cmd _CrashClr_RollCnt _CrashClr_Checksum ))

(defmethod e_car_msgs::ADCU_CrashClrCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:CrashClearCmd_Valid __CrashClearCmd_Valid) 0)
    ((:CrashClear_Cmd __CrashClear_Cmd) 0)
    ((:EmgcSwhClearCmd_Valid __EmgcSwhClearCmd_Valid) 0)
    ((:EmgcSwhClear_Cmd __EmgcSwhClear_Cmd) 0)
    ((:CrashClr_RollCnt __CrashClr_RollCnt) 0)
    ((:CrashClr_Checksum __CrashClr_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _CrashClearCmd_Valid (round __CrashClearCmd_Valid))
   (setq _CrashClear_Cmd (round __CrashClear_Cmd))
   (setq _EmgcSwhClearCmd_Valid (round __EmgcSwhClearCmd_Valid))
   (setq _EmgcSwhClear_Cmd (round __EmgcSwhClear_Cmd))
   (setq _CrashClr_RollCnt (round __CrashClr_RollCnt))
   (setq _CrashClr_Checksum (round __CrashClr_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:CrashClearCmd_Valid
   (&optional __CrashClearCmd_Valid)
   (if __CrashClearCmd_Valid (setq _CrashClearCmd_Valid __CrashClearCmd_Valid)) _CrashClearCmd_Valid)
  (:CrashClear_Cmd
   (&optional __CrashClear_Cmd)
   (if __CrashClear_Cmd (setq _CrashClear_Cmd __CrashClear_Cmd)) _CrashClear_Cmd)
  (:EmgcSwhClearCmd_Valid
   (&optional __EmgcSwhClearCmd_Valid)
   (if __EmgcSwhClearCmd_Valid (setq _EmgcSwhClearCmd_Valid __EmgcSwhClearCmd_Valid)) _EmgcSwhClearCmd_Valid)
  (:EmgcSwhClear_Cmd
   (&optional __EmgcSwhClear_Cmd)
   (if __EmgcSwhClear_Cmd (setq _EmgcSwhClear_Cmd __EmgcSwhClear_Cmd)) _EmgcSwhClear_Cmd)
  (:CrashClr_RollCnt
   (&optional __CrashClr_RollCnt)
   (if __CrashClr_RollCnt (setq _CrashClr_RollCnt __CrashClr_RollCnt)) _CrashClr_RollCnt)
  (:CrashClr_Checksum
   (&optional __CrashClr_Checksum)
   (if __CrashClr_Checksum (setq _CrashClr_Checksum __CrashClr_Checksum)) _CrashClr_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _CrashClearCmd_Valid
    1
    ;; int8 _CrashClear_Cmd
    1
    ;; int8 _EmgcSwhClearCmd_Valid
    1
    ;; int8 _EmgcSwhClear_Cmd
    1
    ;; int32 _CrashClr_RollCnt
    4
    ;; int32 _CrashClr_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _CrashClearCmd_Valid
       (write-byte _CrashClearCmd_Valid s)
     ;; int8 _CrashClear_Cmd
       (write-byte _CrashClear_Cmd s)
     ;; int8 _EmgcSwhClearCmd_Valid
       (write-byte _EmgcSwhClearCmd_Valid s)
     ;; int8 _EmgcSwhClear_Cmd
       (write-byte _EmgcSwhClear_Cmd s)
     ;; int32 _CrashClr_RollCnt
       (write-long _CrashClr_RollCnt s)
     ;; int32 _CrashClr_Checksum
       (write-long _CrashClr_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _CrashClearCmd_Valid
     (setq _CrashClearCmd_Valid (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _CrashClearCmd_Valid 127) (setq _CrashClearCmd_Valid (- _CrashClearCmd_Valid 256)))
   ;; int8 _CrashClear_Cmd
     (setq _CrashClear_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _CrashClear_Cmd 127) (setq _CrashClear_Cmd (- _CrashClear_Cmd 256)))
   ;; int8 _EmgcSwhClearCmd_Valid
     (setq _EmgcSwhClearCmd_Valid (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _EmgcSwhClearCmd_Valid 127) (setq _EmgcSwhClearCmd_Valid (- _EmgcSwhClearCmd_Valid 256)))
   ;; int8 _EmgcSwhClear_Cmd
     (setq _EmgcSwhClear_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _EmgcSwhClear_Cmd 127) (setq _EmgcSwhClear_Cmd (- _EmgcSwhClear_Cmd 256)))
   ;; int32 _CrashClr_RollCnt
     (setq _CrashClr_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _CrashClr_Checksum
     (setq _CrashClr_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_CrashClrCmd :md5sum-) "4a6390ae19310931cf5022dca0df4235")
(setf (get e_car_msgs::ADCU_CrashClrCmd :datatype-) "e_car_msgs/ADCU_CrashClrCmd")
(setf (get e_car_msgs::ADCU_CrashClrCmd :definition-)
      "Header header

int8 CrashClearCmd_Valid

int8 CrashClear_Cmd

int8 EmgcSwhClearCmd_Valid

int8 EmgcSwhClear_Cmd

int32 CrashClr_RollCnt

int32 CrashClr_Checksum

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



(provide :e_car_msgs/ADCU_CrashClrCmd "4a6390ae19310931cf5022dca0df4235")


