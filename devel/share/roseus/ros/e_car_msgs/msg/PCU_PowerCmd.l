;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::PCU_PowerCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'PCU_PowerCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::PCU_POWERCMD")
  (make-package "E_CAR_MSGS::PCU_POWERCMD"))

(in-package "ROS")
;;//! \htmlinclude PCU_PowerCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::PCU_PowerCmd
  :super ros::object
  :slots (_header _ADChasPwrup_Cmd _AD12VMCPwrup_Cmd _AD12VSC1Pwrup_Cmd _AD12VSC2Pwrup_Cmd _AD12VSC3Pwrup_Cmd _AD12VSC4Pwrup_Cmd _AD12VSC5Pwrup_Cmd _AD12VSC6Pwrup_Cmd _PwrCmd_RollCnt _PwrCmd_Checksum ))

(defmethod e_car_msgs::PCU_PowerCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ADChasPwrup_Cmd __ADChasPwrup_Cmd) 0)
    ((:AD12VMCPwrup_Cmd __AD12VMCPwrup_Cmd) 0)
    ((:AD12VSC1Pwrup_Cmd __AD12VSC1Pwrup_Cmd) 0)
    ((:AD12VSC2Pwrup_Cmd __AD12VSC2Pwrup_Cmd) 0)
    ((:AD12VSC3Pwrup_Cmd __AD12VSC3Pwrup_Cmd) 0)
    ((:AD12VSC4Pwrup_Cmd __AD12VSC4Pwrup_Cmd) 0)
    ((:AD12VSC5Pwrup_Cmd __AD12VSC5Pwrup_Cmd) 0)
    ((:AD12VSC6Pwrup_Cmd __AD12VSC6Pwrup_Cmd) 0)
    ((:PwrCmd_RollCnt __PwrCmd_RollCnt) 0)
    ((:PwrCmd_Checksum __PwrCmd_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ADChasPwrup_Cmd (round __ADChasPwrup_Cmd))
   (setq _AD12VMCPwrup_Cmd (round __AD12VMCPwrup_Cmd))
   (setq _AD12VSC1Pwrup_Cmd (round __AD12VSC1Pwrup_Cmd))
   (setq _AD12VSC2Pwrup_Cmd (round __AD12VSC2Pwrup_Cmd))
   (setq _AD12VSC3Pwrup_Cmd (round __AD12VSC3Pwrup_Cmd))
   (setq _AD12VSC4Pwrup_Cmd (round __AD12VSC4Pwrup_Cmd))
   (setq _AD12VSC5Pwrup_Cmd (round __AD12VSC5Pwrup_Cmd))
   (setq _AD12VSC6Pwrup_Cmd (round __AD12VSC6Pwrup_Cmd))
   (setq _PwrCmd_RollCnt (round __PwrCmd_RollCnt))
   (setq _PwrCmd_Checksum (round __PwrCmd_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ADChasPwrup_Cmd
   (&optional __ADChasPwrup_Cmd)
   (if __ADChasPwrup_Cmd (setq _ADChasPwrup_Cmd __ADChasPwrup_Cmd)) _ADChasPwrup_Cmd)
  (:AD12VMCPwrup_Cmd
   (&optional __AD12VMCPwrup_Cmd)
   (if __AD12VMCPwrup_Cmd (setq _AD12VMCPwrup_Cmd __AD12VMCPwrup_Cmd)) _AD12VMCPwrup_Cmd)
  (:AD12VSC1Pwrup_Cmd
   (&optional __AD12VSC1Pwrup_Cmd)
   (if __AD12VSC1Pwrup_Cmd (setq _AD12VSC1Pwrup_Cmd __AD12VSC1Pwrup_Cmd)) _AD12VSC1Pwrup_Cmd)
  (:AD12VSC2Pwrup_Cmd
   (&optional __AD12VSC2Pwrup_Cmd)
   (if __AD12VSC2Pwrup_Cmd (setq _AD12VSC2Pwrup_Cmd __AD12VSC2Pwrup_Cmd)) _AD12VSC2Pwrup_Cmd)
  (:AD12VSC3Pwrup_Cmd
   (&optional __AD12VSC3Pwrup_Cmd)
   (if __AD12VSC3Pwrup_Cmd (setq _AD12VSC3Pwrup_Cmd __AD12VSC3Pwrup_Cmd)) _AD12VSC3Pwrup_Cmd)
  (:AD12VSC4Pwrup_Cmd
   (&optional __AD12VSC4Pwrup_Cmd)
   (if __AD12VSC4Pwrup_Cmd (setq _AD12VSC4Pwrup_Cmd __AD12VSC4Pwrup_Cmd)) _AD12VSC4Pwrup_Cmd)
  (:AD12VSC5Pwrup_Cmd
   (&optional __AD12VSC5Pwrup_Cmd)
   (if __AD12VSC5Pwrup_Cmd (setq _AD12VSC5Pwrup_Cmd __AD12VSC5Pwrup_Cmd)) _AD12VSC5Pwrup_Cmd)
  (:AD12VSC6Pwrup_Cmd
   (&optional __AD12VSC6Pwrup_Cmd)
   (if __AD12VSC6Pwrup_Cmd (setq _AD12VSC6Pwrup_Cmd __AD12VSC6Pwrup_Cmd)) _AD12VSC6Pwrup_Cmd)
  (:PwrCmd_RollCnt
   (&optional __PwrCmd_RollCnt)
   (if __PwrCmd_RollCnt (setq _PwrCmd_RollCnt __PwrCmd_RollCnt)) _PwrCmd_RollCnt)
  (:PwrCmd_Checksum
   (&optional __PwrCmd_Checksum)
   (if __PwrCmd_Checksum (setq _PwrCmd_Checksum __PwrCmd_Checksum)) _PwrCmd_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _ADChasPwrup_Cmd
    1
    ;; int8 _AD12VMCPwrup_Cmd
    1
    ;; int8 _AD12VSC1Pwrup_Cmd
    1
    ;; int8 _AD12VSC2Pwrup_Cmd
    1
    ;; int8 _AD12VSC3Pwrup_Cmd
    1
    ;; int8 _AD12VSC4Pwrup_Cmd
    1
    ;; int8 _AD12VSC5Pwrup_Cmd
    1
    ;; int8 _AD12VSC6Pwrup_Cmd
    1
    ;; int32 _PwrCmd_RollCnt
    4
    ;; int32 _PwrCmd_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _ADChasPwrup_Cmd
       (write-byte _ADChasPwrup_Cmd s)
     ;; int8 _AD12VMCPwrup_Cmd
       (write-byte _AD12VMCPwrup_Cmd s)
     ;; int8 _AD12VSC1Pwrup_Cmd
       (write-byte _AD12VSC1Pwrup_Cmd s)
     ;; int8 _AD12VSC2Pwrup_Cmd
       (write-byte _AD12VSC2Pwrup_Cmd s)
     ;; int8 _AD12VSC3Pwrup_Cmd
       (write-byte _AD12VSC3Pwrup_Cmd s)
     ;; int8 _AD12VSC4Pwrup_Cmd
       (write-byte _AD12VSC4Pwrup_Cmd s)
     ;; int8 _AD12VSC5Pwrup_Cmd
       (write-byte _AD12VSC5Pwrup_Cmd s)
     ;; int8 _AD12VSC6Pwrup_Cmd
       (write-byte _AD12VSC6Pwrup_Cmd s)
     ;; int32 _PwrCmd_RollCnt
       (write-long _PwrCmd_RollCnt s)
     ;; int32 _PwrCmd_Checksum
       (write-long _PwrCmd_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _ADChasPwrup_Cmd
     (setq _ADChasPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ADChasPwrup_Cmd 127) (setq _ADChasPwrup_Cmd (- _ADChasPwrup_Cmd 256)))
   ;; int8 _AD12VMCPwrup_Cmd
     (setq _AD12VMCPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD12VMCPwrup_Cmd 127) (setq _AD12VMCPwrup_Cmd (- _AD12VMCPwrup_Cmd 256)))
   ;; int8 _AD12VSC1Pwrup_Cmd
     (setq _AD12VSC1Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD12VSC1Pwrup_Cmd 127) (setq _AD12VSC1Pwrup_Cmd (- _AD12VSC1Pwrup_Cmd 256)))
   ;; int8 _AD12VSC2Pwrup_Cmd
     (setq _AD12VSC2Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD12VSC2Pwrup_Cmd 127) (setq _AD12VSC2Pwrup_Cmd (- _AD12VSC2Pwrup_Cmd 256)))
   ;; int8 _AD12VSC3Pwrup_Cmd
     (setq _AD12VSC3Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD12VSC3Pwrup_Cmd 127) (setq _AD12VSC3Pwrup_Cmd (- _AD12VSC3Pwrup_Cmd 256)))
   ;; int8 _AD12VSC4Pwrup_Cmd
     (setq _AD12VSC4Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD12VSC4Pwrup_Cmd 127) (setq _AD12VSC4Pwrup_Cmd (- _AD12VSC4Pwrup_Cmd 256)))
   ;; int8 _AD12VSC5Pwrup_Cmd
     (setq _AD12VSC5Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD12VSC5Pwrup_Cmd 127) (setq _AD12VSC5Pwrup_Cmd (- _AD12VSC5Pwrup_Cmd 256)))
   ;; int8 _AD12VSC6Pwrup_Cmd
     (setq _AD12VSC6Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD12VSC6Pwrup_Cmd 127) (setq _AD12VSC6Pwrup_Cmd (- _AD12VSC6Pwrup_Cmd 256)))
   ;; int32 _PwrCmd_RollCnt
     (setq _PwrCmd_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _PwrCmd_Checksum
     (setq _PwrCmd_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::PCU_PowerCmd :md5sum-) "e20658d4566685bbdae55f7fc1134d24")
(setf (get e_car_msgs::PCU_PowerCmd :datatype-) "e_car_msgs/PCU_PowerCmd")
(setf (get e_car_msgs::PCU_PowerCmd :definition-)
      "Header header

int8 ADChasPwrup_Cmd

int8 AD12VMCPwrup_Cmd

int8 AD12VSC1Pwrup_Cmd

int8 AD12VSC2Pwrup_Cmd

int8 AD12VSC3Pwrup_Cmd

int8 AD12VSC4Pwrup_Cmd

int8 AD12VSC5Pwrup_Cmd

int8 AD12VSC6Pwrup_Cmd

int32 PwrCmd_RollCnt

int32 PwrCmd_Checksum
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



(provide :e_car_msgs/PCU_PowerCmd "e20658d4566685bbdae55f7fc1134d24")


