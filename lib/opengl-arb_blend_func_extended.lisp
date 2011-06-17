;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_blend_func_extended

(defconstant +src1-color+ #x88F9) 
(defconstant +one-minus-src1-color+ #x88FA) 
(defconstant +one-minus-src1-alpha+ #x88FB) 
(defconstant +max-dual-source-draw-buffers+ #x88FC) 
(defconstant +src1-color+ #x88F9) 
(defconstant +one-minus-src1-color+ #x88FA) 
(defconstant +one-minus-src1-alpha+ #x88FB) 
(defconstant +max-dual-source-draw-buffers+ #x88FC) 
(defglextfun "GetFragDataIndex" get-frag-data-index :return "Int32" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |name| :type |Char| :direction :in :array t))
 :category "ARB_blend_func_extended" :deprecated nil :version "1.2") 
(defglextfun "BindFragDataLocationIndexed" bind-frag-data-location-indexed
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |colorNumber| :type |UInt32| :direction :in)
  (:name |index| :type |UInt32| :direction :in)
  (:name |name| :type |Char| :direction :in :array t))
 :category "ARB_blend_func_extended" :deprecated nil :version "1.2") 
(make-extension-loader |ARB_blend_func_extended|
 (("GetFragDataIndex" get-frag-data-index :return "Int32" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |name| :type |Char| :direction :in :array t))
   :category "ARB_blend_func_extended" :deprecated nil :version "1.2")
  ("BindFragDataLocationIndexed" bind-frag-data-location-indexed :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |colorNumber| :type |UInt32| :direction :in)
    (:name |index| :type |UInt32| :direction :in)
    (:name |name| :type |Char| :direction :in :array t))
   :category "ARB_blend_func_extended" :deprecated nil :version "1.2"))) 
