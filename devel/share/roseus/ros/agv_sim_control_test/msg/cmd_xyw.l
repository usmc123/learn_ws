;; Auto-generated. Do not edit!


(when (boundp 'agv_sim_control_test::cmd_xyw)
  (if (not (find-package "AGV_SIM_CONTROL_TEST"))
    (make-package "AGV_SIM_CONTROL_TEST"))
  (shadow 'cmd_xyw (find-package "AGV_SIM_CONTROL_TEST")))
(unless (find-package "AGV_SIM_CONTROL_TEST::CMD_XYW")
  (make-package "AGV_SIM_CONTROL_TEST::CMD_XYW"))

(in-package "ROS")
;;//! \htmlinclude cmd_xyw.msg.html


(defclass agv_sim_control_test::cmd_xyw
  :super ros::object
  :slots (_vx _vy _vw ))

(defmethod agv_sim_control_test::cmd_xyw
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vw __vw) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vw (float __vw))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vw
   (&optional __vw)
   (if __vw (setq _vw __vw)) _vw)
  (:serialization-length
   ()
   (+
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _vw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vw
       (sys::poke _vw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vw
     (setq _vw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_sim_control_test::cmd_xyw :md5sum-) "7b05b0d6d04a58ba4ceea97f1ea581c4")
(setf (get agv_sim_control_test::cmd_xyw :datatype-) "agv_sim_control_test/cmd_xyw")
(setf (get agv_sim_control_test::cmd_xyw :definition-)
      "float32 vx
float32 vy
float32 vw
")



(provide :agv_sim_control_test/cmd_xyw "7b05b0d6d04a58ba4ceea97f1ea581c4")


