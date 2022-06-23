; Auto-generated. Do not edit!


(cl:in-package agv_sim_control_test-msg)


;//! \htmlinclude cmd_xyw.msg.html

(cl:defclass <cmd_xyw> (roslisp-msg-protocol:ros-message)
  ((vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (vw
    :reader vw
    :initarg :vw
    :type cl:float
    :initform 0.0))
)

(cl:defclass cmd_xyw (<cmd_xyw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmd_xyw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmd_xyw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_sim_control_test-msg:<cmd_xyw> is deprecated: use agv_sim_control_test-msg:cmd_xyw instead.")))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <cmd_xyw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_sim_control_test-msg:vx-val is deprecated.  Use agv_sim_control_test-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <cmd_xyw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_sim_control_test-msg:vy-val is deprecated.  Use agv_sim_control_test-msg:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vw-val :lambda-list '(m))
(cl:defmethod vw-val ((m <cmd_xyw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_sim_control_test-msg:vw-val is deprecated.  Use agv_sim_control_test-msg:vw instead.")
  (vw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmd_xyw>) ostream)
  "Serializes a message object of type '<cmd_xyw>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmd_xyw>) istream)
  "Deserializes a message object of type '<cmd_xyw>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmd_xyw>)))
  "Returns string type for a message object of type '<cmd_xyw>"
  "agv_sim_control_test/cmd_xyw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd_xyw)))
  "Returns string type for a message object of type 'cmd_xyw"
  "agv_sim_control_test/cmd_xyw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmd_xyw>)))
  "Returns md5sum for a message object of type '<cmd_xyw>"
  "7b05b0d6d04a58ba4ceea97f1ea581c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmd_xyw)))
  "Returns md5sum for a message object of type 'cmd_xyw"
  "7b05b0d6d04a58ba4ceea97f1ea581c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmd_xyw>)))
  "Returns full string definition for message of type '<cmd_xyw>"
  (cl:format cl:nil "float32 vx~%float32 vy~%float32 vw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmd_xyw)))
  "Returns full string definition for message of type 'cmd_xyw"
  (cl:format cl:nil "float32 vx~%float32 vy~%float32 vw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmd_xyw>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmd_xyw>))
  "Converts a ROS message object to a list"
  (cl:list 'cmd_xyw
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vw (vw msg))
))
