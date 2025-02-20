;; Auto-generated. Do not edit!


(when (boundp 'sound_localize::SoundRode)
  (if (not (find-package "SOUND_LOCALIZE"))
    (make-package "SOUND_LOCALIZE"))
  (shadow 'SoundRode (find-package "SOUND_LOCALIZE")))
(unless (find-package "SOUND_LOCALIZE::SOUNDRODE")
  (make-package "SOUND_LOCALIZE::SOUNDRODE"))

(in-package "ROS")
;;//! \htmlinclude SoundRode.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sound_localize::SoundRode
  :super ros::object
  :slots (_header _data ))

(defmethod sound_localize::SoundRode
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get sound_localize::SoundRode :md5sum-) "fb60495edd59d3fcf90e173153ae8a9a")
(setf (get sound_localize::SoundRode :datatype-) "sound_localize/SoundRode")
(setf (get sound_localize::SoundRode :definition-)
      "Header header
float64[] data 

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



(provide :sound_localize/SoundRode "fb60495edd59d3fcf90e173153ae8a9a")


