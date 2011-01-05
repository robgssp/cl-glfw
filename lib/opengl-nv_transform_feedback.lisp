;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_transform_feedback

(defconstant +transform-feedback-varying-max-length+ #x8C76) 
(defconstant +transform-feedback-varying-max-length-ext+ #x8C76) 
(defconstant +back-primary-color-nv+ #x8C77) 
(defconstant +back-secondary-color-nv+ #x8C78) 
(defconstant +texture-coord-nv+ #x8C79) 
(defconstant +clip-distance-nv+ #x8C7A) 
(defconstant +vertex-id-nv+ #x8C7B) 
(defconstant +primitive-id-nv+ #x8C7C) 
(defconstant +generic-attrib-nv+ #x8C7D) 
(defconstant +transform-feedback-attribs-nv+ #x8C7E) 
(defconstant +transform-feedback-buffer-mode+ #x8C7F) 
(defconstant +transform-feedback-buffer-mode-ext+ #x8C7F) 
(defconstant +transform-feedback-buffer-mode-nv+ #x8C7F) 
(defconstant +max-transform-feedback-separate-components+ #x8C80) 
(defconstant +max-transform-feedback-separate-components-ext+ #x8C80) 
(defconstant +max-transform-feedback-separate-components-nv+ #x8C80) 
(defconstant +active-varyings-nv+ #x8C81) 
(defconstant +active-varying-max-length-nv+ #x8C82) 
(defconstant +transform-feedback-varyings+ #x8C83) 
(defconstant +transform-feedback-varyings-ext+ #x8C83) 
(defconstant +transform-feedback-varyings-nv+ #x8C83) 
(defconstant +transform-feedback-buffer-start+ #x8C84) 
(defconstant +transform-feedback-buffer-start-ext+ #x8C84) 
(defconstant +transform-feedback-buffer-start-nv+ #x8C84) 
(defconstant +transform-feedback-buffer-size+ #x8C85) 
(defconstant +transform-feedback-buffer-size-ext+ #x8C85) 
(defconstant +transform-feedback-buffer-size-nv+ #x8C85) 
(defconstant +transform-feedback-record-nv+ #x8C86) 
(defconstant +primitives-generated+ #x8C87) 
(defconstant +primitives-generated-ext+ #x8C87) 
(defconstant +primitives-generated-nv+ #x8C87) 
(defconstant +transform-feedback-primitives-written+ #x8C88) 
(defconstant +transform-feedback-primitives-written-ext+ #x8C88) 
(defconstant +transform-feedback-primitives-written-nv+ #x8C88) 
(defconstant +rasterizer-discard+ #x8C89) 
(defconstant +rasterizer-discard-ext+ #x8C89) 
(defconstant +rasterizer-discard-nv+ #x8C89) 
(defconstant +max-transform-feedback-interleaved-components+ #x8C8A) 
(defconstant +max-transform-feedback-interleaved-components-ext+ #x8C8A) 
(defconstant +max-transform-feedback-interleaved-attribs-nv+ #x8C8A) 
(defconstant +max-transform-feedback-separate-attribs+ #x8C8B) 
(defconstant +max-transform-feedback-separate-attribs-ext+ #x8C8B) 
(defconstant +max-transform-feedback-separate-attribs-nv+ #x8C8B) 
(defconstant +interleaved-attribs+ #x8C8C) 
(defconstant +interleaved-attribs-ext+ #x8C8C) 
(defconstant +interleaved-attribs-nv+ #x8C8C) 
(defconstant +separate-attribs+ #x8C8D) 
(defconstant +separate-attribs-ext+ #x8C8D) 
(defconstant +separate-attribs-nv+ #x8C8D) 
(defconstant +transform-feedback-buffer+ #x8C8E) 
(defconstant +transform-feedback-buffer-ext+ #x8C8E) 
(defconstant +transform-feedback-buffer-nv+ #x8C8E) 
(defconstant +transform-feedback-buffer-binding+ #x8C8F) 
(defconstant +transform-feedback-buffer-binding-ext+ #x8C8F) 
(defconstant +transform-feedback-buffer-binding-nv+ #x8C8F) 
(defconstant +atc-rgb-amd+ #x8C92) 
(defconstant +atc-rgba-explicit-alpha-amd+ #x8C93) 
(defconstant +back-primary-color-nv+ #x8C77) 
(defconstant +back-secondary-color-nv+ #x8C78) 
(defconstant +texture-coord-nv+ #x8C79) 
(defconstant +clip-distance-nv+ #x8C7A) 
(defconstant +vertex-id-nv+ #x8C7B) 
(defconstant +primitive-id-nv+ #x8C7C) 
(defconstant +generic-attrib-nv+ #x8C7D) 
(defconstant +transform-feedback-attribs-nv+ #x8C7E) 
(defconstant +transform-feedback-buffer-mode-nv+ #x8C7F) 
(defconstant +max-transform-feedback-separate-components-nv+ #x8C80) 
(defconstant +active-varyings-nv+ #x8C81) 
(defconstant +active-varying-max-length-nv+ #x8C82) 
(defconstant +transform-feedback-varyings-nv+ #x8C83) 
(defconstant +transform-feedback-buffer-start-nv+ #x8C84) 
(defconstant +transform-feedback-buffer-size-nv+ #x8C85) 
(defconstant +transform-feedback-record-nv+ #x8C86) 
(defconstant +primitives-generated-nv+ #x8C87) 
(defconstant +transform-feedback-primitives-written-nv+ #x8C88) 
(defconstant +rasterizer-discard-nv+ #x8C89) 
(defconstant +max-transform-feedback-interleaved-attribs-nv+ #x8C8A) 
(defconstant +max-transform-feedback-separate-attribs-nv+ #x8C8B) 
(defconstant +interleaved-attribs-nv+ #x8C8C) 
(defconstant +separate-attribs-nv+ #x8C8D) 
(defconstant +transform-feedback-buffer-nv+ #x8C8E) 
(defconstant +transform-feedback-buffer-binding-nv+ #x8C8F) 
(defconstant +layer-nv+ #x8DAA) 
(defconstant +next-buffer-nv+ #x-2) 
(defconstant +skip-components4-nv+ #x-3) 
(defconstant +skip-components3-nv+ #x-4) 
(defconstant +skip-components2-nv+ #x-5) 
(defconstant +skip-components1-nv+ #x-6) 
(defglextfun "TransformFeedbackStreamAttribsNV"
 transform-feedback-stream-attribs-nv :return "void" :args
 ((:name |count| :type |SizeI| :direction :in)
  (:name |attribs| :type |Int32| :direction :in :array t :size count)
  (:name |nbuffers| :type |SizeI| :direction :in)
  (:name |bufstreams| :type |Int32| :direction :in :array t :size nbuffers)
  (:name |bufferMode| :type |GLenum| :direction :in))
 :category "NV_transform_feedback" :deprecated nil :version "4.1") 
(defglextfun "GetTransformFeedbackVaryingNV" get-transform-feedback-varying-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |index| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :out :array t :size #x1))
 :category "NV_transform_feedback" :deprecated nil :version "1.5") 
(defglextfun "GetActiveVaryingNV" get-active-varying-nv :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |index| :type |UInt32| :direction :in)
  (:name |bufSize| :type |SizeI| :direction :in)
  (:name |length| :type |SizeI| :direction :out :array t :size #x1)
  (:name |size| :type |SizeI| :direction :out :array t :size #x1)
  (:name |type| :type |GLenum| :direction :out :array t :size #x1)
  (:name |name| :type |Char| :direction :out :array t :size
   (|program| |index| |bufSize|)))
 :category "NV_transform_feedback" :deprecated nil :version "1.5") 
(defglextfun "GetVaryingLocationNV" get-varying-location-nv :return "Int32"
 :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |name| :type |Char| :direction :in :array t :size (|name|)))
 :category "NV_transform_feedback" :deprecated nil :version "1.5") 
(defglextfun "ActiveVaryingNV" active-varying-nv :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |name| :type |Char| :direction :in :array t :size (|name|)))
 :category "NV_transform_feedback" :deprecated nil :version "1.5") 
(defglextfun "TransformFeedbackVaryingsNV" transform-feedback-varyings-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |locations| :type |Int32| :direction :in :array t :size count)
  (:name |bufferMode| :type |GLenum| :direction :in))
 :category "NV_transform_feedback" :deprecated nil :version "1.5") 
(defglextfun "BindBufferBaseNV" bind-buffer-base-nv :return "void" :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |index| :type |UInt32| :direction :in)
  (:name |buffer| :type |UInt32| :direction :in))
 :category "NV_transform_feedback" :deprecated nil :version "1.5") 
(defglextfun "BindBufferOffsetNV" bind-buffer-offset-nv :return "void" :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |index| :type |UInt32| :direction :in)
  (:name |buffer| :type |UInt32| :direction :in)
  (:name |offset| :type |BufferOffset| :direction :in))
 :category "NV_transform_feedback" :deprecated nil :version "1.5") 
(defglextfun "BindBufferRangeNV" bind-buffer-range-nv :return "void" :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |index| :type |UInt32| :direction :in)
  (:name |buffer| :type |UInt32| :direction :in)
  (:name |offset| :type |BufferOffset| :direction :in)
  (:name |size| :type |BufferSize| :direction :in))
 :category "NV_transform_feedback" :deprecated nil :version "1.5") 
(defglextfun "TransformFeedbackAttribsNV" transform-feedback-attribs-nv :return
 "void" :args
 ((:name |count| :type |UInt32| :direction :in)
  (:name |attribs| :type |Int32| :direction :in :array t :size (|count|))
  (:name |bufferMode| :type |GLenum| :direction :in))
 :category "NV_transform_feedback" :deprecated nil :version "1.5") 
(defglextfun "EndTransformFeedbackNV" end-transform-feedback-nv :return "void"
 :args nil :category "NV_transform_feedback" :deprecated nil :version "1.5") 
(defglextfun "BeginTransformFeedbackNV" begin-transform-feedback-nv :return
 "void" :args ((:name |primitiveMode| :type |GLenum| :direction :in)) :category
 "NV_transform_feedback" :deprecated nil :version "1.5") 
