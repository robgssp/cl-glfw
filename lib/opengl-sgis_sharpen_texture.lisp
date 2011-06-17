;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sgis_sharpen_texture

(defglextfun "GetSharpenTexFuncSGIS" get-sharpen-tex-func-sgis :return "void"
 :args
 ((:name |target| :type |TextureTarget| :direction :in)
  (:name |points| :type |Float32| :direction :out :array t :size (|target|)))
 :category "SGIS_sharpen_texture" :deprecated nil :version "1.0") 
(defglextfun "SharpenTexFuncSGIS" sharpen-tex-func-sgis :return "void" :args
 ((:name |target| :type |TextureTarget| :direction :in)
  (:name |n| :type |SizeI| :direction :in)
  (:name |points| :type |Float32| :direction :in :array t :size n*2))
 :category "SGIS_sharpen_texture" :deprecated nil :version "1.0") 
(make-extension-loader |SGIS_sharpen_texture|
 (("GetSharpenTexFuncSGIS" get-sharpen-tex-func-sgis :return "void" :args
   ((:name |target| :type |TextureTarget| :direction :in)
    (:name |points| :type |Float32| :direction :out :array t :size (|target|)))
   :category "SGIS_sharpen_texture" :deprecated nil :version "1.0")
  ("SharpenTexFuncSGIS" sharpen-tex-func-sgis :return "void" :args
   ((:name |target| :type |TextureTarget| :direction :in)
    (:name |n| :type |SizeI| :direction :in)
    (:name |points| :type |Float32| :direction :in :array t :size n*2))
   :category "SGIS_sharpen_texture" :deprecated nil :version "1.0"))) 
