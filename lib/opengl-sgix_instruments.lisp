;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:gl) 

;;;; SGIX_instruments

(defglextfun
 (("StopInstrumentsSGIX" stop-instruments-sgix) :args
  ((:name |marker| :type |Int32| :direction :in)) :return ("void") :category
  ("SGIX_instruments") :version ("1.0") :glxflags ("SGI") :glxropcode ("2070")
  :extension nil :glsopcode ("0x017F") :offset ("465"))) 
(defglextfun
 (("StartInstrumentsSGIX" start-instruments-sgix) :args nil :return ("void")
  :category ("SGIX_instruments") :version ("1.0") :glxflags ("SGI") :glxropcode
  ("2069") :extension nil :glsopcode ("0x017E") :offset ("464"))) 
(defglextfun
 (("ReadInstrumentsSGIX" read-instruments-sgix) :args
  ((:name |marker| :type |Int32| :direction :in)) :return ("void") :category
  ("SGIX_instruments") :version ("1.0") :glxflags ("SGI") :glxropcode ("2077")
  :extension nil :glsopcode ("0x017D") :offset ("463"))) 
(defglextfun
 (("PollInstrumentsSGIX" poll-instruments-sgix) :args
  ((:name |marker_p| :type |Int32| :direction :out :array t :size #x1)) :return
  ("Int32") :dlflags ("notlistable") :category ("SGIX_instruments") :version
  ("1.0") :glxflags ("SGI") :glxvendorpriv ("4104") :extension nil :glsflags
  ("get") :glsopcode ("0x017C") :offset ("462"))) 
(defglextfun
 (("InstrumentsBufferSGIX" instruments-buffer-sgix) :args
  ((:name |size| :type |SizeI| :direction :in)
   (:name |buffer| :type |Int32| :direction :out :array t :size size :retained
    t))
  :return ("void") :dlflags ("notlistable") :category ("SGIX_instruments")
  :version ("1.0") :glxflags ("SGI") :glxvendorpriv ("4103") :extension nil
  :glsflags ("client") :glsopcode ("0x017B") :offset ("461"))) 
(defglextfun
 (("GetInstrumentsSGIX" get-instruments-sgix) :args nil :return ("Int32")
  :dlflags ("notlistable") :category ("SGIX_instruments") :version ("1.0")
  :glxflags ("SGI") :glxvendorpriv ("4102") :extension nil :glsflags ("get")
  :glsopcode ("0x017A") :offset ("460"))) 