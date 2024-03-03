;; Auto-generated. Do not edit!


(when (boundp 'e_car_msgs::ADCU_SweepCmd)
  (if (not (find-package "E_CAR_MSGS"))
    (make-package "E_CAR_MSGS"))
  (shadow 'ADCU_SweepCmd (find-package "E_CAR_MSGS")))
(unless (find-package "E_CAR_MSGS::ADCU_SWEEPCMD")
  (make-package "E_CAR_MSGS::ADCU_SWEEPCMD"))

(in-package "ROS")
;;//! \htmlinclude ADCU_SweepCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e_car_msgs::ADCU_SweepCmd
  :super ros::object
  :slots (_header _Tgt_SweepMode _Sweep_Cmd _ShakeDust_Cmd _GbgDump_Cmd _FtFenderCtrl_Cmd _SweepEStop_Cmd _BrushWtrValFbd_Cmd _SweepCmd_RollCnt _SweepCmd_Checksum ))

(defmethod e_car_msgs::ADCU_SweepCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Tgt_SweepMode __Tgt_SweepMode) 0)
    ((:Sweep_Cmd __Sweep_Cmd) 0)
    ((:ShakeDust_Cmd __ShakeDust_Cmd) 0)
    ((:GbgDump_Cmd __GbgDump_Cmd) 0)
    ((:FtFenderCtrl_Cmd __FtFenderCtrl_Cmd) 0)
    ((:SweepEStop_Cmd __SweepEStop_Cmd) 0)
    ((:BrushWtrValFbd_Cmd __BrushWtrValFbd_Cmd) 0)
    ((:SweepCmd_RollCnt __SweepCmd_RollCnt) 0)
    ((:SweepCmd_Checksum __SweepCmd_Checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Tgt_SweepMode (round __Tgt_SweepMode))
   (setq _Sweep_Cmd (round __Sweep_Cmd))
   (setq _ShakeDust_Cmd (round __ShakeDust_Cmd))
   (setq _GbgDump_Cmd (round __GbgDump_Cmd))
   (setq _FtFenderCtrl_Cmd (round __FtFenderCtrl_Cmd))
   (setq _SweepEStop_Cmd (round __SweepEStop_Cmd))
   (setq _BrushWtrValFbd_Cmd (round __BrushWtrValFbd_Cmd))
   (setq _SweepCmd_RollCnt (round __SweepCmd_RollCnt))
   (setq _SweepCmd_Checksum (round __SweepCmd_Checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Tgt_SweepMode
   (&optional __Tgt_SweepMode)
   (if __Tgt_SweepMode (setq _Tgt_SweepMode __Tgt_SweepMode)) _Tgt_SweepMode)
  (:Sweep_Cmd
   (&optional __Sweep_Cmd)
   (if __Sweep_Cmd (setq _Sweep_Cmd __Sweep_Cmd)) _Sweep_Cmd)
  (:ShakeDust_Cmd
   (&optional __ShakeDust_Cmd)
   (if __ShakeDust_Cmd (setq _ShakeDust_Cmd __ShakeDust_Cmd)) _ShakeDust_Cmd)
  (:GbgDump_Cmd
   (&optional __GbgDump_Cmd)
   (if __GbgDump_Cmd (setq _GbgDump_Cmd __GbgDump_Cmd)) _GbgDump_Cmd)
  (:FtFenderCtrl_Cmd
   (&optional __FtFenderCtrl_Cmd)
   (if __FtFenderCtrl_Cmd (setq _FtFenderCtrl_Cmd __FtFenderCtrl_Cmd)) _FtFenderCtrl_Cmd)
  (:SweepEStop_Cmd
   (&optional __SweepEStop_Cmd)
   (if __SweepEStop_Cmd (setq _SweepEStop_Cmd __SweepEStop_Cmd)) _SweepEStop_Cmd)
  (:BrushWtrValFbd_Cmd
   (&optional __BrushWtrValFbd_Cmd)
   (if __BrushWtrValFbd_Cmd (setq _BrushWtrValFbd_Cmd __BrushWtrValFbd_Cmd)) _BrushWtrValFbd_Cmd)
  (:SweepCmd_RollCnt
   (&optional __SweepCmd_RollCnt)
   (if __SweepCmd_RollCnt (setq _SweepCmd_RollCnt __SweepCmd_RollCnt)) _SweepCmd_RollCnt)
  (:SweepCmd_Checksum
   (&optional __SweepCmd_Checksum)
   (if __SweepCmd_Checksum (setq _SweepCmd_Checksum __SweepCmd_Checksum)) _SweepCmd_Checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _Tgt_SweepMode
    1
    ;; int8 _Sweep_Cmd
    1
    ;; int8 _ShakeDust_Cmd
    1
    ;; int8 _GbgDump_Cmd
    1
    ;; int8 _FtFenderCtrl_Cmd
    1
    ;; int8 _SweepEStop_Cmd
    1
    ;; int8 _BrushWtrValFbd_Cmd
    1
    ;; int32 _SweepCmd_RollCnt
    4
    ;; int32 _SweepCmd_Checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _Tgt_SweepMode
       (write-byte _Tgt_SweepMode s)
     ;; int8 _Sweep_Cmd
       (write-byte _Sweep_Cmd s)
     ;; int8 _ShakeDust_Cmd
       (write-byte _ShakeDust_Cmd s)
     ;; int8 _GbgDump_Cmd
       (write-byte _GbgDump_Cmd s)
     ;; int8 _FtFenderCtrl_Cmd
       (write-byte _FtFenderCtrl_Cmd s)
     ;; int8 _SweepEStop_Cmd
       (write-byte _SweepEStop_Cmd s)
     ;; int8 _BrushWtrValFbd_Cmd
       (write-byte _BrushWtrValFbd_Cmd s)
     ;; int32 _SweepCmd_RollCnt
       (write-long _SweepCmd_RollCnt s)
     ;; int32 _SweepCmd_Checksum
       (write-long _SweepCmd_Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _Tgt_SweepMode
     (setq _Tgt_SweepMode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Tgt_SweepMode 127) (setq _Tgt_SweepMode (- _Tgt_SweepMode 256)))
   ;; int8 _Sweep_Cmd
     (setq _Sweep_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Sweep_Cmd 127) (setq _Sweep_Cmd (- _Sweep_Cmd 256)))
   ;; int8 _ShakeDust_Cmd
     (setq _ShakeDust_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ShakeDust_Cmd 127) (setq _ShakeDust_Cmd (- _ShakeDust_Cmd 256)))
   ;; int8 _GbgDump_Cmd
     (setq _GbgDump_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _GbgDump_Cmd 127) (setq _GbgDump_Cmd (- _GbgDump_Cmd 256)))
   ;; int8 _FtFenderCtrl_Cmd
     (setq _FtFenderCtrl_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _FtFenderCtrl_Cmd 127) (setq _FtFenderCtrl_Cmd (- _FtFenderCtrl_Cmd 256)))
   ;; int8 _SweepEStop_Cmd
     (setq _SweepEStop_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _SweepEStop_Cmd 127) (setq _SweepEStop_Cmd (- _SweepEStop_Cmd 256)))
   ;; int8 _BrushWtrValFbd_Cmd
     (setq _BrushWtrValFbd_Cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _BrushWtrValFbd_Cmd 127) (setq _BrushWtrValFbd_Cmd (- _BrushWtrValFbd_Cmd 256)))
   ;; int32 _SweepCmd_RollCnt
     (setq _SweepCmd_RollCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _SweepCmd_Checksum
     (setq _SweepCmd_Checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get e_car_msgs::ADCU_SweepCmd :md5sum-) "9fc2cfb79831693da7794ecbd5abc3cc")
(setf (get e_car_msgs::ADCU_SweepCmd :datatype-) "e_car_msgs/ADCU_SweepCmd")
(setf (get e_car_msgs::ADCU_SweepCmd :definition-)
      "Header header

int8 Tgt_SweepMode

int8 Sweep_Cmd

int8 ShakeDust_Cmd

int8 GbgDump_Cmd

int8 FtFenderCtrl_Cmd

int8 SweepEStop_Cmd

int8 BrushWtrValFbd_Cmd

int32 SweepCmd_RollCnt

int32 SweepCmd_Checksum
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



(provide :e_car_msgs/ADCU_SweepCmd "9fc2cfb79831693da7794ecbd5abc3cc")


