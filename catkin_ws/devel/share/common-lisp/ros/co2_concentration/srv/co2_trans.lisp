; Auto-generated. Do not edit!


(cl:in-package co2_concentration-srv)


;//! \htmlinclude co2_trans-request.msg.html

(cl:defclass <co2_trans-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0))
)

(cl:defclass co2_trans-request (<co2_trans-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <co2_trans-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'co2_trans-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name co2_concentration-srv:<co2_trans-request> is deprecated: use co2_concentration-srv:co2_trans-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <co2_trans-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co2_concentration-srv:x-val is deprecated.  Use co2_concentration-srv:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <co2_trans-request>) ostream)
  "Serializes a message object of type '<co2_trans-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <co2_trans-request>) istream)
  "Deserializes a message object of type '<co2_trans-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<co2_trans-request>)))
  "Returns string type for a service object of type '<co2_trans-request>"
  "co2_concentration/co2_transRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'co2_trans-request)))
  "Returns string type for a service object of type 'co2_trans-request"
  "co2_concentration/co2_transRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<co2_trans-request>)))
  "Returns md5sum for a message object of type '<co2_trans-request>"
  "5cb65b8afe9eca1ca87a1525d6a0ffc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'co2_trans-request)))
  "Returns md5sum for a message object of type 'co2_trans-request"
  "5cb65b8afe9eca1ca87a1525d6a0ffc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<co2_trans-request>)))
  "Returns full string definition for message of type '<co2_trans-request>"
  (cl:format cl:nil "float32 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'co2_trans-request)))
  "Returns full string definition for message of type 'co2_trans-request"
  (cl:format cl:nil "float32 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <co2_trans-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <co2_trans-request>))
  "Converts a ROS message object to a list"
  (cl:list 'co2_trans-request
    (cl:cons ':x (x msg))
))
;//! \htmlinclude co2_trans-response.msg.html

(cl:defclass <co2_trans-response> (roslisp-msg-protocol:ros-message)
  ((y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass co2_trans-response (<co2_trans-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <co2_trans-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'co2_trans-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name co2_concentration-srv:<co2_trans-response> is deprecated: use co2_concentration-srv:co2_trans-response instead.")))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <co2_trans-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co2_concentration-srv:y-val is deprecated.  Use co2_concentration-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <co2_trans-response>) ostream)
  "Serializes a message object of type '<co2_trans-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <co2_trans-response>) istream)
  "Deserializes a message object of type '<co2_trans-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<co2_trans-response>)))
  "Returns string type for a service object of type '<co2_trans-response>"
  "co2_concentration/co2_transResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'co2_trans-response)))
  "Returns string type for a service object of type 'co2_trans-response"
  "co2_concentration/co2_transResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<co2_trans-response>)))
  "Returns md5sum for a message object of type '<co2_trans-response>"
  "5cb65b8afe9eca1ca87a1525d6a0ffc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'co2_trans-response)))
  "Returns md5sum for a message object of type 'co2_trans-response"
  "5cb65b8afe9eca1ca87a1525d6a0ffc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<co2_trans-response>)))
  "Returns full string definition for message of type '<co2_trans-response>"
  (cl:format cl:nil "float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'co2_trans-response)))
  "Returns full string definition for message of type 'co2_trans-response"
  (cl:format cl:nil "float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <co2_trans-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <co2_trans-response>))
  "Converts a ROS message object to a list"
  (cl:list 'co2_trans-response
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'co2_trans)))
  'co2_trans-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'co2_trans)))
  'co2_trans-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'co2_trans)))
  "Returns string type for a service object of type '<co2_trans>"
  "co2_concentration/co2_trans")