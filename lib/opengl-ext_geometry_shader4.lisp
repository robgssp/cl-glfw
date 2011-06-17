;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_geometry_shader4

(defconstant +geometry-shader-ext+ #x8DD9) 
(defconstant +geometry-vertices-out-arb+ #x8DDA) 
(defconstant +geometry-input-type-arb+ #x8DDB) 
(defconstant +geometry-output-type-arb+ #x8DDC) 
(defconstant +geometry-vertices-out-ext+ #x8DDA) 
(defconstant +geometry-input-type-ext+ #x8DDB) 
(defconstant +geometry-output-type-ext+ #x8DDC) 
(defconstant +max-geometry-varying-components-arb+ #x8DDD) 
(defconstant +max-vertex-varying-components-arb+ #x8DDE) 
(defconstant +max-geometry-uniform-components-arb+ #x8DDF) 
(defconstant +max-geometry-output-vertices-arb+ #x8DE0) 
(defconstant +max-geometry-total-output-components-arb+ #x8DE1) 
(defconstant +geometry-shader-ext+ #x8DD9) 
(defconstant +geometry-vertices-out-ext+ #x8DDA) 
(defconstant +geometry-input-type-ext+ #x8DDB) 
(defconstant +geometry-output-type-ext+ #x8DDC) 
(defconstant +max-geometry-texture-image-units-ext+ #x8C29) 
(defconstant +max-geometry-varying-components-ext+ #x8DDD) 
(defconstant +max-vertex-varying-components-ext+ #x8DDE) 
(defconstant +max-varying-components-ext+ #x8B4B) 
(defconstant +max-geometry-uniform-components-ext+ #x8DDF) 
(defconstant +max-geometry-output-vertices-ext+ #x8DE0) 
(defconstant +max-geometry-total-output-components-ext+ #x8DE1) 
(defconstant +lines-adjacency-ext+ #xA) 
(defconstant +line-strip-adjacency-ext+ #xB) 
(defconstant +triangles-adjacency-ext+ #xC) 
(defconstant +triangle-strip-adjacency-ext+ #xD) 
(defconstant +framebuffer-incomplete-layer-targets-ext+ #x8DA8) 
(defconstant +framebuffer-incomplete-layer-count-ext+ #x8DA9) 
(defconstant +framebuffer-attachment-layered-ext+ #x8DA7) 
(defconstant +program-point-size-ext+ #x8642) 
(defglextfun "ProgramParameteriEXT" program-parameter-i-ext :return "void"
 :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |pname| :type |ProgramParameterPName| :direction :in)
  (:name |value| :type |Int32| :direction :in))
 :category "EXT_geometry_shader4" :deprecated nil :version "2.0") 
(make-extension-loader |EXT_geometry_shader4|
 (("ProgramParameteriEXT" program-parameter-i-ext :return "void" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |pname| :type |ProgramParameterPName| :direction :in)
    (:name |value| :type |Int32| :direction :in))
   :category "EXT_geometry_shader4" :deprecated nil :version "2.0"))) 
