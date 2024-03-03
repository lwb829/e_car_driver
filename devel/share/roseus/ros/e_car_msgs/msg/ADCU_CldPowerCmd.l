;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_CldPowerCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_CldPowerCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_CLDPOWERCMD")
  (make-package "E_CAR_MSGS::ADCU_CLDPOWERCMD"))

(in-package "ROS")
;;//! \htmlinclude ADCU_CldPowerCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_CldPowerCmd
  :super ros::object
  :slots (_header _CldVehPwrup_Cmd _CldChasPwrup_Cmd _Cld12VMCPwrup_Cmd _Cld12VRCPwrup_Cmd _Cld24VMCPwrup_Cmd _CldPA12VPwrup_Cmd _CldPA24VPwrup_Cmd _Cld12VSC1Pwrup_Cmd _Cld12VSC2Pwrup_Cmd _Cld12VSC3Pwrup_Cmd _Cld12VSC4Pwrup_Cmd _Cld12VSC5Pwrup_Cmd _Cld12VSC6Pwrup_Cmd _Cld12VMCPwrdownCnfm_Cmd _Cld12VRCPwrdownCnfm_Cmd _Cld24VMCPwrdownCnfm_Cmd _CldPA12VPwrdownCnfm_Cmd _CldPA24VPwrdownCnfm_Cmd _CldPwrCmd_RollCnt _CldPwrCmd_Checksum ))

