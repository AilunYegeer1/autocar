; Auto-generated. Do not edit!


(cl:in-package ls01b_v2-srv)


;//! \htmlinclude resolution-request.msg.html

(cl:defclass <resolution-request> (roslisp-msg-protocol:ros-message)
  ((resolution
    :reader resolution
    :initarg :resolution
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass resolution-request (<resolution-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <resolution-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'resolution-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ls01b_v2-srv:<resolution-request> is deprecated: use ls01b_v2-srv:resolution-request instead.")))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <resolution-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ls01b_v2-srv:resolution-val is deprecated.  Use ls01b_v2-srv:resolution instead.")
  (resolution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <resolution-request>) ostream)
  "Serializes a message object of type '<resolution-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'resolution) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <resolution-request>) istream)
  "Deserializes a message object of type '<resolution-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'resolution) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<resolution-request>)))
  "Returns string type for a service object of type '<resolution-request>"
  "ls01b_v2/resolutionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'resolution-request)))
  "Returns string type for a service object of type 'resolution-request"
  "ls01b_v2/resolutionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<resolution-request>)))
  "Returns md5sum for a message object of type '<resolution-request>"
  "e7c237841da6430c0287676ce81f71be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'resolution-request)))
  "Returns md5sum for a message object of type 'resolution-request"
  "e7c237841da6430c0287676ce81f71be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<resolution-request>)))
  "Returns full string definition for message of type '<resolution-request>"
  (cl:format cl:nil "std_msgs/Float64 resolution~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'resolution-request)))
  "Returns full string definition for message of type 'resolution-request"
  (cl:format cl:nil "std_msgs/Float64 resolution~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <resolution-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'resolution))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <resolution-request>))
  "Converts a ROS message object to a list"
  (cl:list 'resolution-request
    (cl:cons ':resolution (resolution msg))
))
;//! \htmlinclude resolution-response.msg.html

(cl:defclass <resolution-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass resolution-response (<resolution-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <resolution-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'resolution-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ls01b_v2-srv:<resolution-response> is deprecated: use ls01b_v2-srv:resolution-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <resolution-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ls01b_v2-srv:status-val is deprecated.  Use ls01b_v2-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <resolution-response>) ostream)
  "Serializes a message object of type '<resolution-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <resolution-response>) istream)
  "Deserializes a message object of type '<resolution-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<resolution-response>)))
  "Returns string type for a service object of type '<resolution-response>"
  "ls01b_v2/resolutionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'resolution-response)))
  "Returns string type for a service object of type 'resolution-response"
  "ls01b_v2/resolutionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<resolution-response>)))
  "Returns md5sum for a message object of type '<resolution-response>"
  "e7c237841da6430c0287676ce81f71be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'resolution-response)))
  "Returns md5sum for a message object of type 'resolution-response"
  "e7c237841da6430c0287676ce81f71be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<resolution-response>)))
  "Returns full string definition for message of type '<resolution-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'resolution-response)))
  "Returns full string definition for message of type 'resolution-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <resolution-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <resolution-response>))
  "Converts a ROS message object to a list"
  (cl:list 'resolution-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'resolution)))
  'resolution-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'resolution)))
  'resolution-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'resolution)))
  "Returns string type for a service object of type '<resolution>"
  "ls01b_v2/resolution")