;; Auto-generated. Do not edit!


(when (boundp 'ls01b_v2::resolution)
  (if (not (find-package "LS01B_V2"))
    (make-package "LS01B_V2"))
  (shadow 'resolution (find-package "LS01B_V2")))
(unless (find-package "LS01B_V2::RESOLUTION")
  (make-package "LS01B_V2::RESOLUTION"))
(unless (find-package "LS01B_V2::RESOLUTIONREQUEST")
  (make-package "LS01B_V2::RESOLUTIONREQUEST"))
(unless (find-package "LS01B_V2::RESOLUTIONRESPONSE")
  (make-package "LS01B_V2::RESOLUTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass ls01b_v2::resolutionRequest
  :super ros::object
  :slots (_resolution ))

(defmethod ls01b_v2::resolutionRequest
  (:init
   (&key
    ((:resolution __resolution) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _resolution __resolution)
   self)
  (:resolution
   (&rest __resolution)
   (if (keywordp (car __resolution))
       (send* _resolution __resolution)
     (progn
       (if __resolution (setq _resolution (car __resolution)))
       _resolution)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _resolution
    (send _resolution :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _resolution
       (send _resolution :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _resolution
     (send _resolution :deserialize buf ptr-) (incf ptr- (send _resolution :serialization-length))
   ;;
   self)
  )

(defclass ls01b_v2::resolutionResponse
  :super ros::object
  :slots (_status ))

(defmethod ls01b_v2::resolutionResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ls01b_v2::resolution
  :super ros::object
  :slots ())

(setf (get ls01b_v2::resolution :md5sum-) "e7c237841da6430c0287676ce81f71be")
(setf (get ls01b_v2::resolution :datatype-) "ls01b_v2/resolution")
(setf (get ls01b_v2::resolution :request) ls01b_v2::resolutionRequest)
(setf (get ls01b_v2::resolution :response) ls01b_v2::resolutionResponse)

(defmethod ls01b_v2::resolutionRequest
  (:response () (instance ls01b_v2::resolutionResponse :init)))

(setf (get ls01b_v2::resolutionRequest :md5sum-) "e7c237841da6430c0287676ce81f71be")
(setf (get ls01b_v2::resolutionRequest :datatype-) "ls01b_v2/resolutionRequest")
(setf (get ls01b_v2::resolutionRequest :definition-)
      "std_msgs/Float64 resolution

================================================================================
MSG: std_msgs/Float64
---
bool status

")

(setf (get ls01b_v2::resolutionResponse :md5sum-) "e7c237841da6430c0287676ce81f71be")
(setf (get ls01b_v2::resolutionResponse :datatype-) "ls01b_v2/resolutionResponse")
(setf (get ls01b_v2::resolutionResponse :definition-)
      "std_msgs/Float64 resolution

================================================================================
MSG: std_msgs/Float64
---
bool status

")



(provide :ls01b_v2/resolution "e7c237841da6430c0287676ce81f71be")