(defmethod e_car_msgs::ADCU_CldPowerCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:CldVehPwrup_Cmd __CldVehPwrup_Cmd) 0)
    ((:CldChasPwrup_Cmd __CldChasPwrup_Cmd) 0)
    ((:Cld12VMCPwrup_Cmd __Cld12VMCPwrup_Cmd) 0)
    ((:Cld12VRCPwrup_Cmd __Cld12VRCPwrup_Cmd) 0)
    ((:Cld24VMCPwrup_Cmd __Cld24VMCPwrup_Cmd) 0)
    ((:CldPA12VPwrup_Cmd __CldPA12VPwrup_Cmd) 0)
    ((:CldPA24VPwrup_Cmd __CldPA24VPwrup_Cmd) 0)
    ((:Cld12VSC1Pwrup_Cmd __Cld12VSC1Pwrup_Cmd) 0)
    ((:Cld12VSC2Pwrup_Cmd __Cld12VSC2Pwrup_Cmd) 0)
    ((:Cld12VSC3Pwrup_Cmd __Cld12VSC3Pwrup_Cmd) 0)
    ((:Cld12VSC4Pwrup_Cmd __Cld12VSC4Pwrup_Cmd) 0)
    ((:Cld12VSC5Pwrup_Cmd __Cld12VSC5Pwrup_Cmd) 0)
    ((:Cld12VSC6Pwrup_Cmd __Cld12VSC6Pwrup_Cmd) 0)
    ((:Cld12VMCPwrdownCnfm_Cmd __Cld12VMCPwrdownCnfm_Cmd) 0)
    ((:Cld12VRCPwrdownCnfm_Cmd __Cld12VRCPwrdownCnfm_Cmd) 0)
    ((:Cld24VMCPwrdownCnfm_Cmd __Cld24VMCPwrdownCnfm_Cmd) 0)
    ((:CldPA12VPwrdownCnfm_Cmd __CldPA12VPwrdownCnfm_Cmd) 0)
    ((:CldPA24VPwrdownCnfm_Cmd __CldPA24VPwrdownCnfm_Cmd) 0)
    ((:CldPwrCmd_RollCnt __CldPwrCmd_RollCnt) 0)
    ((:CldPwrCmd_Checksum __CldPwrCmd_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _CldVehPwrup_Cmd (round __CldVehPwrup_Cmd))
   (setq _CldChasPwrup_Cmd (round __CldChasPwrup_Cmd))
   (setq _Cld12VMCPwrup_Cmd (round __Cld12VMCPwrup_Cmd))
   (setq _Cld12VRCPwrup_Cmd (round __Cld12VRCPwrup_Cmd))
   (setq _Cld24VMCPwrup_Cmd (round __Cld24VMCPwrup_Cmd))
   (setq _CldPA12VPwrup_Cmd (round __CldPA12VPwrup_Cmd))
   (setq _CldPA24VPwrup_Cmd (round __CldPA24VPwrup_Cmd))
   (setq _Cld12VSC1Pwrup_Cmd (round __Cld12VSC1Pwrup_Cmd))
   (setq _Cld12VSC2Pwrup_Cmd (round __Cld12VSC2Pwrup_Cmd))
   (setq _Cld12VSC3Pwrup_Cmd (round __Cld12VSC3Pwrup_Cmd))
   (setq _Cld12VSC4Pwrup_Cmd (round __Cld12VSC4Pwrup_Cmd))
   (setq _Cld12VSC5Pwrup_Cmd (round __Cld12VSC5Pwrup_Cmd))
   (setq _Cld12VSC6Pwrup_Cmd (round __Cld12VSC6Pwrup_Cmd))
   (setq _Cld12VMCPwrdownCnfm_Cmd (round __Cld12VMCPwrdownCnfm_Cmd))
   (setq _Cld12VRCPwrdownCnfm_Cmd (round __Cld12VRCPwrdownCnfm_Cmd))
   (setq _Cld24VMCPwrdownCnfm_Cmd (round __Cld24VMCPwrdownCnfm_Cmd))
   (setq _CldPA12VPwrdownCnfm_Cmd (round __CldPA12VPwrdownCnfm_Cmd))
   (setq _CldPA24VPwrdownCnfm_Cmd (round __CldPA24VPwrdownCnfm_Cmd))
   (setq _CldPwrCmd_RollCnt (round __CldPwrCmd_RollCnt))
   (setq _CldPwrCmd_Checksum (round __CldPwrCmd_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:CldVehPwrup_Cmd
   (&optional __CldVehPwrup_Cmd)
   (if __CldVehPwrup_Cmd (setq _CldVehPwrup_Cmd __CldVehPwrup_Cmd)) _CldVehPwrup_Cmd)
  (:CldChasPwrup_Cmd
   (&optional __CldChasPwrup_Cmd)
   (if __CldChasPwrup_Cmd (setq _CldChasPwrup_Cmd __CldChasPwrup_Cmd)) _CldChasPwrup_Cmd)
  (:Cld12VMCPwrup_Cmd
   (&optional __Cld12VMCPwrup_Cmd)
   (if __Cld12VMCPwrup_Cmd (setq _Cld12VMCPwrup_Cmd __Cld12VMCPwrup_Cmd)) _Cld12VMCPwrup_Cmd)
  (:Cld12VRCPwrup_Cmd
   (&optional __Cld12VRCPwrup_Cmd)
   (if __Cld12VRCPwrup_Cmd (setq _Cld12VRCPwrup_Cmd __Cld12VRCPwrup_Cmd)) _Cld12VRCPwrup_Cmd)
  (:Cld24VMCPwrup_Cmd
   (&optional __Cld24VMCPwrup_Cmd)
   (if __Cld24VMCPwrup_Cmd (setq _Cld24VMCPwrup_Cmd __Cld24VMCPwrup_Cmd)) _Cld24VMCPwrup_Cmd)
  (:CldPA12VPwrup_Cmd
   (&optional __CldPA12VPwrup_Cmd)
   (if __CldPA12VPwrup_Cmd (setq _CldPA12VPwrup_Cmd __CldPA12VPwrup_Cmd)) _CldPA12VPwrup_Cmd)
  (:CldPA24VPwrup_Cmd
   (&optional __CldPA24VPwrup_Cmd)
   (if __CldPA24VPwrup_Cmd (setq _CldPA24VPwrup_Cmd __CldPA24VPwrup_Cmd)) _CldPA24VPwrup_Cmd)
  (:Cld12VSC1Pwrup_Cmd
   (&optional __Cld12VSC1Pwrup_Cmd)
   (if __Cld12VSC1Pwrup_Cmd (setq _Cld12VSC1Pwrup_Cmd __Cld12VSC1Pwrup_Cmd)) _Cld12VSC1Pwrup_Cmd)
  (:Cld12VSC2Pwrup_Cmd
   (&optional __Cld12VSC2Pwrup_Cmd)
   (if __Cld12VSC2Pwrup_Cmd (setq _Cld12VSC2Pwrup_Cmd __Cld12VSC2Pwrup_Cmd)) _Cld12VSC2Pwrup_Cmd)
  (:Cld12VSC3Pwrup_Cmd
   (&optional __Cld12VSC3Pwrup_Cmd)
   (if __Cld12VSC3Pwrup_Cmd (setq _Cld12VSC3Pwrup_Cmd __Cld12VSC3Pwrup_Cmd)) _Cld12VSC3Pwrup_Cmd)
  (:Cld12VSC4Pwrup_Cmd
   (&optional __Cld12VSC4Pwrup_Cmd)
   (if __Cld12VSC4Pwrup_Cmd (setq _Cld12VSC4Pwrup_Cmd __Cld12VSC4Pwrup_Cmd)) _Cld12VSC4Pwrup_Cmd)
  (:Cld12VSC5Pwrup_Cmd
   (&optional __Cld12VSC5Pwrup_Cmd)
   (if __Cld12VSC5Pwrup_Cmd (setq _Cld12VSC5Pwrup_Cmd __Cld12VSC5Pwrup_Cmd)) _Cld12VSC5Pwrup_Cmd)
  (:Cld12VSC6Pwrup_Cmd
   (&optional __Cld12VSC6Pwrup_Cmd)
   (if __Cld12VSC6Pwrup_Cmd (setq _Cld12VSC6Pwrup_Cmd __Cld12VSC6Pwrup_Cmd)) _Cld12VSC6Pwrup_Cmd)
  (:Cld12VMCPwrdownCnfm_Cmd
   (&optional __Cld12VMCPwrdownCnfm_Cmd)
   (if __Cld12VMCPwrdownCnfm_Cmd (setq _Cld12VMCPwrdownCnfm_Cmd __Cld12VMCPwrdownCnfm_Cmd)) _Cld12VMCPwrdownCnfm_Cmd)
  (:Cld12VRCPwrdownCnfm_Cmd
   (&optional __Cld12VRCPwrdownCnfm_Cmd)
   (if __Cld12VRCPwrdownCnfm_Cmd (setq _Cld12VRCPwrdownCnfm_Cmd __Cld12VRCPwrdownCnfm_Cmd)) _Cld12VRCPwrdownCnfm_Cmd)
  (:Cld24VMCPwrdownCnfm_Cmd
   (&optional __Cld24VMCPwrdownCnfm_Cmd)
   (if __Cld24VMCPwrdownCnfm_Cmd (setq _Cld24VMCPwrdownCnfm_Cmd __Cld24VMCPwrdownCnfm_Cmd)) _Cld24VMCPwrdownCnfm_Cmd)
  (:CldPA12VPwrdownCnfm_Cmd
   (&optional __CldPA12VPwrdownCnfm_Cmd)
   (if __CldPA12VPwrdownCnfm_Cmd (setq _CldPA12VPwrdownCnfm_Cmd __CldPA12VPwrdownCnfm_Cmd)) _CldPA12VPwrdownCnfm_Cmd)
  (:CldPA24VPwrdownCnfm_Cmd
   (&optional __CldPA24VPwrdownCnfm_Cmd)
   (if __CldPA24VPwrdownCnfm_Cmd (setq _CldPA24VPwrdownCnfm_Cmd __CldPA24VPwrdownCnfm_Cmd)) _CldPA24VPwrdownCnfm_Cmd)
  (:CldPwrCmd_RollCnt
   (&optional __CldPwrCmd_RollCnt)
   (if __CldPwrCmd_RollCnt (setq _CldPwrCmd_RollCnt __CldPwrCmd_RollCnt)) _CldPwrCmd_RollCnt)
  (:CldPwrCmd_Checksum
   (&optional __CldPwrCmd_Checksum)
   (if __CldPwrCmd_Checksum (setq _CldPwrCmd_Checksum __CldPwrCmd_Checksum)) _CldPwrCmd_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _CldVehPwrup_Cmd
    1
    ;; int8 _CldChasPwrup_Cmd
    1
    ;; int8 _Cld12VMCPwrup_Cmd
    1
    ;; int8 _Cld12VRCPwrup_Cmd
    1
    ;; int8 _Cld24VMCPwrup_Cmd
    1
    ;; int8 _CldPA12VPwrup_Cmd
    1
    ;; int8 _CldPA24VPwrup_Cmd
    1
    ;; int8 _Cld12VSC1Pwrup_Cmd
    1
    ;; int8 _Cld12VSC2Pwrup_Cmd
    1
    ;; int8 _Cld12VSC3Pwrup_Cmd
    1
    ;; int8 _Cld12VSC4Pwrup_Cmd
    1
    ;; int8 _Cld12VSC5Pwrup_Cmd
    1
    ;; int8 _Cld12VSC6Pwrup_Cmd
    1
    ;; int8 _Cld12VMCPwrdownCnfm_Cmd
    1
    ;; int8 _Cld12VRCPwrdownCnfm_Cmd
    1
    ;; int8 _Cld24VMCPwrdownCnfm_Cmd
    1
    ;; int8 _CldPA12VPwrdownCnfm_Cmd
    1
    ;; int8 _CldPA24VPwrdownCnfm_Cmd
    1
    ;; int32 _CldPwrCmd_RollCnt
    4
    ;; int32 _CldPwrCmd_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _CldVehPwrup_Cmd
       (write-byte _CldVehPwrup_Cmd s)
     ;; int8 _CldChasPwrup_Cmd
       (write-byte _CldChasPwrup_Cmd s)
     ;; int8 _Cld12VMCPwrup_Cmd
       (write-byte _Cld12VMCPwrup_Cmd s)
     ;; int8 _Cld12VRCPwrup_Cmd
       (write-byte _Cld12VRCPwrup_Cmd s)
     ;; int8 _Cld24VMCPwrup_Cmd
       (write-byte _Cld24VMCPwrup_Cmd s)
     ;; int8 _CldPA12VPwrup_Cmd
       (write-byte _CldPA12VPwrup_Cmd s)
     ;; int8 _CldPA24VPwrup_Cmd
       (write-byte _CldPA24VPwrup_Cmd s)
     ;; int8 _Cld12VSC1Pwrup_Cmd
       (write-byte _Cld12VSC1Pwrup_Cmd s)
     ;; int8 _Cld12VSC2Pwrup_Cmd
       (write-byte _Cld12VSC2Pwrup_Cmd s)
     ;; int8 _Cld12VSC3Pwrup_Cmd
       (write-byte _Cld12VSC3Pwrup_Cmd s)
     ;; int8 _Cld12VSC4Pwrup_Cmd
       (write-byte _Cld12VSC4Pwrup_Cmd s)
     ;; int8 _Cld12VSC5Pwrup_Cmd
       (write-byte _Cld12VSC5Pwrup_Cmd s)
     ;; int8 _Cld12VSC6Pwrup_Cmd
       (write-byte _Cld12VSC6Pwrup_Cmd s)
     ;; int8 _Cld12VMCPwrdownCnfm_Cmd
       (write-byte _Cld12VMCPwrdownCnfm_Cmd s)
     ;; int8 _Cld12VRCPwrdownCnfm_Cmd
       (write-byte _Cld12VRCPwrdownCnfm_Cmd s)
     ;; int8 _Cld24VMCPwrdownCnfm_Cmd
       (write-byte _Cld24VMCPwrdownCnfm_Cmd s)
     ;; int8 _CldPA12VPwrdownCnfm_Cmd
       (write-byte _CldPA12VPwrdownCnfm_Cmd s)
     ;; int8 _CldPA24VPwrdownCnfm_Cmd
       (write-byte _CldPA24VPwrdownCnfm_Cmd s)
     ;; int32 _CldPwrCmd_RollCnt
       (write-long _CldPwrCmd_RollCnt s)
     ;; int32 _CldPwrCmd_Checksum
       (write-long _CldPwrCmd_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _CldVehPwrup_Cmd
     (setq _CldVehPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _CldVehPwrup_Cmd 127) (setq _CldVehPwrup_Cmd (- _CldVehPwrup_Cmd 256)))
   ;; int8 _CldChasPwrup_Cmd
     (setq _CldChasPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _CldChasPwrup_Cmd 127) (setq _CldChasPwrup_Cmd (- _CldChasPwrup_Cmd 256)))
   ;; int8 _Cld12VMCPwrup_Cmd
     (setq _Cld12VMCPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld12VMCPwrup_Cmd 127) (setq _Cld12VMCPwrup_Cmd (- _Cld12VMCPwrup_Cmd 256)))
   ;; int8 _Cld12VRCPwrup_Cmd
     (setq _Cld12VRCPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld12VRCPwrup_Cmd 127) (setq _Cld12VRCPwrup_Cmd (- _Cld12VRCPwrup_Cmd 256)))
   ;; int8 _Cld24VMCPwrup_Cmd
     (setq _Cld24VMCPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld24VMCPwrup_Cmd 127) (setq _Cld24VMCPwrup_Cmd (- _Cld24VMCPwrup_Cmd 256)))
   ;; int8 _CldPA12VPwrup_Cmd
     (setq _CldPA12VPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _CldPA12VPwrup_Cmd 127) (setq _CldPA12VPwrup_Cmd (- _CldPA12VPwrup_Cmd 256)))
   ;; int8 _CldPA24VPwrup_Cmd
     (setq _CldPA24VPwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _CldPA24VPwrup_Cmd 127) (setq _CldPA24VPwrup_Cmd (- _CldPA24VPwrup_Cmd 256)))
   ;; int8 _Cld12VSC1Pwrup_Cmd
     (setq _Cld12VSC1Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld12VSC1Pwrup_Cmd 127) (setq _Cld12VSC1Pwrup_Cmd (- _Cld12VSC1Pwrup_Cmd 256)))
   ;; int8 _Cld12VSC2Pwrup_Cmd
     (setq _Cld12VSC2Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld12VSC2Pwrup_Cmd 127) (setq _Cld12VSC2Pwrup_Cmd (- _Cld12VSC2Pwrup_Cmd 256)))
   ;; int8 _Cld12VSC3Pwrup_Cmd
     (setq _Cld12VSC3Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld12VSC3Pwrup_Cmd 127) (setq _Cld12VSC3Pwrup_Cmd (- _Cld12VSC3Pwrup_Cmd 256)))
   ;; int8 _Cld12VSC4Pwrup_Cmd
     (setq _Cld12VSC4Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld12VSC4Pwrup_Cmd 127) (setq _Cld12VSC4Pwrup_Cmd (- _Cld12VSC4Pwrup_Cmd 256)))
   ;; int8 _Cld12VSC5Pwrup_Cmd
     (setq _Cld12VSC5Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld12VSC5Pwrup_Cmd 127) (setq _Cld12VSC5Pwrup_Cmd (- _Cld12VSC5Pwrup_Cmd 256)))
   ;; int8 _Cld12VSC6Pwrup_Cmd
     (setq _Cld12VSC6Pwrup_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld12VSC6Pwrup_Cmd 127) (setq _Cld12VSC6Pwrup_Cmd (- _Cld12VSC6Pwrup_Cmd 256)))
   ;; int8 _Cld12VMCPwrdownCnfm_Cmd
     (setq _Cld12VMCPwrdownCnfm_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld12VMCPwrdownCnfm_Cmd 127) (setq _Cld12VMCPwrdownCnfm_Cmd (- _Cld12VMCPwrdownCnfm_Cmd 256)))
   ;; int8 _Cld12VRCPwrdownCnfm_Cmd
     (setq _Cld12VRCPwrdownCnfm_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld12VRCPwrdownCnfm_Cmd 127) (setq _Cld12VRCPwrdownCnfm_Cmd (- _Cld12VRCPwrdownCnfm_Cmd 256)))
   ;; int8 _Cld24VMCPwrdownCnfm_Cmd
     (setq _Cld24VMCPwrdownCnfm_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld24VMCPwrdownCnfm_Cmd 127) (setq _Cld24VMCPwrdownCnfm_Cmd (- _Cld24VMCPwrdownCnfm_Cmd 256)))
   ;; int8 _CldPA12VPwrdownCnfm_Cmd
     (setq _CldPA12VPwrdownCnfm_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _CldPA12VPwrdownCnfm_Cmd 127) (setq _CldPA12VPwrdownCnfm_Cmd (- _CldPA12VPwrdownCnfm_Cmd 256)))
   ;; int8 _CldPA24VPwrdownCnfm_Cmd
     (setq _CldPA24VPwrdownCnfm_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _CldPA24VPwrdownCnfm_Cmd 127) (setq _CldPA24VPwrdownCnfm_Cmd (- _CldPA24VPwrdownCnfm_Cmd 256)))
   ;; int32 _CldPwrCmd_RollCnt
     (setq _CldPwrCmd_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _CldPwrCmd_Checksum
     (setq _CldPwrCmd_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_CldPowerCmd :md5sum-) "712914972d7a36597399d67071cb4425")
