;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_PowerCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_PowerCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_POWERCMD")
  (make-package "E_CAR_MSGS::ADCU_POWERCMD"))

(in-package "ROS")
;;//! \htmlinclude ADCU_PowerCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_PowerCmd
  :super ros::object
  :slots (_header _ADVehPwrup_Cmd _ADChasPwrup_Cmd _AD12VMCPwrup_Cmd _AD12VRCPwrup_Cmd _AD24VMCPwrup_Cmd _ADPA12VPwrup_Cmd _ADPA24VPwrup_Cmd _AD12VSC1Pwrup_Cmd _AD12VSC2Pwrup_Cmd _AD12VSC3Pwrup_Cmd _AD12VSC4Pwrup_Cmd _AD12VSC5Pwrup_Cmd _AD12VSC6Pwrup_Cmd _AD12VMCPwrdownCnfm_Cmd _AD12VRCPwrdownCnfm_Cmd _AD24VMCPwrdownCnfm_Cmd _ADPA12VPwrdownCnfm_Cmd _ADPA24VPwrdwnCnfm_Cmd _PwrCmd_RollCnt _PwrCmd_Checksum ))

(defmethod e_car_msgs::ADCU_PowerCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ADVehPwrup_Cmd __ADVehPwrup_Cmd) 0)
    ((:ADChasPwrup_Cmd __ADChasPwrup_Cmd) 0)
    ((:AD12VMCPwrup_Cmd __AD12VMCPwrup_Cmd) 0)
    ((:AD12VRCPwrup_Cmd __AD12VRCPwrup_Cmd) 0)
    ((:AD24VMCPwrup_Cmd __AD24VMCPwrup_Cmd) 0)
    ((:ADPA12VPwrup_Cmd __ADPA12VPwrup_Cmd) 0)
    ((:ADPA24VPwrup_Cmd __ADPA24VPwrup_Cmd) 0)
    ((:AD12VSC1Pwrup_Cmd __AD12VSC1Pwrup_Cmd) 0)
    ((:AD12VSC2Pwrup_Cmd __AD12VSC2Pwrup_Cmd) 0)
    ((:AD12VSC3Pwrup_Cmd __AD12VSC3Pwrup_Cmd) 0)
    ((:AD12VSC4Pwrup_Cmd __AD12VSC4Pwrup_Cmd) 0)
    ((:AD12VSC5Pwrup_Cmd __AD12VSC5Pwrup_Cmd) 0)
    ((:AD12VSC6Pwrup_Cmd __AD12VSC6Pwrup_Cmd) 0)
    ((:AD12VMCPwrdownCnfm_Cmd __AD12VMCPwrdownCnfm_Cmd) 0)
    ((:AD12VRCPwrdownCnfm_Cmd __AD12VRCPwrdownCnfm_Cmd) 0)
    ((:AD24VMCPwrdownCnfm_Cmd __AD24VMCPwrdownCnfm_Cmd) 0)
    ((:ADPA12VPwrdownCnfm_Cmd __ADPA12VPwrdownCnfm_Cmd) 0)
    ((:ADPA24VPwrdwnCnfm_Cmd __ADPA24VPwrdwnCnfm_Cmd) 0)
    ((:PwrCmd_RollCnt __PwrCmd_RollCnt) 0)
    ((:PwrCmd_Checksum __PwrCmd_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ADVehPwrup_Cmd (round __ADVehPwrup_Cmd))
   (setq _ADChasPwrup_Cmd (round __ADChasPwrup_Cmd))
   (setq _AD12VMCPwrup_Cmd (round __AD12VMCPwrup_Cmd))
   (setq _AD12VRCPwrup_Cmd (round __AD12VRCPwrup_Cmd))
   (setq _AD24VMCPwrup_Cmd (round __AD24VMCPwrup_Cmd))
   (setq _ADPA12VPwrup_Cmd (round __ADPA12VPwrup_Cmd))
   (setq _ADPA24VPwrup_Cmd (round __ADPA24VPwrup_Cmd))
   (setq _AD12VSC1Pwrup_Cmd (round __AD12VSC1Pwrup_Cmd))
   (setq _AD12VSC2Pwrup_Cmd (round __AD12VSC2Pwrup_Cmd))
   (setq _AD12VSC3Pwrup_Cmd (round __AD12VSC3Pwrup_Cmd))
   (setq _AD12VSC4Pwrup_Cmd (round __AD12VSC4Pwrup_Cmd))
   (setq _AD12VSC5Pwrup_Cmd (round __AD12VSC5Pwrup_Cmd))
   (setq _AD12VSC6Pwrup_Cmd (round __AD12VSC6Pwrup_Cmd))
   (setq _AD12VMCPwrdownCnfm_Cmd (round __AD12VMCPwrdownCnfm_Cmd))
   (setq _AD12VRCPwrdownCnfm_Cmd (round __AD12VRCPwrdownCnfm_Cmd))
   (setq _AD24VMCPwrdownCnfm_Cmd (round __AD24VMCPwrdownCnfm_Cmd))
   (setq _ADPA12VPwrdownCnfm_Cmd (round __ADPA12VPwrdownCnfm_Cmd))
   (setq _ADPA24VPwrdwnCnfm_Cmd (round __ADPA24VPwrdwnCnfm_Cmd))
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
  (:ADVehPwrup_Cmd
   (&optional __ADVehPwrup_Cmd)
   (if __ADVehPwrup_Cmd (setq _ADVehPwrup_Cmd __ADVehPwrup_Cmd)) _ADVehPwrup_Cmd)
  (:ADChasPwrup_Cmd
   (&optional __ADChasPwrup_Cmd)
   (if __ADChasPwrup_Cmd (setq _ADChasPwrup_Cmd __ADChasPwrup_Cmd)) _ADChasPwrup_Cmd)
  (:AD12VMCPwrup_Cmd
   (&optional __AD12VMCPwrup_Cmd)
   (if __AD12VMCPwrup_Cmd (setq _AD12VMCPwrup_Cmd __AD12VMCPwrup_Cmd)) _AD12VMCPwrup_Cmd)
  (:AD12VRCPwrup_Cmd
   (&optional __AD12VRCPwrup_Cmd)
   (if __AD12VRCPwrup_Cmd (setq _AD12VRCPwrup_Cmd __AD12VRCPwrup_Cmd)) _AD12VRCPwrup_Cmd)
  (:AD24VMCPwrup_Cmd
   (&optional __AD24VMCPwrup_Cmd)
   (if __AD24VMCPwrup_Cmd (setq _AD24VMCPwrup_Cmd __AD24VMCPwrup_Cmd)) _AD24VMCPwrup_Cmd)
  (:ADPA12VPwrup_Cmd
   (&optional __ADPA12VPwrup_Cmd)
   (if __ADPA12VPwrup_Cmd (setq _ADPA12VPwrup_Cmd __ADPA12VPwrup_Cmd)) _ADPA12VPwrup_Cmd)
  (:ADPA24VPwrup_Cmd
   (&optional __ADPA24VPwrup_Cmd)
   (if __ADPA24VPwrup_Cmd (setq _ADPA24VPwrup_Cmd __ADPA24VPwrup_Cmd)) _ADPA24VPwrup_Cmd)
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
  (:AD12VMCPwrdownCnfm_Cmd
   (&optional __AD12VMCPwrdownCnfm_Cmd)
   (if __AD12VMCPwrdownCnfm_Cmd (setq _AD12VMCPwrdownCnfm_Cmd __AD12VMCPwrdownCnfm_Cmd)) _AD12VMCPwrdownCnfm_Cmd)
  (:AD12VRCPwrdownCnfm_Cmd
   (&optional __AD12VRCPwrdownCnfm_Cmd)
   (if __AD12VRCPwrdownCnfm_Cmd (setq _AD12VRCPwrdownCnfm_Cmd __AD12VRCPwrdownCnfm_Cmd)) _AD12VRCPwrdownCnfm_Cmd)
  (:AD24VMCPwrdownCnfm_Cmd
   (&optional __AD24VMCPwrdownCnfm_Cmd)
   (if __AD24VMCPwrdownCnfm_Cmd (setq _AD24VMCPwrdownCnfm_Cmd __AD24VMCPwrdownCnfm_Cmd)) _AD24VMCPwrdownCnfm_Cmd)
  (:ADPA12VPwrdownCnfm_Cmd
   (&optional __ADPA12VPwrdownCnfm_Cmd)
   (if __ADPA12VPwrdownCnfm_Cmd (setq _ADPA12VPwrdownCnfm_Cmd __ADPA12VPwrdownCnfm_Cmd)) _ADPA12VPwrdownCnfm_Cmd)
  (:ADPA24VPwrdwnCnfm_Cmd
   (&optional __ADPA24VPwrdwnCnfm_Cmd)
   (if __ADPA24VPwrdwnCnfm_Cmd (setq _ADPA24VPwrdwnCnfm_Cmd __ADPA24VPwrdwnCnfm_Cmd)) _ADPA24VPwrdwnCnfm_Cmd)
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
    ;; int8 _ADVehPwrup_Cmd
    1
    ;; int8 _ADChasPwrup_Cmd
    1
    ;; int8 _AD12VMCPwrup_Cmd
    1
    ;; int8 _AD12VRCPwrup_Cmd
    1
    ;; int8 _AD24VMCPwrup_Cmd
    1
    ;; int8 _ADPA12VPwrup_Cmd
    1
    ;; int8 _ADPA24VPwrup_Cmd
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
    ;; int8 _AD12VMCPwrdownCnfm_Cmd
    1
    ;; int8 _AD12VRCPwrdownCnfm_Cmd
    1
    ;; int8 _AD24VMCPwrdownCnfm_Cmd
    1
    ;; int8 _ADPA12VPwrdownCnfm_Cmd
    1
    ;; int8 _ADPA24VPwrdwnCnfm_Cmd
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
     ;; int8 _ADVehPwrup_Cmd
       (write-byte _ADVehPwrup_Cmd s)
     ;; int8 _ADChasPwrup_Cmd
       (write-byte _ADChasPwrup_Cmd s)
     ;; int8 _AD12VMCPwrup_Cmd
       (write-byte _AD12VMCPwrup_Cmd s)
     ;; int8 _AD12VRCPwrup_Cmd
       (write-byte _AD12VRCPwrup_Cmd s)
     ;; int8 _AD24VMCPwrup_Cmd
       (write-byte _AD24VMCPwrup_Cmd s)
     ;; int8 _ADPA12VPwrup_Cmd
       (write-byte _ADPA12VPwrup_Cmd s)
     ;; int8 _ADPA24VPwrup_Cmd
       (write-byte _ADPA24VPwrup_Cmd s)
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
     ;; int8 _AD12VMCPwrdownCnfm_Cmd
       (write-byte _AD12VMCPwrdownCnfm_Cmd s)
     ;; int8 _AD12VRCPwrdownCnfm_Cmd
       (write-byte _AD12VRCPwrdownCnfm_Cmd s)
     ;; int8 _AD24VMCPwrdownCnfm_Cmd
       (write-byte _AD24VMCPwrdownCnfm_Cmd s)
     ;; int8 _ADPA12VPwrdownCnfm_Cmd
       (write-byte _ADPA12VPwrdownCnfm_Cmd s)
     ;; int8 _ADPA24VPwrdwnCnfm_Cmd
       (write-byte _ADPA24VPwrdwnCnfm_Cmd s)
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
   ;; int8 _ADVehPwrup_Cmd
     (setq _ADVehPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ADVehPwrup_Cmd 127) (setq _ADVehPwrup_Cmd (- _ADVehPwrup_Cmd 256)))
   ;; int8 _ADChasPwrup_Cmd
     (setq _ADChasPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ADChasPwrup_Cmd 127) (setq _ADChasPwrup_Cmd (- _ADChasPwrup_Cmd 256)))
   ;; int8 _AD12VMCPwrup_Cmd
     (setq _AD12VMCPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD12VMCPwrup_Cmd 127) (setq _AD12VMCPwrup_Cmd (- _AD12VMCPwrup_Cmd 256)))
   ;; int8 _AD12VRCPwrup_Cmd
     (setq _AD12VRCPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD12VRCPwrup_Cmd 127) (setq _AD12VRCPwrup_Cmd (- _AD12VRCPwrup_Cmd 256)))
   ;; int8 _AD24VMCPwrup_Cmd
     (setq _AD24VMCPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD24VMCPwrup_Cmd 127) (setq _AD24VMCPwrup_Cmd (- _AD24VMCPwrup_Cmd 256)))
   ;; int8 _ADPA12VPwrup_Cmd
     (setq _ADPA12VPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ADPA12VPwrup_Cmd 127) (setq _ADPA12VPwrup_Cmd (- _ADPA12VPwrup_Cmd 256)))
   ;; int8 _ADPA24VPwrup_Cmd
     (setq _ADPA24VPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ADPA24VPwrup_Cmd 127) (setq _ADPA24VPwrup_Cmd (- _ADPA24VPwrup_Cmd 256)))
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
   ;; int8 _AD12VMCPwrdownCnfm_Cmd
     (setq _AD12VMCPwrdownCnfm_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD12VMCPwrdownCnfm_Cmd 127) (setq _AD12VMCPwrdownCnfm_Cmd (- _AD12VMCPwrdownCnfm_Cmd 256)))
   ;; int8 _AD12VRCPwrdownCnfm_Cmd
     (setq _AD12VRCPwrdownCnfm_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD12VRCPwrdownCnfm_Cmd 127) (setq _AD12VRCPwrdownCnfm_Cmd (- _AD12VRCPwrdownCnfm_Cmd 256)))
   ;; int8 _AD24VMCPwrdownCnfm_Cmd
     (setq _AD24VMCPwrdownCnfm_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AD24VMCPwrdownCnfm_Cmd 127) (setq _AD24VMCPwrdownCnfm_Cmd (- _AD24VMCPwrdownCnfm_Cmd 256)))
   ;; int8 _ADPA12VPwrdownCnfm_Cmd
     (setq _ADPA12VPwrdownCnfm_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ADPA12VPwrdownCnfm_Cmd 127) (setq _ADPA12VPwrdownCnfm_Cmd (- _ADPA12VPwrdownCnfm_Cmd 256)))
   ;; int8 _ADPA24VPwrdwnCnfm_Cmd
     (setq _ADPA24VPwrdwnCnfm_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ADPA24VPwrdwnCnfm_Cmd 127) (setq _ADPA24VPwrdwnCnfm_Cmd (- _ADPA24VPwrdwnCnfm_Cmd 256)))
   ;; int32 _PwrCmd_RollCnt
     (setq _PwrCmd_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _PwrCmd_Checksum
     (setq _PwrCmd_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_PowerCmd :md5sum-) "c35626040527e5a2f86622e5735f1b6f")
