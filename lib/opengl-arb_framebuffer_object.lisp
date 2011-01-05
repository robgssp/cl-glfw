;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_framebuffer_object

(defconstant +invalid-framebuffer-operation+ #x506) 
(defconstant +framebuffer-attachment-color-encoding+ #x8210) 
(defconstant +framebuffer-attachment-component-type+ #x8211) 
(defconstant +framebuffer-attachment-red-size+ #x8212) 
(defconstant +framebuffer-attachment-green-size+ #x8213) 
(defconstant +framebuffer-attachment-blue-size+ #x8214) 
(defconstant +framebuffer-attachment-alpha-size+ #x8215) 
(defconstant +framebuffer-attachment-depth-size+ #x8216) 
(defconstant +framebuffer-attachment-stencil-size+ #x8217) 
(defconstant +framebuffer-default+ #x8218) 
(defconstant +framebuffer-undefined+ #x8219) 
(defconstant +depth-stencil-attachment+ #x821A) 
(defconstant +max-renderbuffer-size+ #x84E8) 
(defconstant +depth-stencil+ #x84F9) 
(defconstant +unsigned-int-24-8+ #x84FA) 
(defconstant +depth24-stencil8+ #x88F0) 
(defconstant +texture-stencil-size+ #x88F1) 
(defconstant +texture-red-type+ #x8C10) 
(defconstant +texture-green-type+ #x8C11) 
(defconstant +texture-blue-type+ #x8C12) 
(defconstant +texture-alpha-type+ #x8C13) 
(defconstant +texture-depth-type+ #x8C16) 
(defconstant +unsigned-normalized+ #x8C17) 
(defconstant +framebuffer-binding+ #x8CA6) 
(defconstant +draw-framebuffer-binding+ #x8CA6) 
(defconstant +renderbuffer-binding+ #x8CA7) 
(defconstant +read-framebuffer+ #x8CA8) 
(defconstant +draw-framebuffer+ #x8CA9) 
(defconstant +read-framebuffer-binding+ #x8CAA) 
(defconstant +renderbuffer-samples+ #x8CAB) 
(defconstant +framebuffer-attachment-object-type+ #x8CD0) 
(defconstant +framebuffer-attachment-object-name+ #x8CD1) 
(defconstant +framebuffer-attachment-texture-level+ #x8CD2) 
(defconstant +framebuffer-attachment-texture-cube-map-face+ #x8CD3) 
(defconstant +framebuffer-attachment-texture-layer+ #x8CD4) 
(defconstant +framebuffer-complete+ #x8CD5) 
(defconstant +framebuffer-incomplete-attachment+ #x8CD6) 
(defconstant +framebuffer-incomplete-missing-attachment+ #x8CD7) 
(defconstant +framebuffer-incomplete-draw-buffer+ #x8CDB) 
(defconstant +framebuffer-incomplete-read-buffer+ #x8CDC) 
(defconstant +framebuffer-unsupported+ #x8CDD) 
(defconstant +max-color-attachments+ #x8CDF) 
(defconstant +color-attachment0+ #x8CE0) 
(defconstant +color-attachment1+ #x8CE1) 
(defconstant +color-attachment2+ #x8CE2) 
(defconstant +color-attachment3+ #x8CE3) 
(defconstant +color-attachment4+ #x8CE4) 
(defconstant +color-attachment5+ #x8CE5) 
(defconstant +color-attachment6+ #x8CE6) 
(defconstant +color-attachment7+ #x8CE7) 
(defconstant +color-attachment8+ #x8CE8) 
(defconstant +color-attachment9+ #x8CE9) 
(defconstant +color-attachment10+ #x8CEA) 
(defconstant +color-attachment11+ #x8CEB) 
(defconstant +color-attachment12+ #x8CEC) 
(defconstant +color-attachment13+ #x8CED) 
(defconstant +color-attachment14+ #x8CEE) 
(defconstant +color-attachment15+ #x8CEF) 
(defconstant +depth-attachment+ #x8D00) 
(defconstant +stencil-attachment+ #x8D20) 
(defconstant +framebuffer+ #x8D40) 
(defconstant +renderbuffer+ #x8D41) 
(defconstant +renderbuffer-width+ #x8D42) 
(defconstant +renderbuffer-height+ #x8D43) 
(defconstant +renderbuffer-internal-format+ #x8D44) 
(defconstant +stencil-index1+ #x8D46) 
(defconstant +stencil-index4+ #x8D47) 
(defconstant +stencil-index8+ #x8D48) 
(defconstant +stencil-index16+ #x8D49) 
(defconstant +renderbuffer-red-size+ #x8D50) 
(defconstant +renderbuffer-green-size+ #x8D51) 
(defconstant +renderbuffer-blue-size+ #x8D52) 
(defconstant +renderbuffer-alpha-size+ #x8D53) 
(defconstant +renderbuffer-depth-size+ #x8D54) 
(defconstant +renderbuffer-stencil-size+ #x8D55) 
(defconstant +framebuffer-incomplete-multisample+ #x8D56) 
(defconstant +max-samples+ #x8D57) 
(defglextfun "FramebufferTextureLayer" framebuffer-texture-layer :return "void"
 :args
 ((:name |target| :type |FramebufferTarget| :direction :in)
  (:name |attachment| :type |FramebufferAttachment| :direction :in)
  (:name |texture| :type |Texture| :direction :in)
  (:name |level| :type |CheckedInt32| :direction :in)
  (:name |layer| :type |CheckedInt32| :direction :in))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "RenderbufferStorageMultisample" renderbuffer-storage-multisample
 :return "void" :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |samples| :type |SizeI| :direction :in)
  (:name |internalformat| :type |GLenum| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "BlitFramebuffer" blit-framebuffer :return "void" :args
 ((:name |srcX0| :type |Int32| :direction :in)
  (:name |srcY0| :type |Int32| :direction :in)
  (:name |srcX1| :type |Int32| :direction :in)
  (:name |srcY1| :type |Int32| :direction :in)
  (:name |dstX0| :type |Int32| :direction :in)
  (:name |dstY0| :type |Int32| :direction :in)
  (:name |dstX1| :type |Int32| :direction :in)
  (:name |dstY1| :type |Int32| :direction :in)
  (:name |mask| :type |ClearBufferMask| :direction :in)
  (:name |filter| :type |GLenum| :direction :in))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "GenerateMipmap" generate-mipmap :return "void" :args
 ((:name |target| :type |GLenum| :direction :in)) :category
 "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "GetFramebufferAttachmentParameteriv"
 get-framebuffer-attachment-parameter-iv :return "void" :args
 ((:name |target| :type |FramebufferTarget| :direction :in)
  (:name |attachment| :type |FramebufferAttachment| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "FramebufferRenderbuffer" framebuffer-renderbuffer :return "void"
 :args
 ((:name |target| :type |FramebufferTarget| :direction :in)
  (:name |attachment| :type |FramebufferAttachment| :direction :in)
  (:name |renderbuffertarget| :type |RenderbufferTarget| :direction :in)
  (:name |renderbuffer| :type |UInt32| :direction :in))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "FramebufferTexture3D" framebuffer-texture-3d :return "void" :args
 ((:name |target| :type |FramebufferTarget| :direction :in)
  (:name |attachment| :type |FramebufferAttachment| :direction :in)
  (:name |textarget| :type |GLenum| :direction :in)
  (:name |texture| :type |UInt32| :direction :in)
  (:name |level| :type |Int32| :direction :in)
  (:name |zoffset| :type |Int32| :direction :in))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "FramebufferTexture2D" framebuffer-texture-2d :return "void" :args
 ((:name |target| :type |FramebufferTarget| :direction :in)
  (:name |attachment| :type |FramebufferAttachment| :direction :in)
  (:name |textarget| :type |GLenum| :direction :in)
  (:name |texture| :type |UInt32| :direction :in)
  (:name |level| :type |Int32| :direction :in))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "FramebufferTexture1D" framebuffer-texture-1d :return "void" :args
 ((:name |target| :type |FramebufferTarget| :direction :in)
  (:name |attachment| :type |FramebufferAttachment| :direction :in)
  (:name |textarget| :type |GLenum| :direction :in)
  (:name |texture| :type |UInt32| :direction :in)
  (:name |level| :type |Int32| :direction :in))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "CheckFramebufferStatus" check-framebuffer-status :return "GLenum"
 :args ((:name |target| :type |FramebufferTarget| :direction :in)) :category
 "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "GenFramebuffers" gen-framebuffers :return "void" :args
 ((:name |n| :type |SizeI| :direction :in)
  (:name |framebuffers| :type |UInt32| :direction :out :array t :size n))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "DeleteFramebuffers" delete-framebuffers :return "void" :args
 ((:name |n| :type |SizeI| :direction :in)
  (:name |framebuffers| :type |UInt32| :direction :in :array t :size n))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "BindFramebuffer" bind-framebuffer :return "void" :args
 ((:name |target| :type |FramebufferTarget| :direction :in)
  (:name |framebuffer| :type |UInt32| :direction :in))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "IsFramebuffer" is-framebuffer :return "Boolean" :args
 ((:name |framebuffer| :type |UInt32| :direction :in)) :category
 "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "GetRenderbufferParameteriv" get-renderbuffer-parameter-iv :return
 "void" :args
 ((:name |target| :type |RenderbufferTarget| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size (|pname|)))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "RenderbufferStorage" renderbuffer-storage :return "void" :args
 ((:name |target| :type |RenderbufferTarget| :direction :in)
  (:name |internalformat| :type |GLenum| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "GenRenderbuffers" gen-renderbuffers :return "void" :args
 ((:name |n| :type |SizeI| :direction :in)
  (:name |renderbuffers| :type |UInt32| :direction :out :array t :size n))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "DeleteRenderbuffers" delete-renderbuffers :return "void" :args
 ((:name |n| :type |SizeI| :direction :in)
  (:name |renderbuffers| :type |UInt32| :direction :in :array t :size n))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "BindRenderbuffer" bind-renderbuffer :return "void" :args
 ((:name |target| :type |RenderbufferTarget| :direction :in)
  (:name |renderbuffer| :type |UInt32| :direction :in))
 :category "ARB_framebuffer_object" :deprecated nil :version "3.0") 
(defglextfun "IsRenderbuffer" is-renderbuffer :return "Boolean" :args
 ((:name |renderbuffer| :type |UInt32| :direction :in)) :category
 "ARB_framebuffer_object" :deprecated nil :version "3.0") 
