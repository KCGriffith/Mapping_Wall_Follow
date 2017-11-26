
(cl:in-package :asdf)

(defsystem "control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "behavior" :depends-on ("_package_behavior"))
    (:file "_package_behavior" :depends-on ("_package"))
  ))