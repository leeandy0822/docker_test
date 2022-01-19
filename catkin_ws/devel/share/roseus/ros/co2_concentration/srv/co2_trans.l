;; Auto-generated. Do not edit!


(when (boundp 'co2_concentration::co2_trans)
  (if (not (find-package "CO2_CONCENTRATION"))
    (make-package "CO2_CONCENTRATION"))
  (shadow 'co2_trans (find-package "CO2_CONCENTRATION")))
(unless (find-package "CO2_CONCENTRATION::CO2_TRANS")
  (make-package "CO2_CONCENTRATION::CO2_TRANS"))
(unless (find-package "CO2_CONCENTRATION::CO2_TRANSREQUEST")
  (make-package "CO2_CONCENTRATION::CO2_TRANSREQUEST"))
(unless (find-package "CO2_CONCENTRATION::CO2_TRANSRESPONSE")
  (make-package "CO2_CONCENTRATION::CO2_TRANSRESPONSE"))

(in-package "ROS")





(defclass co2_concentration::co2_transRequest
  :super ros::object
  :slots (_x ))

(defmethod co2_concentration::co2_transRequest
  (:init
   (&key
    ((:x __x) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass co2_concentration::co2_transResponse
  :super ros::object
  :slots (_y ))

(defmethod co2_concentration::co2_transResponse
  (:init
   (&key
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _y (float __y))
   self)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass co2_concentration::co2_trans
  :super ros::object
  :slots ())

(setf (get co2_concentration::co2_trans :md5sum-) "5cb65b8afe9eca1ca87a1525d6a0ffc2")
(setf (get co2_concentration::co2_trans :datatype-) "co2_concentration/co2_trans")
(setf (get co2_concentration::co2_trans :request) co2_concentration::co2_transRequest)
(setf (get co2_concentration::co2_trans :response) co2_concentration::co2_transResponse)

(defmethod co2_concentration::co2_transRequest
  (:response () (instance co2_concentration::co2_transResponse :init)))

(setf (get co2_concentration::co2_transRequest :md5sum-) "5cb65b8afe9eca1ca87a1525d6a0ffc2")
(setf (get co2_concentration::co2_transRequest :datatype-) "co2_concentration/co2_transRequest")
(setf (get co2_concentration::co2_transRequest :definition-)
      "float32 x
---
float32 y

")

(setf (get co2_concentration::co2_transResponse :md5sum-) "5cb65b8afe9eca1ca87a1525d6a0ffc2")
(setf (get co2_concentration::co2_transResponse :datatype-) "co2_concentration/co2_transResponse")
(setf (get co2_concentration::co2_transResponse :definition-)
      "float32 x
---
float32 y

")



(provide :co2_concentration/co2_trans "5cb65b8afe9eca1ca87a1525d6a0ffc2")


