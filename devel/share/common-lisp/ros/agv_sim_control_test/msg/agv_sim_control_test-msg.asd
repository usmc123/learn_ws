
(cl:in-package :asdf)

(defsystem "agv_sim_control_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cmd_xyw" :depends-on ("_package_cmd_xyw"))
    (:file "_package_cmd_xyw" :depends-on ("_package"))
  ))