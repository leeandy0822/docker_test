; Auto-generated. Do not edit!


(cl:in-package sound_localize-msg)


;//! \htmlinclude SoundRaw.msg.html

(cl:defclass <SoundRaw> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SoundRaw (<SoundRaw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundRaw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundRaw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_localize-msg:<SoundRaw> is deprecated: use sound_localize-msg:SoundRaw instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SoundRaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_localize-msg:header-val is deprecated.  Use sound_localize-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SoundRaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_localize-msg:data-val is deprecated.  Use sound_localize-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundRaw>) ostream)
  "Serializes a message object of type '<SoundRaw>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundRaw>) istream)
  "Deserializes a message object of type '<SoundRaw>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundRaw>)))
  "Returns string type for a message object of type '<SoundRaw>"
  "sound_localize/SoundRaw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundRaw)))
  "Returns string type for a message object of type 'SoundRaw"
  "sound_localize/SoundRaw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundRaw>)))
  "Returns md5sum for a message object of type '<SoundRaw>"
  "dc47eb145a11cbe02d6c8cb8248a4099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundRaw)))
  "Returns md5sum for a message object of type 'SoundRaw"
  "dc47eb145a11cbe02d6c8cb8248a4099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundRaw>)))
  "Returns full string definition for message of type '<SoundRaw>"
  (cl:format cl:nil "Header header~%int16[] data ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundRaw)))
  "Returns full string definition for message of type 'SoundRaw"
  (cl:format cl:nil "Header header~%int16[] data ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundRaw>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundRaw>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundRaw
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
