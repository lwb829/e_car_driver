;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_BodyCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_BodyCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_BODYCMD")
  (make-package "E_CAR_MSGS::ADCU_BODYCMD"))

(in-package "ROS")
;;//! \htmlinclude ADCU_BodyCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_BodyCmd
  :super ros::object
  :slots (_header _LampCmd_Active _HeadLamp_Cmd _DblFlashLamp_Cmd _TurnLLamp_Cmd _TurnRLamp_Cmd _BackLamp_Cmd _Buzzer_Cmd _Horn_Cmd _RunLamp_Cmd _BrkLamp_Cmd _FogLamp_Cmd _WidthLamp_Cmd _LampCmd_RollCnt _LampCmd_Checksum ))

(defmethod e_car_msgs::ADCU_BodyCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:LampCmd_Active __LampCmd_Active) 0)
    ((:HeadLamp_Cmd __HeadLamp_Cmd) 0)
    ((:DblFlashLamp_Cmd __DblFlashLamp_Cmd) 0)
    ((:TurnLLamp_Cmd __TurnLLamp_Cmd) 0)
    ((:TurnRLamp_Cmd __TurnRLamp_Cmd) 0)
    ((:BackLamp_Cmd __BackLamp_Cmd) 0)
    ((:Buzzer_Cmd __Buzzer_Cmd) 0)
    ((:Horn_Cmd __Horn_Cmd) 0)
    ((:RunLamp_Cmd __RunLamp_Cmd) 0)
    ((:BrkLamp_Cmd __BrkLamp_Cmd) 0)
    ((:FogLamp_Cmd __FogLamp_Cmd) 0)
    ((:WidthLamp_Cmd __WidthLamp_Cmd) 0)
    ((:LampCmd_RollCnt __LampCmd_RollCnt) 0)
    ((:LampCmd_Checksum __LampCmd_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _LampCmd_Active (round __LampCmd_Active))
   (setq _HeadLamp_Cmd (round __HeadLamp_Cmd))
   (setq _DblFlashLamp_Cmd (round __DblFlashLamp_Cmd))
   (setq _TurnLLamp_Cmd (round __TurnLLamp_Cmd))
   (setq _TurnRLamp_Cmd (round __TurnRLamp_Cmd))
   (setq _BackLamp_Cmd (round __BackLamp_Cmd))
   (setq _Buzzer_Cmd (round __Buzzer_Cmd))
   (setq _Horn_Cmd (round __Horn_Cmd))
   (setq _RunLamp_Cmd (round __RunLamp_Cmd))
   (setq _BrkLamp_Cmd (round __BrkLamp_Cmd))
   (setq _FogLamp_Cmd (round __FogLamp_Cmd))
   (setq _WidthLamp_Cmd (round __WidthLamp_Cmd))
   (setq _LampCmd_RollCnt (round __LampCmd_RollCnt))
   (setq _LampCmd_Checksum (round __LampCmd_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:LampCmd_Active
   (&optional __LampCmd_Active)
   (if __LampCmd_Active (setq _LampCmd_Active __LampCmd_Active)) _LampCmd_Active)
  (:HeadLamp_Cmd
   (&optional __HeadLamp_Cmd)
   (if __HeadLamp_Cmd (setq _HeadLamp_Cmd __HeadLamp_Cmd)) _HeadLamp_Cmd)
  (:DblFlashLamp_Cmd
   (&optional __DblFlashLamp_Cmd)
   (if __DblFlashLamp_Cmd (setq _DblFlashLamp_Cmd __DblFlashLamp_Cmd)) _DblFlashLamp_Cmd)
  (:TurnLLamp_Cmd
   (&optional __TurnLLamp_Cmd)
   (if __TurnLLamp_Cmd (setq _TurnLLamp_Cmd __TurnLLamp_Cmd)) _TurnLLamp_Cmd)
  (:TurnRLamp_Cmd
   (&optional __TurnRLamp_Cmd)
   (if __TurnRLamp_Cmd (setq _TurnRLamp_Cmd __TurnRLamp_Cmd)) _TurnRLamp_Cmd)
  (:BackLamp_Cmd
   (&optional __BackLamp_Cmd)
   (if __BackLamp_Cmd (setq _BackLamp_Cmd __BackLamp_Cmd)) _BackLamp_Cmd)
  (:Buzzer_Cmd
   (&optional __Buzzer_Cmd)
   (if __Buzzer_Cmd (setq _Buzzer_Cmd __Buzzer_Cmd)) _Buzzer_Cmd)
  (:Horn_Cmd
   (&optional __Horn_Cmd)
   (if __Horn_Cmd (setq _Horn_Cmd __Horn_Cmd)) _Horn_Cmd)
  (:RunLamp_Cmd
   (&optional __RunLamp_Cmd)
   (if __RunLamp_Cmd (setq _RunLamp_Cmd __RunLamp_Cmd)) _RunLamp_Cmd)
  (:BrkLamp_Cmd
   (&optional __BrkLamp_Cmd)
   (if __BrkLamp_Cmd (setq _BrkLamp_Cmd __BrkLamp_Cmd)) _BrkLamp_Cmd)
  (:FogLamp_Cmd
   (&optional __FogLamp_Cmd)
   (if __FogLamp_Cmd (setq _FogLamp_Cmd __FogLamp_Cmd)) _FogLamp_Cmd)
  (:WidthLamp_Cmd
   (&optional __WidthLamp_Cmd)
   (if __WidthLamp_Cmd (setq _WidthLamp_Cmd __WidthLamp_Cmd)) _WidthLamp_Cmd)
  (:LampCmd_RollCnt
   (&optional __LampCmd_RollCnt)
   (if __LampCmd_RollCnt (setq _LampCmd_RollCnt __LampCmd_RollCnt)) _LampCmd_RollCnt)
  (:LampCmd_Checksum
   (&optional __LampCmd_Checksum)
   (if __LampCmd_Checksum (setq _LampCmd_Checksum __LampCmd_Checksum)) _LampCmd_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _LampCmd_Active
    1
    ;; int8 _HeadLamp_Cmd
    1
    ;; int8 _DblFlashLamp_Cmd
    1
    ;; int8 _TurnLLamp_Cmd
    1
    ;; int8 _TurnRLamp_Cmd
    1
    ;; int8 _BackLamp_Cmd
    1
    ;; int8 _Buzzer_Cmd
    1
    ;; int8 _Horn_Cmd
    1
    ;; int8 _RunLamp_Cmd
    1
    ;; int8 _BrkLamp_Cmd
    1
    ;; int8 _FogLamp_Cmd
    1
    ;; int8 _WidthLamp_Cmd
    1
    ;; int32 _LampCmd_RollCnt
    4
    ;; int32 _LampCmd_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _LampCmd_Active
       (write-byte _LampCmd_Active s)
     ;; int8 _HeadLamp_Cmd
       (write-byte _HeadLamp_Cmd s)
     ;; int8 _DblFlashLamp_Cmd
       (write-byte _DblFlashLamp_Cmd s)
     ;; int8 _TurnLLamp_Cmd
       (write-byte _TurnLLamp_Cmd s)
     ;; int8 _TurnRLamp_Cmd
       (write-byte _TurnRLamp_Cmd s)
     ;; int8 _BackLamp_Cmd
       (write-byte _BackLamp_Cmd s)
     ;; int8 _Buzzer_Cmd
       (write-byte _Buzzer_Cmd s)
     ;; int8 _Horn_Cmd
       (write-byte _Horn_Cmd s)
     ;; int8 _RunLamp_Cmd
       (write-byte _RunLamp_Cmd s)
     ;; int8 _BrkLamp_Cmd
       (write-byte _BrkLamp_Cmd s)
     ;; int8 _FogLamp_Cmd
       (write-byte _FogLamp_Cmd s)
     ;; int8 _WidthLamp_Cmd
       (write-byte _WidthLamp_Cmd s)
     ;; int32 _LampCmd_RollCnt
       (write-long _LampCmd_RollCnt s)
     ;; int32 _LampCmd_Checksum
       (write-long _LampCmd_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _LampCmd_Active
     (setq _LampCmd_Active (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _LampCmd_Active 127) (setq _LampCmd_Active (- _LampCmd_Active 256)))
   ;; int8 _HeadLamp_Cmd
     (setq _HeadLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _HeadLamp_Cmd 127) (setq _HeadLamp_Cmd (- _HeadLamp_Cmd 256)))
   ;; int8 _DblFlashLamp_Cmd
     (setq _DblFlashLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _DblFlashLamp_Cmd 127) (setq _DblFlashLamp_Cmd (- _DblFlashLamp_Cmd 256)))
   ;; int8 _TurnLLamp_Cmd
     (setq _TurnLLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _TurnLLamp_Cmd 127) (setq _TurnLLamp_Cmd (- _TurnLLamp_Cmd 256)))
   ;; int8 _TurnRLamp_Cmd
     (setq _TurnRLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _TurnRLamp_Cmd 127) (setq _TurnRLamp_Cmd (- _TurnRLamp_Cmd 256)))
   ;; int8 _BackLamp_Cmd
     (setq _BackLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _BackLamp_Cmd 127) (setq _BackLamp_Cmd (- _BackLamp_Cmd 256)))
   ;; int8 _Buzzer_Cmd
     (setq _Buzzer_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Buzzer_Cmd 127) (setq _Buzzer_Cmd (- _Buzzer_Cmd 256)))
   ;; int8 _Horn_Cmd
     (setq _Horn_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Horn_Cmd 127) (setq _Horn_Cmd (- _Horn_Cmd 256)))
   ;; int8 _RunLamp_Cmd
     (setq _RunLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _RunLamp_Cmd 127) (setq _RunLamp_Cmd (- _RunLamp_Cmd 256)))
   ;; int8 _BrkLamp_Cmd
     (setq _BrkLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _BrkLamp_Cmd 127) (setq _BrkLamp_Cmd (- _BrkLamp_Cmd 256)))
   ;; int8 _FogLamp_Cmd
     (setq _FogLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _FogLamp_Cmd 127) (setq _FogLamp_Cmd (- _FogLamp_Cmd 256)))
   ;; int8 _WidthLamp_Cmd
     (setq _WidthLamp_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _WidthLamp_Cmd 127) (setq _WidthLamp_Cmd (- _WidthLamp_Cmd 256)))
   ;; int32 _LampCmd_RollCnt
     (setq _LampCmd_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _LampCmd_Checksum
     (setq _LampCmd_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_BodyCmd :md5sum-) "d293b40475c67e82549c2ea01e9369b9")
(setf (get e_car_msgs::ADCU_BodyCmd :datatype-) "e_car_msgs/ADCU_BodyCmd")
(setf (get e_car_msgs::ADCU_BodyCmd :definition-)
      "Header header

int8 LampCmd_Active

int8 HeadLamp_Cmd

int8 DblFlashLamp_Cmd

int8 TurnLLamp_Cmd

int8 TurnRLamp_Cmd

int8 BackLamp_Cmd

int8 Buzzer_Cmd

int8 Horn_Cmd

int8 RunLamp_Cmd

int8 BrkLamp_Cmd

int8 FogLamp_Cmd

int8 WidthLamp_Cmd

int32 LampCmd_RollCnt

int32 LampCmd_Checksum
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



(provide :e_car_msgs/ADCU_BodyCmd "d293b40475c67e82549c2ea01e9369b9")


