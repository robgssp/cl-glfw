;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:gl) 

;;;; EXT_index_func

(defconstant +index-test-ext+ #x81B5) 
(defconstant +index-test-func-ext+ #x81B6) 
(defconstant +index-test-ref-ext+ #x81B7) 
(defglextfun
 (("IndexFuncEXT" index-func-ext) :args
  ((:name |func| :type |IndexFunctionEXT| :direction :in)
   (:name |ref| :type |ClampedFloat32| :direction :in))
  :return ("void") :category ("EXT_index_func") :version ("1.1") :extension
  ("soft") :glxflags ("ignore") :glsopcode ("0x01D2") :offset ("539"))) 