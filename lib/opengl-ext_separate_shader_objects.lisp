;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_separate_shader_objects

(defconstant +active-program-ext+ #x8B8D) 
(defconstant +palette4-rgb8-oes+ #x8B90) 
(defconstant +palette4-rgba8-oes+ #x8B91) 
(defconstant +palette4-r5-g6-b5-oes+ #x8B92) 
(defconstant +palette4-rgba4-oes+ #x8B93) 
(defconstant +palette4-rgb5-a1-oes+ #x8B94) 
(defconstant +palette8-rgb8-oes+ #x8B95) 
(defconstant +palette8-rgba8-oes+ #x8B96) 
(defconstant +palette8-r5-g6-b5-oes+ #x8B97) 
(defconstant +palette8-rgba4-oes+ #x8B98) 
(defconstant +palette8-rgb5-a1-oes+ #x8B99) 
(defconstant +point-size-array-oes+ #x8B9C) 
(defconstant +texture-crop-rect-oes+ #x8B9D) 
(defconstant +matrix-index-array-buffer-binding-oes+ #x8B9E) 
(defconstant +point-size-array-buffer-binding-oes+ #x8B9F) 
(defconstant +active-program-ext+ #x8B8D) 
(defglextfun "CreateShaderProgramEXT" create-shader-program-ext :return
 "UInt32" :args
 ((:name |type| :type |GLenum| :direction :in)
  (:name |string| :type |Char| :direction :in :array t))
 :category "EXT_separate_shader_objects" :deprecated nil :version "1.2") 
(defglextfun "ActiveProgramEXT" active-program-ext :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)) :category
 "EXT_separate_shader_objects" :deprecated nil :version "1.2") 
(defglextfun "UseShaderProgramEXT" use-shader-program-ext :return "void" :args
 ((:name |type| :type |GLenum| :direction :in)
  (:name |program| :type |UInt32| :direction :in))
 :category "EXT_separate_shader_objects" :deprecated nil :version "1.2") 
(make-extension-loader |EXT_separate_shader_objects|
 (("CreateShaderProgramEXT" create-shader-program-ext :return "UInt32" :args
   ((:name |type| :type |GLenum| :direction :in)
    (:name |string| :type |Char| :direction :in :array t))
   :category "EXT_separate_shader_objects" :deprecated nil :version "1.2")
  ("ActiveProgramEXT" active-program-ext :return "void" :args
   ((:name |program| :type |UInt32| :direction :in)) :category
   "EXT_separate_shader_objects" :deprecated nil :version "1.2")
  ("UseShaderProgramEXT" use-shader-program-ext :return "void" :args
   ((:name |type| :type |GLenum| :direction :in)
    (:name |program| :type |UInt32| :direction :in))
   :category "EXT_separate_shader_objects" :deprecated nil :version "1.2"))) 
