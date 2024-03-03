;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_CldBodyCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_CldBodyCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_CLDBODYCMD")
  (make-package "E_CAR_MSGS::ADCU_CLDBODYCMD"))

(in-package "ROS")
;;//! \htmlinclude ADCU_CldBodyCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_CldBodyCmd
  :super ros::object
  :slots (_header _Cld_WidthLamp_Cmd _Cld_BrkLamp_Cmd _Cld_FogLamp_Cmd _Cld_HeadLamp_Cmd _Cld_DblFlashLamp_Cmd _Cld_TurnLLamp_Cmd _Cld_TurnRLamp_Cmd _Cld_BackLamp_Cmd _Cld_Buzzer_Cmd _Cld_Horn_Cmd _Cld_RunLamp_Cmd _CldBodyCmd_RollCnt _CldBodyCmd_Checksum ))

(defmethod e_car_msgs::ADCU_CldBodyCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Cld_WidthLamp_Cmd __Cld_WidthLamp_Cmd) 0)
    ((:Cld_BrkLamp_Cmd __Cld_BrkLamp_Cmd) 0)
    ((:Cld_FogLamp_Cmd __Cld_FogLamp_Cmd) 0)
    ((:Cld_HeadLamp_Cmd __Cld_HeadLamp_Cmd) 0)
    ((:Cld_DblFlashLamp_Cmd __Cld_DblFlashLamp_Cmd) 0)
    ((:Cld_TurnLLamp_Cmd __Cld_TurnLLamp_Cmd) 0)
    ((:Cld_TurnRLamp_Cmd __Cld_TurnRLamp_Cmd) 0)
    ((:Cld_BackLamp_Cmd __Cld_BackLamp_Cmd) 0)
    ((:Cld_Buzzer_Cmd __Cld_Buzzer_Cmd) 0)
    ((:Cld_Horn_Cmd __Cld_Horn_Cmd) 0)
    ((:Cld_RunLamp_Cmd __Cld_RunLamp_Cmd) 0)
    ((:CldBodyCmd_RollCnt __CldBodyCmd_RollCnt) 0)
    ((:CldBodyCmd_Checksum __CldBodyCmd_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Cld_WidthLamp_Cmd (round __Cld_WidthLamp_Cmd))
   (setq _Cld_BrkLamp_Cmd (round __Cld_BrkLamp_Cmd))
   (setq _Cld_FogLamp_Cmd (round __Cld_FogLamp_Cmd))
   (setq _Cld_HeadLamp_Cmd (round __Cld_HeadLamp_Cmd))
   (setq _Cld_DblFlashLamp_Cmd (round __Cld_DblFlashLamp_Cmd))
   (setq _Cld_TurnLLamp_Cmd (round __Cld_TurnLLamp_Cmd))
   (setq _Cld_TurnRLamp_Cmd (round __Cld_TurnRLamp_Cmd))
   (setq _Cld_BackLamp_Cmd (round __Cld_BackLamp_Cmd))
   (setq _Cld_Buzzer_Cmd (round __Cld_Buzzer_Cmd))
   (setq _Cld_Horn_Cmd (round __Cld_Horn_Cmd))
   (setq _Cld_RunLamp_Cmd (round __Cld_RunLamp_Cmd))
   (setq _CldBodyCmd_RollCnt (round __CldBodyCmd_RollCnt))
   (setq _CldBodyCmd_Checksum (round __CldBodyCmd_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Cld_WidthLamp_Cmd
   (&optional __Cld_WidthLamp_Cmd)
   (if __Cld_WidthLamp_Cmd (setq _Cld_WidthLamp_Cmd __Cld_WidthLamp_Cmd)) _Cld_WidthLamp_Cmd)
  (:Cld_BrkLamp_Cmd
   (&optional __Cld_BrkLamp_Cmd)
   (if __Cld_BrkLamp_Cmd (setq _Cld_BrkLamp_Cmd __Cld_BrkLamp_Cmd)) _Cld_BrkLamp_Cmd)
  (:Cld_FogLamp_Cmd
   (&optional __Cld_FogLamp_Cmd)
   (if __Cld_FogLamp_Cmd (setq _Cld_FogLamp_Cmd __Cld_FogLamp_Cmd)) _Cld_FogLamp_Cmd)
  (:Cld_HeadLamp_Cmd
   (&optional __Cld_HeadLamp_Cmd)
   (if __Cld_HeadLamp_Cmd (setq _Cld_HeadLamp_Cmd __Cld_HeadLamp_Cmd)) _Cld_HeadLamp_Cmd)
  (:Cld_DblFlashLamp_Cmd
   (&optional __Cld_DblFlashLamp_Cmd)
   (if __Cld_DblFlashLamp_Cmd (setq _Cld_DblFlashLamp_Cmd __Cld_DblFlashLamp_Cmd)) _Cld_DblFlashLamp_Cmd)
  (:Cld_TurnLLamp_Cmd
   (&optional __Cld_TurnLLamp_Cmd)
   (if __Cld_TurnLLamp_Cmd (setq _Cld_TurnLLamp_Cmd __Cld_TurnLLamp_Cmd)) _Cld_TurnLLamp_Cmd)
  (:Cld_TurnRLamp_Cmd
   (&optional __Cld_TurnRLamp_Cmd)
   (if __Cld_TurnRLamp_Cmd (setq _Cld_TurnRLamp_Cmd __Cld_TurnRLamp_Cmd)) _Cld_TurnRLamp_Cmd)
  (:Cld_BackLamp_Cmd
   (&optional __Cld_BackLamp_Cmd)
   (if __Cld_BackLamp_Cmd (setq _Cld_BackLamp_Cmd __Cld_BackLamp_Cmd)) _Cld_BackLamp_Cmd)
  (:Cld_Buzzer_Cmd
   (&optional __Cld_Buzzer_Cmd)
   (if __Cld_Buzzer_Cmd (setq _Cld_Buzzer_Cmd __Cld_Buzzer_Cmd)) _Cld_Buzzer_Cmd)
  (:Cld_Horn_Cmd
   (&optional __Cld_Horn_Cmd)
   (if __Cld_Horn_Cmd (setq _Cld_Horn_Cmd __Cld_Horn_Cmd)) _Cld_Horn_Cmd)
  (:Cld_RunLamp_Cmd
   (&optional __Cld_RunLamp_Cmd)
   (if __Cld_RunLamp_Cmd (setq _Cld_RunLamp_Cmd __Cld_RunLamp_Cmd)) _Cld_RunLamp_Cmd)
  (:CldBodyCmd_RollCnt
   (&optional __CldBodyCmd_RollCnt)
   (if __CldBodyCmd_RollCnt (setq _CldBodyCmd_RollCnt __CldBodyCmd_RollCnt)) _CldBodyCmd_RollCnt)
  (:CldBodyCmd_Checksum
   (&optional __CldBodyCmd_Checksum)
   (if __CldBodyCmd_Checksum (setq _CldBodyCmd_Checksum __CldBodyCmd_Checksum)) _CldBodyCmd_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _Cld_WidthLamp_Cmd
    1
    ;; int8 _Cld_BrkLamp_Cmd
    1
    ;; int8 _Cld_FogLamp_Cmd
    1
    ;; int8 _Cld_HeadLamp_Cmd
    1
    ;; int8 _Cld_DblFlashLamp_Cmd
    1
    ;; int8 _Cld_TurnLLamp_Cmd
    1
    ;; int8 _Cld_TurnRLamp_Cmd
    1
    ;; int8 _Cld_BackLamp_Cmd
    1
    ;; int8 _Cld_Buzzer_Cmd
    1
    ;; int8 _Cld_Horn_Cmd
    1
    ;; int8 _Cld_RunLamp_Cmd
    1
    ;; int32 _CldBodyCmd_RollCnt
    4
    ;; int32 _CldBodyCmd_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _Cld_WidthLamp_Cmd
       (write-byte _Cld_WidthLamp_Cmd s)
     ;; int8 _Cld_BrkLamp_Cmd
       (write-byte _Cld_BrkLamp_Cmd s)
     ;; int8 _Cld_FogLamp_Cmd
       (write-byte _Cld_FogLamp_Cmd s)
     ;; int8 _Cld_HeadLamp_Cmd
       (write-byte _Cld_HeadLamp_Cmd s)
     ;; int8 _Cld_DblFlashLamp_Cmd
       (write-byte _Cld_DblFlashLamp_Cmd s)
     ;; int8 _Cld_TurnLLamp_Cmd
       (write-byte _Cld_TurnLLamp_Cmd s)
     ;; int8 _Cld_TurnRLamp_Cmd
       (write-byte _Cld_TurnRLamp_Cmd s)
     ;; int8 _Cld_BackLamp_Cmd
       (write-byte _Cld_BackLamp_Cmd s)
     ;; int8 _Cld_Buzzer_Cmd
       (write-byte _Cld_Buzzer_Cmd s)
     ;; int8 _Cld_Horn_Cmd
       (write-byte _Cld_Horn_Cmd s)
     ;; int8 _Cld_RunLamp_Cmd
       (write-byte _Cld_RunLamp_Cmd s)
     ;; int32 _CldBodyCmd_RollCnt
       (write-long _CldBodyCmd_RollCnt s)
     ;; int32 _CldBodyCmd_Checksum
       (write-long _CldBodyCmd_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _Cld_WidthLamp_Cmd
     (setq _Cld_WidthLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_WidthLamp_Cmd 127) (setq _Cld_WidthLamp_Cmd (- _Cld_WidthLamp_Cmd 256)))
   ;; int8 _Cld_BrkLamp_Cmd
     (setq _Cld_BrkLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_BrkLamp_Cmd 127) (setq _Cld_BrkLamp_Cmd (- _Cld_BrkLamp_Cmd 256)))
   ;; int8 _Cld_FogLamp_Cmd
     (setq _Cld_FogLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_FogLamp_Cmd 127) (setq _Cld_FogLamp_Cmd (- _Cld_FogLamp_Cmd 256)))
   ;; int8 _Cld_HeadLamp_Cmd
     (setq _Cld_HeadLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_HeadLamp_Cmd 127) (setq _Cld_HeadLamp_Cmd (- _Cld_HeadLamp_Cmd 256)))
   ;; int8 _Cld_DblFlashLamp_Cmd
     (setq _Cld_DblFlashLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_DblFlashLamp_Cmd 127) (setq _Cld_DblFlashLamp_Cmd (- _Cld_DblFlashLamp_Cmd 256)))
   ;; int8 _Cld_TurnLLamp_Cmd
     (setq _Cld_TurnLLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_TurnLLamp_Cmd 127) (setq _Cld_TurnLLamp_Cmd (- _Cld_TurnLLamp_Cmd 256)))
   ;; int8 _Cld_TurnRLamp_Cmd
     (setq _Cld_TurnRLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_TurnRLamp_Cmd 127) (setq _Cld_TurnRLamp_Cmd (- _Cld_TurnRLamp_Cmd 256)))
   ;; int8 _Cld_BackLamp_Cmd
     (setq _Cld_BackLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_BackLamp_Cmd 127) (setq _Cld_BackLamp_Cmd (- _Cld_BackLamp_Cmd 256)))
   ;; int8 _Cld_Buzzer_Cmd
     (setq _Cld_Buzzer_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_Buzzer_Cmd 127) (setq _Cld_Buzzer_Cmd (- _Cld_Buzzer_Cmd 256)))
   ;; int8 _Cld_Horn_Cmd
     (setq _Cld_Horn_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_Horn_Cmd 127) (setq _Cld_Horn_Cmd (- _Cld_Horn_Cmd 256)))
   ;; int8 _Cld_RunLamp_Cmd
     (setq _Cld_RunLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Cld_RunLamp_Cmd 127) (setq _Cld_RunLamp_Cmd (- _Cld_RunLamp_Cmd 256)))
   ;; int32 _CldBodyCmd_RollCnt
     (setq _CldBodyCmd_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _CldBodyCmd_Checksum
     (setq _CldBodyCmd_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_CldBodyCmd :md5sum-) "e996fa29fe9d34f1678bf393df7a1655")
(setf (get e_car_msgs::ADCU_CldBodyCmd :datatype-) "e_car_msgs/ADCU_CldBodyCmd")
(setf (get e_car_msgs::ADCU_CldBodyCmd :definition-)
      "Header header

int8 Cld_WidthLamp_Cmd

int8 Cld_BrkLamp_Cmd

int8 Cld_FogLamp_Cmd

int8 Cld_HeadLamp_Cmd

int8 Cld_DblFlashLamp_Cmd

int8 Cld_TurnLLamp_Cmd

int8 Cld_TurnRLamp_Cmd

int8 Cld_BackLamp_Cmd

int8 Cld_Buzzer_Cmd

int8 Cld_Horn_Cmd

int8 Cld_RunLamp_Cmd

int32 CldBodyCmd_RollCnt

int32 CldBodyCmd_Checksum
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



(provide :e_car_msgs/ADCU_CldBodyCmd "e996fa29fe9d34f1678bf393df7a1655")