(setf (get e_car_msgs::ADCU_CldPowerCmd :datatype-) "e_car_msgs/ADCU_CldPowerCmd")
(setf (get e_car_msgs::ADCU_CldPowerCmd :definition-)
      "Header header

int8 CldVehPwrup_Cmd

int8 CldChasPwrup_Cmd

int8 Cld12VMCPwrup_Cmd

int8 Cld12VRCPwrup_Cmd

int8 Cld24VMCPwrup_Cmd

int8 CldPA12VPwrup_Cmd

int8 CldPA24VPwrup_Cmd

int8 Cld12VSC1Pwrup_Cmd

int8 Cld12VSC2Pwrup_Cmd

int8 Cld12VSC3Pwrup_Cmd

int8 Cld12VSC4Pwrup_Cmd

int8 Cld12VSC5Pwrup_Cmd

int8 Cld12VSC6Pwrup_Cmd

int8 Cld12VMCPwrdownCnfm_Cmd

int8 Cld12VRCPwrdownCnfm_Cmd

int8 Cld24VMCPwrdownCnfm_Cmd

int8 CldPA12VPwrdownCnfm_Cmd

int8 CldPA24VPwrdownCnfm_Cmd

int32 CldPwrCmd_RollCnt

int32 CldPwrCmd_Checksum
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



(provide :e_car_msgs/ADCU_CldPowerCmd "712914972d7a36597399d67071cb4425")


