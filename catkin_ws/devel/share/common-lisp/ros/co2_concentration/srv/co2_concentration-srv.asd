
(cl:in-package :asdf)

(defsystem "co2_concentration-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "co2_trans" :depends-on ("_package_co2_trans"))
    (:file "_package_co2_trans" :depends-on ("_package"))
  ))