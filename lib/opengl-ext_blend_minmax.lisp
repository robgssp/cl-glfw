;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_blend_minmax

(defconstant +blend-equation-rgb+ #x8009) 
(defconstant +blend-equation-rgb-ext+ #x8009) 
(defconstant +blend-equation-rgb-oes+ #x8009) 
(defglextfun "BlendEquationEXT" blend-equation-ext :return "void" :args
 ((:name |mode| :type |BlendEquationModeEXT| :direction :in)) :category
 "EXT_blend_minmax" :deprecated nil :version "1.0") 
