;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_convolution

(defglextfun "SeparableFilter2DEXT" separable-filter-2d-ext :return "void"
 :args
 ((:name |target| :type |SeparableTargetEXT| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |row| :type |Void| :direction :in :array t :size
   (|target| |format| |type| |width|))
  (:name |column| :type |Void| :direction :in :array t :size
   (|target| |format| |type| |height|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "GetSeparableFilterEXT" get-separable-filter-ext :return "void"
 :args
 ((:name |target| :type |SeparableTargetEXT| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |row| :type |Void| :direction :out :array t :size
   (|target| |format| |type|))
  (:name |column| :type |Void| :direction :out :array t :size
   (|target| |format| |type|))
  (:name |span| :type |Void| :direction :out :array t :size
   (|target| |format| |type|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "GetConvolutionParameterivEXT" get-convolution-parameter-iv-ext
 :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "GetConvolutionParameterfvEXT" get-convolution-parameter-fv-ext
 :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |Float32| :direction :out :array t :size (|pname|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "GetConvolutionFilterEXT" get-convolution-filter-ext :return
 "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |image| :type |Void| :direction :out :array t :size
   (|target| |format| |type|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "CopyConvolutionFilter2DEXT" copy-convolution-filter-2d-ext
 :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |x| :type |WinCoord| :direction :in)
  (:name |y| :type |WinCoord| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "CopyConvolutionFilter1DEXT" copy-convolution-filter-1d-ext
 :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |x| :type |WinCoord| :direction :in)
  (:name |y| :type |WinCoord| :direction :in)
  (:name |width| :type |SizeI| :direction :in))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionParameterivEXT" convolution-parameter-iv-ext :return
 "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |CheckedInt32| :direction :in :array t :size
   (|pname|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionParameteriEXT" convolution-parameter-i-ext :return
 "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |CheckedInt32| :direction :in))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionParameterfvEXT" convolution-parameter-fv-ext :return
 "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |CheckedFloat32| :direction :in :array t :size
   (|pname|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionParameterfEXT" convolution-parameter-f-ext :return
 "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |CheckedFloat32| :direction :in))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionFilter2DEXT" convolution-filter-2d-ext :return "void"
 :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |image| :type |Void| :direction :in :array t :size
   (|format| |type| |width| |height|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionFilter1DEXT" convolution-filter-1d-ext :return "void"
 :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |image| :type |Void| :direction :in :array t :size
   (|format| |type| |width|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
