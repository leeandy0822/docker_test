;; Auto-generated. Do not edit!


(when (boundp 'sound_localize::SoundBearing)
  (if (not (find-package "SOUND_LOCALIZE"))
    (make-package "SOUND_LOCALIZE"))
  (shadow 'SoundBearing (find-package "SOUND_LOCALIZE")))
(unless (find-package "SOUND_LOCALIZE::SOUNDBEARING")
  (make-package "SOUND_LOCALIZE::SOUNDBEARING"))

(in-package "ROS")
;;//! \htmlinclude SoundBearing.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sound_localize::SoundBearing
  :super ros::object
  :slots (_header _azimuth _elevation _obj_id ))

(defmethod sound_localize::SoundBearing
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:azimuth __azimuth) 0.0)
    ((:elevation __elevation) 0.0)
    ((:obj_id __obj_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _azimuth (float __azimuth))
   (setq _elevation (float __elevation))
   (setq _obj_id (round __obj_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:obj_id
   (&optional __obj_id)
   (if __obj_id (setq _obj_id __obj_id)) _obj_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _azimuth
    8
    ;; float64 _elevation
    8
    ;; uint16 _obj_id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _elevation
       (sys::poke _elevation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _obj_id
       (write-word _obj_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _azimuth
     (setq _azimuth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _elevation
     (setq _elevation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _obj_id
     (setq _obj_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get sound_localize::SoundBearing :md5sum-) "bde206005e1aebb168c424b301275f7c")
(setf (get sound_localize::SoundBearing :datatype-) "sound_localize/SoundBearing")
(setf (get sound_localize::SoundBearing :definition-)
      "Header header
float64 azimuth
float64 elevation
uint16 obj_id

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



(provide :sound_localize/SoundBearing "bde206005e1aebb168c424b301275f7c")


