;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ati_map_object_buffer

(defglextfun "UnmapObjectBufferATI" unmap-object-buffer-ati :return "void"
 :args ((:name |buffer| :type |UInt32| :direction :in)) :category
 "ATI_map_object_buffer" :deprecated nil :version "1.2") 
(defglextfun "MapObjectBufferATI" map-object-buffer-ati :return "VoidPointer"
 :args ((:name |buffer| :type |UInt32| :direction :in)) :category
 "ATI_map_object_buffer" :deprecated nil :version "1.2") 