(setf (get e_car_msgs::ADCU_PowerCmd :datatype-) "e_car_msgs/ADCU_PowerCmd")
(setf (get e_car_msgs::ADCU_PowerCmd :definition-)
      "Header header

int8 ADVehPwrup_Cmd

int8 ADChasPwrup_Cmd

int8 AD12VMCPwrup_Cmd

int8 AD12VRCPwrup_Cmd

int8 AD24VMCPwrup_Cmd

int8 ADPA12VPwrup_Cmd

int8 ADPA24VPwrup_Cmd

int8 AD12VSC1Pwrup_Cmd

int8 AD12VSC2Pwrup_Cmd

int8 AD12VSC3Pwrup_Cmd

int8 AD12VSC4Pwrup_Cmd

int8 AD12VSC5Pwrup_Cmd

int8 AD12VSC6Pwrup_Cmd

int8 AD12VMCPwrdownCnfm_Cmd

int8 AD12VRCPwrdownCnfm_Cmd

int8 AD24VMCPwrdownCnfm_Cmd

int8 ADPA12VPwrdownCnfm_Cmd

int8 ADPA24VPwrdwnCnfm_Cmd

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



(provide :e_car_msgs/ADCU_PowerCmd "c35626040527e5a2f86622e5735f1b6f")


