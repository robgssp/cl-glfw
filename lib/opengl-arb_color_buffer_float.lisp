;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:gl) 

;;;; ARB_color_buffer_float

(defconstant +rgba-float-mode-arb+ #x8820) 
(defconstant +clamp-vertex-color-arb+ #x891A) 
(defconstant +clamp-fragment-color-arb+ #x891B) 
(defconstant +clamp-read-color-arb+ #x891C) 
(defconstant +fixed-only-arb+ #x891D) 
(defglextfun
 (("ClampColorARB" clamp-color-arb) :args
  ((:name |target| :type |ClampColorTargetARB| :direction :in)
   (:name |clamp| :type |ClampColorModeARB| :direction :in))
  :return ("void") :category ("ARB_color_buffer_float") :version ("1.5")
  :extension nil :glxropcode ("234") :glxflags ("ignore") :glsopcode ("?")
  :offset ("?"))) 