;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_sync

(defconstant +max-server-wait-timeout+ #x9111) 
(defconstant +object-type+ #x9112) 
(defconstant +sync-condition+ #x9113) 
(defconstant +sync-status+ #x9114) 
(defconstant +sync-flags+ #x9115) 
(defconstant +sync-fence+ #x9116) 
(defconstant +sync-gpu-commands-complete+ #x9117) 
(defconstant +unsignaled+ #x9118) 
(defconstant +signaled+ #x9119) 
(defconstant +already-signaled+ #x911A) 
(defconstant +timeout-expired+ #x911B) 
(defconstant +condition-satisfied+ #x911C) 
(defconstant +wait-failed+ #x911D) 
(defconstant +sync-flush-commands-bit+ #x1) 
(defconstant +timeout-ignored+ #xFFFFFFFFFFFFFFFF) 
(defconstant +max-server-wait-timeout+ #x9111) 
(defconstant +object-type+ #x9112) 
(defconstant +sync-condition+ #x9113) 
(defconstant +sync-status+ #x9114) 
(defconstant +sync-flags+ #x9115) 
(defconstant +sync-fence+ #x9116) 
(defconstant +sync-gpu-commands-complete+ #x9117) 
(defconstant +unsignaled+ #x9118) 
(defconstant +signaled+ #x9119) 
(defconstant +already-signaled+ #x911A) 
(defconstant +timeout-expired+ #x911B) 
(defconstant +condition-satisfied+ #x911C) 
(defconstant +wait-failed+ #x911D) 
(defconstant +sync-flush-commands-bit+ #x1) 
(defconstant +timeout-ignored+ #xFFFFFFFFFFFFFFFF) 
(defglextfun "GetSynciv" get-sync-iv :return "void" :args
 ((:name |sync| :type |sync| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |bufSize| :type |SizeI| :direction :in)
  (:name |length| :type |SizeI| :direction :out :array t :size #x1)
  (:name |values| :type |Int32| :direction :out :array t :size length))
 :category "ARB_sync" :deprecated nil :version "1.2") 
(defglextfun "GetInteger64v" get-integer-64v :return "void" :args
 ((:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Int64| :direction :out :array t :size (|pname|)))
 :category "ARB_sync" :deprecated nil :version "1.2") 
(defglextfun "WaitSync" wait-sync :return "void" :args
 ((:name |sync| :type |sync| :direction :in)
  (:name |flags| :type |GLbitfield| :direction :in)
  (:name |timeout| :type |UInt64| :direction :in))
 :category "ARB_sync" :deprecated nil :version "1.2") 
(defglextfun "ClientWaitSync" client-wait-sync :return "GLenum" :args
 ((:name |sync| :type |sync| :direction :in)
  (:name |flags| :type |GLbitfield| :direction :in)
  (:name |timeout| :type |UInt64| :direction :in))
 :category "ARB_sync" :deprecated nil :version "1.2") 
(defglextfun "DeleteSync" delete-sync :return "void" :args
 ((:name |sync| :type |sync| :direction :in)) :category "ARB_sync" :deprecated
 nil :version "1.2") 
(defglextfun "IsSync" is-sync :return "Boolean" :args
 ((:name |sync| :type |sync| :direction :in)) :category "ARB_sync" :deprecated
 nil :version "1.2") 
(defglextfun "FenceSync" fence-sync :return "sync" :args
 ((:name |condition| :type |GLenum| :direction :in)
  (:name |flags| :type |GLbitfield| :direction :in))
 :category "ARB_sync" :deprecated nil :version "1.2") 
