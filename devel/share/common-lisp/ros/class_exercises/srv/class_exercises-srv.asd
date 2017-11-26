
(cl:in-package :asdf)

(defsystem "class_exercises-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DistanceTo" :depends-on ("_package_DistanceTo"))
    (:file "_package_DistanceTo" :depends-on ("_package"))
  ))