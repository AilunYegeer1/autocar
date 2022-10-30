
(cl:in-package :asdf)

(defsystem "ls01b_v2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "resolution" :depends-on ("_package_resolution"))
    (:file "_package_resolution" :depends-on ("_package"))
  ))