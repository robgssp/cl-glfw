;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:gl) 

;;;; SGIX_reference_plane

(defglextfun
 (("ReferencePlaneSGIX" reference-plane-sgix) :args
  ((:name |equation| :type |Float64| :direction :in :array t :size #x4))
  :return ("void") :category ("SGIX_reference_plane") :version ("1.0")
  :glxflags ("SGI") :glxropcode ("2071") :extension nil :glsopcode ("0x0181")
  :offset ("468"))) 