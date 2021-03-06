;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_shader_buffer_load

(defconstant +buffer-gpu-address-nv+ #x8F1D) 
(defconstant +buffer-gpu-address-nv+ #x8F1D) 
(defconstant +gpu-address-nv+ #x8F34) 
(defconstant +max-shader-buffer-address-nv+ #x8F35) 
(defglextfun "ProgramUniformui64vNV" program-uniformui-64v-nv :return "void"
 :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in :array t :size count))
 :category "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "ProgramUniformui64NV" program-uniformui-64-nv :return "void"
 :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in))
 :category "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "GetUniformui64vNV" get-uniformui-64v-nv :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |params| :type |UInt64EXT| :direction :out :array t :size
   (|program| |location|)))
 :category "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "Uniformui64vNV" uniformui-64v-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in :array t :size count))
 :category "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "Uniformui64NV" uniformui-64-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in))
 :category "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "GetIntegerui64vNV" get-integerui-64v-nv :return "void" :args
 ((:name |value| :type |GLenum| :direction :in)
  (:name |result| :type |UInt64EXT| :direction :out :array t :size (|value|)))
 :category "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "GetNamedBufferParameterui64vNV"
 get-named-buffer-parameterui-64v-nv :return "void" :args
 ((:name |buffer| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |UInt64EXT| :direction :out :array t :size (|pname|)))
 :category "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "GetBufferParameterui64vNV" get-buffer-parameterui-64v-nv :return
 "void" :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |UInt64EXT| :direction :out :array t :size (|pname|)))
 :category "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "IsNamedBufferResidentNV" is-named-buffer-resident-nv :return
 "Boolean" :args ((:name |buffer| :type |UInt32| :direction :in)) :category
 "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "MakeNamedBufferNonResidentNV" make-named-buffer-non-resident-nv
 :return "void" :args ((:name |buffer| :type |UInt32| :direction :in))
 :category "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "MakeNamedBufferResidentNV" make-named-buffer-resident-nv :return
 "void" :args
 ((:name |buffer| :type |UInt32| :direction :in)
  (:name |access| :type |GLenum| :direction :in))
 :category "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "IsBufferResidentNV" is-buffer-resident-nv :return "Boolean" :args
 ((:name |target| :type |GLenum| :direction :in)) :category
 "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "MakeBufferNonResidentNV" make-buffer-non-resident-nv :return
 "void" :args ((:name |target| :type |GLenum| :direction :in)) :category
 "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(defglextfun "MakeBufferResidentNV" make-buffer-resident-nv :return "void"
 :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |access| :type |GLenum| :direction :in))
 :category "NV_shader_buffer_load" :deprecated nil :version "1.2") 
(make-extension-loader |NV_shader_buffer_load|
 (("ProgramUniformui64vNV" program-uniformui-64v-nv :return "void" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in :array t :size count))
   :category "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("ProgramUniformui64NV" program-uniformui-64-nv :return "void" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in))
   :category "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("GetUniformui64vNV" get-uniformui-64v-nv :return "void" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |params| :type |UInt64EXT| :direction :out :array t :size
     (|program| |location|)))
   :category "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("Uniformui64vNV" uniformui-64v-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in :array t :size count))
   :category "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("Uniformui64NV" uniformui-64-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in))
   :category "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("GetIntegerui64vNV" get-integerui-64v-nv :return "void" :args
   ((:name |value| :type |GLenum| :direction :in)
    (:name |result| :type |UInt64EXT| :direction :out :array t :size
     (|value|)))
   :category "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("GetNamedBufferParameterui64vNV" get-named-buffer-parameterui-64v-nv :return
   "void" :args
   ((:name |buffer| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |UInt64EXT| :direction :out :array t :size
     (|pname|)))
   :category "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("GetBufferParameterui64vNV" get-buffer-parameterui-64v-nv :return "void"
   :args
   ((:name |target| :type |GLenum| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |UInt64EXT| :direction :out :array t :size
     (|pname|)))
   :category "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("IsNamedBufferResidentNV" is-named-buffer-resident-nv :return "Boolean"
   :args ((:name |buffer| :type |UInt32| :direction :in)) :category
   "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("MakeNamedBufferNonResidentNV" make-named-buffer-non-resident-nv :return
   "void" :args ((:name |buffer| :type |UInt32| :direction :in)) :category
   "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("MakeNamedBufferResidentNV" make-named-buffer-resident-nv :return "void"
   :args
   ((:name |buffer| :type |UInt32| :direction :in)
    (:name |access| :type |GLenum| :direction :in))
   :category "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("IsBufferResidentNV" is-buffer-resident-nv :return "Boolean" :args
   ((:name |target| :type |GLenum| :direction :in)) :category
   "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("MakeBufferNonResidentNV" make-buffer-non-resident-nv :return "void" :args
   ((:name |target| :type |GLenum| :direction :in)) :category
   "NV_shader_buffer_load" :deprecated nil :version "1.2")
  ("MakeBufferResidentNV" make-buffer-resident-nv :return "void" :args
   ((:name |target| :type |GLenum| :direction :in)
    (:name |access| :type |GLenum| :direction :in))
   :category "NV_shader_buffer_load" :deprecated nil :version "1.2"))) 
