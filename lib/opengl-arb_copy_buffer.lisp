;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_copy_buffer

(defconstant +copy-read-buffer+ #x8F36) 
(defconstant +copy-write-buffer+ #x8F37) 
(defconstant +copy-read-buffer+ #x8F36) 
(defconstant +copy-write-buffer+ #x8F37) 
(defglextfun "CopyBufferSubData" copy-buffer-sub-data :return "void" :args
 ((:name |readTarget| :type |GLenum| :direction :in)
  (:name |writeTarget| :type |GLenum| :direction :in)
  (:name |readOffset| :type |BufferOffset| :direction :in)
  (:name |writeOffset| :type |BufferOffset| :direction :in)
  (:name |size| :type |BufferSize| :direction :in))
 :category "ARB_copy_buffer" :deprecated nil :version "3.0") 
(make-extension-loader |ARB_copy_buffer|
 (("CopyBufferSubData" copy-buffer-sub-data :return "void" :args
   ((:name |readTarget| :type |GLenum| :direction :in)
    (:name |writeTarget| :type |GLenum| :direction :in)
    (:name |readOffset| :type |BufferOffset| :direction :in)
    (:name |writeOffset| :type |BufferOffset| :direction :in)
    (:name |size| :type |BufferSize| :direction :in))
   :category "ARB_copy_buffer" :deprecated nil :version "3.0"))) 
