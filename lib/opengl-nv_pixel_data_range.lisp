;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_pixel_data_range

(defconstant +write-pixel-data-range-nv+ #x8878) 
(defconstant +read-pixel-data-range-nv+ #x8879) 
(defconstant +write-pixel-data-range-length-nv+ #x887A) 
(defconstant +read-pixel-data-range-length-nv+ #x887B) 
(defconstant +write-pixel-data-range-pointer-nv+ #x887C) 
(defconstant +read-pixel-data-range-pointer-nv+ #x887D) 
(defconstant +write-pixel-data-range-nv+ #x8878) 
(defconstant +read-pixel-data-range-nv+ #x8879) 
(defconstant +write-pixel-data-range-length-nv+ #x887A) 
(defconstant +read-pixel-data-range-length-nv+ #x887B) 
(defconstant +write-pixel-data-range-pointer-nv+ #x887C) 
(defconstant +read-pixel-data-range-pointer-nv+ #x887D) 
(defglextfun "FlushPixelDataRangeNV" flush-pixel-data-range-nv :return "void"
 :args ((:name |target| :type |PixelDataRangeTargetNV| :direction :in))
 :category "NV_pixel_data_range" :deprecated nil :version "1.2") 
(defglextfun "PixelDataRangeNV" pixel-data-range-nv :return "void" :args
 ((:name |target| :type |PixelDataRangeTargetNV| :direction :in)
  (:name |length| :type |SizeI| :direction :in)
  (:name |pointer| :type |Void| :direction :out :array t :size length))
 :category "NV_pixel_data_range" :deprecated nil :version "1.2") 
(make-extension-loader |NV_pixel_data_range|
 (("FlushPixelDataRangeNV" flush-pixel-data-range-nv :return "void" :args
   ((:name |target| :type |PixelDataRangeTargetNV| :direction :in)) :category
   "NV_pixel_data_range" :deprecated nil :version "1.2")
  ("PixelDataRangeNV" pixel-data-range-nv :return "void" :args
   ((:name |target| :type |PixelDataRangeTargetNV| :direction :in)
    (:name |length| :type |SizeI| :direction :in)
    (:name |pointer| :type |Void| :direction :out :array t :size length))
   :category "NV_pixel_data_range" :deprecated nil :version "1.2"))) 
