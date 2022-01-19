; Auto-generated. Do not edit!


(cl:in-package sound_localize-msg)


;//! \htmlinclude SoundBearing.msg.html

(cl:defclass <SoundBearing> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0)
   (elevation
    :reader elevation
    :initarg :elevation
    :type cl:float
    :initform 0.0)
   (obj_id
    :reader obj_id
    :initarg :obj_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SoundBearing (<SoundBearing>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundBearing>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundBearing)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_localize-msg:<SoundBearing> is deprecated: use sound_localize-msg:SoundBearing instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SoundBearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_localize-msg:header-val is deprecated.  Use sound_localize-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <SoundBearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_localize-msg:azimuth-val is deprecated.  Use sound_localize-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'elevation-val :lambda-list '(m))
(cl:defmethod elevation-val ((m <SoundBearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_localize-msg:elevation-val is deprecated.  Use sound_localize-msg:elevation instead.")
  (elevation m))

(cl:ensure-generic-function 'obj_id-val :lambda-list '(m))
(cl:defmethod obj_id-val ((m <SoundBearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_localize-msg:obj_id-val is deprecated.  Use sound_localize-msg:obj_id instead.")
  (obj_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundBearing>) ostream)
  "Serializes a message object of type '<SoundBearing>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'elevation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obj_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obj_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundBearing>) istream)
  "Deserializes a message object of type '<SoundBearing>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elevation) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obj_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obj_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundBearing>)))
  "Returns string type for a message object of type '<SoundBearing>"
  "sound_localize/SoundBearing")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundBearing)))
  "Returns string type for a message object of type 'SoundBearing"
  "sound_localize/SoundBearing")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundBearing>)))
  "Returns md5sum for a message object of type '<SoundBearing>"
  "bde206005e1aebb168c424b301275f7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundBearing)))
  "Returns md5sum for a message object of type 'SoundBearing"
  "bde206005e1aebb168c424b301275f7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundBearing>)))
  "Returns full string definition for message of type '<SoundBearing>"
  (cl:format cl:nil "Header header~%float64 azimuth~%float64 elevation~%uint16 obj_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundBearing)))
  "Returns full string definition for message of type 'SoundBearing"
  (cl:format cl:nil "Header header~%float64 azimuth~%float64 elevation~%uint16 obj_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundBearing>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundBearing>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundBearing
    (cl:cons ':header (header msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':elevation (elevation msg))
    (cl:cons ':obj_id (obj_id msg))
))
