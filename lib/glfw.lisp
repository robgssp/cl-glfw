(in-package #:cl-glfw)

(eval-when (:compile-toplevel :load-toplevel)
  (defconstant +false+ 0)
  (defconstant +true+ 1)


  ;; Key and button state/action definitions
  (defconstant +release+ 0)
  (defconstant +press+ 1)

  ;; Keyboard key definitions: 8-bit ISO-8859-1 (Latin 1) encoding is used
  ;; for printable keys (such as A-Z, 0-9 etc), and values above 256
  ;; represent special (non-printable) keys (e.g. F1, Page Up etc).
  (defconstant +key-unknown+ -1)
  (defconstant +key-space+ 32)
  (defconstant +key-special+ 256)
  (defconstant +key-esc+ (+ +key-special+ 1))
  (defconstant +key-f1+ (+ +key-special+ 2))
  (defconstant +key-f2+ (+ +key-special+ 3))
  (defconstant +key-f3+ (+ +key-special+ 4))
  (defconstant +key-f4+ (+ +key-special+ 5))
  (defconstant +key-f5+ (+ +key-special+ 6))
  (defconstant +key-f6+ (+ +key-special+ 7))
  (defconstant +key-f7+ (+ +key-special+ 8))
  (defconstant +key-f8+ (+ +key-special+ 9))
  (defconstant +key-f9+ (+ +key-special+ 10))
  (defconstant +key-f10+ (+ +key-special+ 11))
  (defconstant +key-f11+ (+ +key-special+ 12))
  (defconstant +key-f12+ (+ +key-special+ 13))
  (defconstant +key-f13+ (+ +key-special+ 14))
  (defconstant +key-f14+ (+ +key-special+ 15))
  (defconstant +key-f15+ (+ +key-special+ 16))
  (defconstant +key-f16+ (+ +key-special+ 17))
  (defconstant +key-f17+ (+ +key-special+ 18))
  (defconstant +key-f18+ (+ +key-special+ 19))
  (defconstant +key-f19+ (+ +key-special+ 20))
  (defconstant +key-f20+ (+ +key-special+ 21))
  (defconstant +key-f21+ (+ +key-special+ 22))
  (defconstant +key-f22+ (+ +key-special+ 23))
  (defconstant +key-f23+ (+ +key-special+ 24))
  (defconstant +key-f24+ (+ +key-special+ 25))
  (defconstant +key-f25+ (+ +key-special+ 26))
  (defconstant +key-up+ (+ +key-special+ 27))
  (defconstant +key-down+ (+ +key-special+ 28))
  (defconstant +key-left+ (+ +key-special+ 29))
  (defconstant +key-right+ (+ +key-special+ 30))
  (defconstant +key-lshift+ (+ +key-special+ 31))
  (defconstant +key-rshift+ (+ +key-special+ 32))
  (defconstant +key-lctrl+ (+ +key-special+ 33))
  (defconstant +key-rctrl+ (+ +key-special+ 34))
  (defconstant +key-lalt+ (+ +key-special+ 35))
  (defconstant +key-ralt+ (+ +key-special+ 36))
  (defconstant +key-tab+ (+ +key-special+ 37))
  (defconstant +key-enter+ (+ +key-special+ 38))
  (defconstant +key-backspace+ (+ +key-special+ 39))
  (defconstant +key-insert+ (+ +key-special+ 40))
  (defconstant +key-del+ (+ +key-special+ 41))
  (defconstant +key-pageup+ (+ +key-special+ 42))
  (defconstant +key-pagedown+ (+ +key-special+ 43))
  (defconstant +key-home+ (+ +key-special+ 44))
  (defconstant +key-end+ (+ +key-special+ 45))
  (defconstant +key-kp-0+ (+ +key-special+ 46))
  (defconstant +key-kp-1+ (+ +key-special+ 47))
  (defconstant +key-kp-2+ (+ +key-special+ 48))
  (defconstant +key-kp-3+ (+ +key-special+ 49))
  (defconstant +key-kp-4+ (+ +key-special+ 50))
  (defconstant +key-kp-5+ (+ +key-special+ 51))
  (defconstant +key-kp-6+ (+ +key-special+ 52))
  (defconstant +key-kp-7+ (+ +key-special+ 53))
  (defconstant +key-kp-8+ (+ +key-special+ 54))
  (defconstant +key-kp-9+ (+ +key-special+ 55))
  (defconstant +key-kp-divide+ (+ +key-special+ 56))
  (defconstant +key-kp-multiply+ (+ +key-special+ 57))
  (defconstant +key-kp-subtract+ (+ +key-special+ 58))
  (defconstant +key-kp-add+ (+ +key-special+ 59))
  (defconstant +key-kp-decimal+ (+ +key-special+ 60))
  (defconstant +key-kp-equal+ (+ +key-special+ 61))
  (defconstant +key-kp-enter+ (+ +key-special+ 62))
  (defconstant +key-kp-num-lock+ (+ +key-special+ 63))
  (defconstant +key-caps-lock+ (+ +key-special+ 64))
  (defconstant +key-scroll-lock+ (+ +key-special+ 65))
  (defconstant +key-pause+ (+ +key-special+ 66))
  (defconstant +key-lsuper+ (+ +key-special+ 67))
  (defconstant +key-rsuper+ (+ +key-special+ 68))
  (defconstant +key-menu+ (+ +key-special+ 69))
  (defconstant +key-last+ +key-menu+)

  ;; Mouse button definitions
  (defconstant +mouse-button-1+ 0)
  (defconstant +mouse-button-2+ 1)
  (defconstant +mouse-button-3+ 2)
  (defconstant +mouse-button-4+ 3)
  (defconstant +mouse-button-5+ 4)
  (defconstant +mouse-button-6+ 5)
  (defconstant +mouse-button-7+ 6)
  (defconstant +mouse-button-8+ 7)
  (defconstant +mouse-button-last+ +mouse-button-8+)

  ;; Mouse button aliases
  (defconstant +mouse-button-left+ +mouse-button-1+)
  (defconstant +mouse-button-right+ +mouse-button-2+)
  (defconstant +mouse-button-middle+ +mouse-button-3+)

  ;; Joystick identifiers
  (defconstant +joystick-1+ 0)
  (defconstant +joystick-2+ 1)
  (defconstant +joystick-3+ 2)
  (defconstant +joystick-4+ 3)
  (defconstant +joystick-5+ 4)
  (defconstant +joystick-6+ 5)
  (defconstant +joystick-7+ 6)
  (defconstant +joystick-8+ 7)
  (defconstant +joystick-9+ 8)
  (defconstant +joystick-10+ 9)
  (defconstant +joystick-11+ 10)
  (defconstant +joystick-12+ 11)
  (defconstant +joystick-13+ 12)
  (defconstant +joystick-14+ 13)
  (defconstant +joystick-15+ 14)
  (defconstant +joystick-16+ 15)
  (defconstant +joystick-last+ +joystick-16+)


  ;;========================================================================
  ;; Other definitions
  ;;========================================================================

  ;; glfwOpenWindow modes
  (defconstant +window+ #x00010001)
  (defconstant +fullscreen+ #x00010002)

  ;; glfwGetWindowParam tokens
  (defconstant +opened+ #x00020001)
  (defconstant +active+ #x00020002)
  (defconstant +iconified+ #x00020003)
  (defconstant +accelerated+ #x00020004)
  (defconstant +red-bits+ #x00020005)
  (defconstant +green-bits+ #x00020006)
  (defconstant +blue-bits+ #x00020007)
  (defconstant +alpha-bits+ #x00020008)
  (defconstant +depth-bits+ #x00020009)
  (defconstant +stencil-bits+ #x0002000a)

  ;; The following constants are used for both glfwGetWindowParam
  ;; and glfwOpenWindowHint
  (defconstant +refresh-rate+ #x0002000b)
  (defconstant +accum-red-bits+ #x0002000c)
  (defconstant +accum-green-bits+ #x0002000d)
  (defconstant +accum-blue-bits+ #x0002000e)
  (defconstant +accum-alpha-bits+ #x0002000f)
  (defconstant +aux-buffers+ #x00020010)
  (defconstant +stereo+ #x00020011)
  (defconstant +window-no-resize+ #x00020012)
  (defconstant +fsaa-samples+ #x00020013)
  (defconstant +opengl-version-major+ #x00020014)
  (defconstant +opengl-version-minor+ #x00020015)
  (defconstant +opengl-forward-compat+ #x00020016)
  (defconstant +opengl-debug-context+ #x00020017)
  (defconstant +opengl-profile+ #x00020018)

  (defconstant +opengl-core-profile+ #x00050001)
  (defconstant +opengl-compat-profile+ #x00050002)

  ;; glfwEnable/glfwDisable tokens
  (defconstant +mouse-cursor+ #x00030001)
  (defconstant +sticky-keys+ #x00030002)
  (defconstant +sticky-mouse-buttons+ #x00030003)
  (defconstant +system-keys+ #x00030004)
  (defconstant +key-repeat+ #x00030005)
  (defconstant +auto-poll-events+ #x00030006)

  ;; glfwWaitThread wait modes
  (defconstant +wait+ #x00040001)
  (defconstant +nowait+ #x00040002)

  ;; glfwGetJoystickParam tokens
  (defconstant +present+ #x00050001)
  (defconstant +axes+ #x00050002)
  (defconstant +buttons+ #x00050003)

  ;; glfwReadImage/glfwLoadTexture2D flags
  (defconstant +no-rescale-bit+ #x00000001) ; Only for glfwReadImage
  (defconstant +origin-ul-bit+ #x00000002)
  (defconstant +build-mipmaps-bit+ #x00000004) ; Only for glfwLoadTexture2D
  (defconstant +alpha-map-bit+ #x00000008)

  ;; Time spans longer than this (seconds) are considered to be infinity
  (defconstant +infinity+ 100000d0))

(defparameter *was-init* nil
  "True if we have already initialized.")
(declaim (type cl:boolean *was-init*))

(defparameter *init-hooks* nil
  "A list of funcallable objects invoked just after initialization.")
(defparameter *terminate-hooks* nil
  "A list of funcallable objects invoked just before termination.")
(declaim (type list *init-hooks* *terminate-hooks*))

(cffi:defcfun ("glfwInit" %init) boolean)

(defun init ()
  "Return values
If the function succeeds, t is returned.
If the function fails, nil is returned.

The glfwInit function initializes GLFW. No other GLFW functions may be used before this function
has been called.

On successful initialization, the list of functions in *init-hooks* is called.

Notes
This function may take several seconds to complete on some systems, while on other systems it may
take only a fraction of a second to complete."
  (when (%init)
    (setf *was-init* t)
    (mapc #'funcall *init-hooks*)
    t))

(cffi:defcfun ("glfwTerminate" %terminate) :void)

(defun terminate ()
      "The function terminates GLFW. Among other things it closes the window, if it is opened, and kills any
running threads. This function must be called before a program exits.

Before termination, the list of functions in *terminate-hooks* is called.
"
  (mapc #'funcall *terminate-hooks*)
  (setf *was-init* nil)
  (%terminate))

(defcfun+out+doc ("glfwGetVersion" get-version) :void ((:out major :int)
						       (:out minor :int)
						       (:out rev :int))
		 "Return values
The function returns the major and minor version numbers and the revision for the currently linked
GLFW library as a list (major minor rev).")

(defmacro with-init (&body forms)
  "Call glfw:init, execute forms and clean-up with glfw:terminate once finished.
This makes a nice wrapper to an application higher-level form.
Signals an error on failure to initialize. Wrapped in a block named glfw:with-init."
  `(if (glfw:init)
       (unwind-protect
	    (block with-init ,@forms)
	 (glfw:terminate))
       (error "Error initializing glfw.")))

(defcfun ("glfwOpenWindow" %open-window) boolean
  (width :int) (height :int)
  (redbits :int) (greenbits :int) (bluebits :int) (alphabits :int)
  (depthbits :int) (stencilbits :int) (mode :int))

(declaim (inline open-window))
(defun open-window (&key (width 0) (height 0)
                    (redbits 0) (greenbits 0) (bluebits 0) (alphabits 0)
                    (depthbits 0) (stencilbits 0) (mode +window+)
		    title
		    ;;The hints
		    (refresh-rate 0 refresh-rate-p)
		    (accum-red-bits 0 accum-red-bits-p)
		    (accum-green-bits 0 accum-green-bits-p)
		    (accum-blue-bits 0 accum-blue-bits-p)
		    (accum-alpha-bits 0 accum-alpha-bits-p)
		    (aux-buffers 0 aux-buffers-p)
		    (stereo nil stereo-p)
		    (window-no-resize nil window-no-resize-p)
		    (fsaa-samples 0 fsaa-samples-p)
		    (opengl-version-major 1 opengl-version-major-p)
		    (opengl-version-minor 1 opengl-version-minor-p)
		    (opengl-forward-compat nil opengl-forward-compat-p)
		    (opengl-debug-context nil opengl-debug-context-p)
		    (opengl-profile 0 opengl-profile-p)
		    (opengl-core-profile 0 opengl-core-profile-p)
		    (opengl-compat-profile 0 opengl-compat-profile-p))
  "width
      The width of the window. If width is zero, it will be calculated as width = 4/3 height, if height is
      not zero. If both width and height are zero, then width will be set to 640.
height
      The height of the window. If height is zero, it will be calculated as height = 3/4 width, if width is
      not zero. If both width and height are zero, then height will be set to 480.
redbits, greenbits, bluebits
      The number of bits to use for each color component of the color buffer (0 means default color
      depth). For instance, setting redbits=5, greenbits=6, and bluebits=5 will generate a 16-bit color
      buffer, if possible.
alphabits
      The number of bits to use for the alpha buffer (0 means no alpha buffer).
depthbits
      The number of bits to use for the depth buffer (0 means no depth buffer).
stencilbits
      The number of bits to use for the stencil buffer (0 means no stencil buffer).
mode
      Selects which type of OpenGL window to use. mode can be either +WINDOW+, which
      will generate a normal desktop window, or +FULLSCREEN+ which will generate a
      window which covers the entire screen. When +FULLSCREEN+ is selected, the video
      mode will be changed to the resolution that closest matches the width and height parameters.

Return values
If the function succeeds, t is returned.
If the function fails, nil is returned.

Description

The function opens a window that best matches the parameters given to
the function. How well the resulting window matches the desired window
depends mostly on the available hardware and OpenGL drivers. In
general, selecting a fullscreen mode has better chances of generating
a close match than does a normal desktop window, since GLFW can freely
select from all the available video modes. A desktop window is
normally restricted to the video mode of the desktop.

Notes

For additional control of window properties, see glfw::OpenWindowHint.
In fullscreen mode the mouse cursor is hidden by default, and any system screensavers are prohibited
from starting. In windowed mode the mouse cursor is visible, and screensavers are allowed to start. To
change the visibility of the mouse cursor, use glfwEnable or glfwDisable with the argument
+MOUSE_CURSOR+
In order to determine the actual properties of an opened window, use glfw::GetWindowParam and
glfw::GetWindowSize (or glfw::SetWindowSizeCallback).
"
  (macrolet ((output-int-hints (&rest names)
	       `(progn
		  ,@(loop for name in names collect
			 `(when ,(intern (format nil "~a-P" name) '#:cl-glfw)
			    (open-window-hint ,(intern (format nil "+~A+" name) '#:cl-glfw)
					      ,name)))))
	     (output-boolean-hints (&rest names)
	       `(progn
		  ,@(loop for name in names collect
			 `(when ,(intern (format nil "~a-P" name) '#:cl-glfw)
			    (open-window-hint ,(intern (format nil "+~A+" name) '#:cl-glfw)
					      (if ,name +true+ +false+)))))))
    (output-int-hints refresh-rate 
		      accum-red-bits accum-green-bits accum-blue-bits
		      accum-alpha-bits
		      aux-buffers
		      fsaa-samples
		      opengl-version-major
		      opengl-version-minor
		      opengl-profile
		      opengl-core-profile
		      opengl-compat-profile)
    (output-boolean-hints stereo
			  window-no-resize
			  opengl-forward-compat
			  opengl-debug-context))
  (if (%open-window width height redbits greenbits bluebits alphabits depthbits stencilbits mode)
      (when title (set-window-title title))
      (error "Error initializing glfw window.")))

 

(defcfun+doc ("glfwOpenWindowHint" open-window-hint) :void ((target :int) (hint :int))
	 "target
       Can be any of the constants in the table 3.1.
hint
       An integer giving the value of the corresponding target (see table 3.1).

Description
The function sets additional properties for a window that is to be opened. For a hint to be registered, the
function must be called before calling glfw::OpenWindow. When the glfw::OpenWindow function is
called, any hints that were registered with the glfw::OpenWindowHint function are used for setting the
corresponding window properties, and then all hints are reset to their default values.

Notes
In order to determine the actual properties of an opened window, use glfw::GetWindowParam (after the
window has been opened).
+STEREO+ is a hard constraint. If stereo rendering is requested, but no stereo rendering capable
pixel formats / visuals are available, glfw::OpenWindow will fail.
The +REFRESH_RATE+ property should be used with caution. Most systems have default values
for monitor refresh rates that are optimal for the specific system. Specifying the refresh rate can
override these settings, which can result in suboptimal operation. The monitor may be unable to display
the resulting video signal, or in the worst case it may even be damaged!
")

(defcfun+doc ("glfwCloseWindow" close-window) :void ()
	 "The function closes an opened window and destroys the associated OpenGL context.")

(defmacro with-open-window ((&rest open-window-keys)
			    &body forms)
  "Wraps forms such that there is an open window for them to execute in and cleans up the
window afterwards. An error is signalled if there was an error opening the window.
Takes the same parameters as open-window, with the addition of 'title' which will
set the window title after opening.
Wrapped in a block named glfw:with-open-window."
  `(progn
     (open-window ,@open-window-keys)
     (unwind-protect
	  (block with-open-window ,@forms)
       (when (= +true+ (glfw:get-window-param glfw:+opened+))
	 (close-window)))))

(defmacro with-init-window ((&rest open-window-keys)
			    &body forms)
  "Wraps forms in with-init, with-open-window. Passes through the other arguments to open-window."
  `(with-init
     (with-open-window (,@open-window-keys)
       ,@forms)))

(defmacro do-open-window ((&rest open-window-keys)
		     (&body setup-forms)
		     &body forms)
  "High-level convenience macro for opening a window (given the optional window parameters),
setting the title given,
running setup-forms and then running forms in a loop, with calls to swap-buffers after each loop iteration.
The loop is in a block named do-open-window [so can be exited by a call to (return-from glfw:do-window)].
If the window is closed, the loop is also exited."
  `(with-open-window (,@open-window-keys)
     ,@setup-forms
     (loop named do-open-window do
	  (progn
	    ,@forms
	    (glfw:swap-buffers)
	    (unless (= +true+ (glfw:get-window-param glfw:+opened+))	
	      (return-from do-open-window))))))

(defmacro do-window ((&rest open-window-keys)
		     (&body setup-forms)
		     &body forms)
  "High-level convenience macro for initializing glfw, opening a window (given the optional window parameters),
setting the title given,
running setup-forms and then running forms in a loop, with calls to swap-buffers after each loop iteration.
The loop is in a block named do-window [so can be exited by a call to (return-from glfw:do-window)].
If the window is closed, the loop is also exited."
  `(with-init 
     (do-open-window (,@open-window-keys) (,@setup-forms) ,@forms)))

(defmacro define-callback-setter (c-name callback-prefix return-type (&body args) &key before-form after-form documentation)
  (let* ((callback-name (intern (format nil "~A-CALLBACK" callback-prefix)))
         (special-name (intern (format nil "*~S*" callback-name)))
         (setter-name (intern (format nil "SET-~S" callback-name)))
         (internal-setter-name (intern (format nil "%~S" setter-name))))
    `(progn
       (defparameter ,special-name nil)
       (cffi:defcallback ,callback-name ,return-type ,args
         (when ,special-name
           (prog2
               ,before-form
               (funcall ,special-name ,@(mapcar #'car args))
             ,after-form)))
       (cffi:defcfun (,c-name ,internal-setter-name) :void (cbfun :pointer))
       (defun ,setter-name (callback)
         ,(format nil "GENERAL CL-GLFW CALLBACK NOTES

All callback setting functions can take either a pointer to a C function,
a function object, a function symbol, or nil to clear the callback function.

THIS CALLBACK FUNCTION

~a" documentation)
         (cl:cond
           ((null callback)
            (,internal-setter-name (cffi:null-pointer)))
           ((symbolp callback)
            (setf ,special-name callback)
            (,internal-setter-name (cffi:callback ,callback-name)))
           ((functionp callback)
            (setf ,special-name callback)
            (,internal-setter-name (cffi:callback ,callback-name)))
           ((cffi:pointerp callback)
            (,internal-setter-name callback))
           (t (error "Not an acceptable callback. Must be foreign pointer, function object, function's symbol, or nil.")))))))


(define-callback-setter "glfwSetWindowCloseCallback" #:window-close :int ()
                        :documentation
                        "
Function that will be called when a user requests that the window should be
closed, typically by clicking the window close icon (e.g. the cross in the upper right corner of a
window under Microsoft Windows). The function should have the following type:
(function () integer)

The return value of the callback function indicates whether or not the window close action should continue. If the function returns
gl:+true+, the window will be closed. If the function returns gl:+false+, the window will not
be closed. If you give a CFFI callback returning glfw:boolean, you can use t and nil as return types.

Notes
Window close events are recorded continuously, but only reported when glfwPollEvents,
glfwWaitEvents or glfwSwapBuffers is called.
The OpenGL context is still valid when this function is called.
Note that the window close callback function is not called when glfwCloseWindow is called, but only
when the close request comes from the window manager.
Do not call glfwCloseWindow from a window close callback function. Close the window by returning
gl:+true+ from the function.
")


(defcfun+doc ("glfwSetWindowTitle" set-window-title) :void ((title :string))
	     "Parameters
title
       Pointer to a null terminated ISO 8859-1 (8-bit Latin 1) string that holds the title of the window.

Description
The function changes the title of the opened window.

Notes
The title property of a window is often used in situations other
than for the window title, such as the title of an application icon
when it is in iconified state.")

(defcfun+doc ("glfwSetWindowSize" set-window-size) :void ((width :int) (height :int))
	     "Parameters
width
       Width of the window.
height
       Height of the window.
Return values
none
Description

The function changes the size of an opened window. The width and
height parameters denote the size of the client area of the
window (i.e. excluding any window borders and decorations).  If the
window is in fullscreen mode, the video mode will be changed to a
resolution that closest matches the width and height parameters (the
number of color bits will not be changed).

Notes

The OpenGL context is guaranteed to be preserved after calling glfwSetWindowSize, even if the
video mode is changed.
")

(defcfun+doc ("glfwSetWindowPos" set-window-pos) :void ((x :int) (y :int))
	     "Parameters
x
      Horizontal position of the window, relative to the upper left corner of the desktop.
y
      Vertical position of the window, relative to the upper left corner of the desktop.
Return values
none
Description
The function changes the position of an opened window. It does not have any effect on a fullscreen
window.
")

(defcfun ("glfwGetWindowSize" %get-window-size) :void (width :pointer) (height :pointer))
(defun get-window-size ()
  "The function is used for determining the size of an opened window. The returned values are dimensions
of the client area of the window (i.e. excluding any window borders and decorations).
(list width height)"
  (cffi:with-foreign-objects ((width :int)
			      (height :int))
    (%get-window-size width height)
    (list (mem-ref width :int)
	  (mem-ref height :int))))

(define-callback-setter "glfwSetWindowSizeCallback" #:window-size :void ((width :int) (height :int))
                        :documentation
                        "
Function that will be called every time the window size changes. The
function should takes the arguments (width height) giving the new width and height of the window client area.

A window has to be opened for this function to have any effect.
Notes
Window size changes are recorded continuously, but only reported when glfwPollEvents,
glfwWaitEvents or glfwSwapBuffers is called. ")

(defcfun+doc ("glfwIconifyWindow" iconify-window) :void ()
	     "Iconify a window. If the window is in fullscreen mode, then the desktop video mode will be restored.")

(defcfun+doc ("glfwRestoreWindow" restore-window) :void ()
	     "Restore an iconified window. If the window that is restored is in fullscreen mode, then the fullscreen
video mode will be restored.")

(defcfun+doc ("glfwGetWindowParam" get-window-param) :int ((param :int))
"Parameters
param
      A token selecting which parameter the function should return (see table 3.2).

Return values

The function returns different parameters depending on the value of
param. Table 3.2 lists valid param values, and their corresponding
return values.

Description
The function is used for acquiring various properties of an opened window.

Notes: GLFW_ACCELERATED is only supported under Windows. Other systems
will always return GL_TRUE. Under Windows, GLFW_ACCELERATED means that
the OpenGL renderer is a 3rd party renderer, rather than the fallback
Microsoft software OpenGL renderer. In other words, it is not a real
guarantee that the OpenGL renderer is actually hardware accelerated.
")

(defcfun+doc ("glfwSwapBuffers" swap-buffers) :void ()
	     "The function swaps the back and front color buffers of the window. If +AUTO_POLL_EVENTS+
is enabled (which is the default), glfwPollEvents is called before swapping the front and back buffers.")


(defcfun+doc ("glfwSwapInterval" swap-interval) :void ((interval :int))
	     "Parameters
interval
      Minimum number of monitor vertical retraces between each buffer swap performed by
      glfwSwapBuffers. If interval is zero, buffer swaps will not be synchronized to the vertical
      refresh of the monitor (also known as VSync off).

Description

The function selects the minimum number of monitor vertical retraces
that should occur between two buffer swaps. If the selected swap
interval is one, the rate of buffer swaps will never be higher than
the vertical refresh rate of the monitor. If the selected swap
interval is zero, the rate of buffer swaps is only limited by the
speed of the software and the hardware.

Notes

This function will only have an effect on hardware and drivers that
support user selection of the swap interval. ")


(define-callback-setter "glfwSetWindowRefreshCallback" #:window-refresh :void ()
                        :documentation
                        "
Function that will be called when the window client area needs to be
refreshed. The function takes no arguments and returns nothing (void).

Description

The function selects which function to be called upon a window refresh
event, which occurs when any part of the window client area has been
damaged, and needs to be repainted (for instance, if a part of the
window that was previously occluded by another window has become
visible).  A window has to be opened for this function to have any
effect.

Notes
Window refresh events are recorded continuously, but only reported when glfwPollEvents,
glfwWaitEvents or glfwSwapBuffers is called.
")

(defcstruct vidmode
  (width :int)
  (height :int)
  (redbits :int)
  (bluebits :int)
  (greenbits :int))

(defcfun ("glfwGetVideoModes" %get-video-modes) :int (list :pointer) (maxcount :int))

(defun get-video-modes (maxcount)
  "Parameters
maxcount
      Maximum number of video modes that list vector can hold.

Return values
The function returns the number of detected video modes (this number will never exceed maxcount).
The list vector is filled out with the video modes that are supported by the system.

Description
The function returns a list of supported video modes. Each video mode is represented by a
list of the form:
(width height redbits greenbits bluebits)

Notes
The returned list is sorted, first by color depth (RedBits + GreenBits + BlueBits), and then by
resolution (Width * Height), with the lowest resolution, fewest bits per pixel mode first. "
  (declare (optimize (debug 3)))
  (with-foreign-object (list 'vidmode maxcount)
    (let ((count (%get-video-modes list maxcount)))
      (loop for i below count
	 collecting
	 (let ((mode (cffi:mem-aref list 'vidmode i)))
	   (list (foreign-slot-value mode 'vidmode 'width)
		 (foreign-slot-value mode 'vidmode 'height)
		 (foreign-slot-value mode 'vidmode 'redbits)
		 (foreign-slot-value mode 'vidmode 'greenbits)
		 (foreign-slot-value mode 'vidmode 'bluebits)))))))

(defcfun ("glfwGetDesktopMode" %get-desktop-mode) :void (mode :pointer))
(defun get-desktop-mode ()
  "Parameters
mode
       Pointer to a GLFWvidmode structure, which will be filled out by the function.
Return values
The GLFWvidmode structure pointed to by mode is filled out with the desktop video mode.
Description
The function returns the desktop video mode in a GLFWvidmode structure. See glfwGetVideoModes
for a definition of the GLFWvidmode structure.
Notes
The color depth of the desktop display is always reported as the number of bits for each individual color
component (red, green and blue), even if the desktop is not using an RGB or RGBA color format. For
instance, an indexed 256 color display may report RedBits = 3, GreenBits = 3 and BlueBits = 2, which
adds up to 8 bits in total.
The desktop video mode is the video mode used by the desktop, not the current video mode (which may
differ from the desktop video mode if the GLFW window is a fullscreen window).
"
  (with-foreign-object (mode 'vidmode)
    (%get-desktop-mode mode)
    (list (foreign-slot-value mode 'vidmode 'width)
	  (foreign-slot-value mode 'vidmode 'height)
	  (foreign-slot-value mode 'vidmode 'redbits)
	  (foreign-slot-value mode 'vidmode 'greenbits)
	  (foreign-slot-value mode 'vidmode 'bluebits))))

(defcfun+doc ("glfwPollEvents" poll-events) :void ()
	     "Description
The function is used for polling for events, such as user input and window resize events. Upon calling
this function, all window states, keyboard states and mouse states are updated. If any related callback
functions are registered, these are called during the call to glfwPollEvents.

Notes
glfwPollEvents is called implicitly from glfwSwapBuffers if +AUTO_POLL_EVENTS+ is
enabled (default). Thus, if glfwSwapBuffers is called frequently, which is normally the case, there is
no need to call glfwPollEvents.
")

(defcfun+doc ("glfwWaitEvents" wait-events) :void ()
	     "Description
The function is used for waiting for events, such as user input and window resize events. Upon calling
this function, the calling thread will be put to sleep until any event appears in the event queue. When
events are ready, the events will be processed just as they are processed by glfwPollEvents.
If there are any events in the queue when the function is called, the function will behave exactly like
glfwPollEvents (i.e. process all messages and then return, without blocking the calling thread).

Notes
It is guaranteed that glfwWaitEvents will wake up on any event that can be processed by
glfw::PollEvents. However, glfwWaitEvents may wake up on events that are not processed or reported
by glfw::PollEvents too, and the function may behave differently on different systems. Do no make any
assumptions about when or why glfw::WaitEvents will return.
")

(defmacro key-int-to-symbol (key-form)
  `(case ,key-form
     ,@(sort
        (loop for special-key in  '("backspace" "del" "down" "end" "enter" "esc" "f1" "f10" "f11" "f12" "f13"
                                    "f14" "f15" "f16" "f17" "f18" "f19" "f2" "f20" "f21" "f22" "f23" "f24" "f25"
                                    "f3" "f4" "f5" "f6" "f7" "f8" "f9" "home" "insert" "kp-0" "kp-1" "kp-2" "kp-3"
                                    "kp-4" "kp-5" "kp-6" "kp-7" "kp-8" "kp-9" "kp-add" "kp-decimal" "kp-divide"
                                    "kp-enter" "kp-equal" "kp-multiply" "kp-subtract" "lalt" "lctrl" "left"
                                    "lshift" "pagedown" "pageup" "ralt" "rctrl" "right" "rshift"
                                    "special" "tab" "unknown" "up"
				    "kp-num-lock" "caps-lock" "scroll-lock" "pause" "lsuper" "rsuper" "menu")
           collect
           `(,(symbol-value (find-symbol (string-upcase (format nil "+key-~a+" special-key)) (find-package '#:glfw)))
              ,(intern (string-upcase special-key) (find-package '#:keyword))))
        #'(lambda (a b) (< (car a) (car b))))))


(defun lispify-key (key-int)
  "Convert key-int from GLFW's integer representation to lisp characters if from 0 to 255, or keywords, if not within 0-255 inclusive."
  (if (and (>= key-int 0) (< key-int 256))
      (code-char key-int)
      (key-int-to-symbol key-int)))


(defcfun+doc ("glfwGetKey" get-key) :int ((key :int))
	     "Parameters
key
      A keyboard key identifier, which can be either an uppercase printable ISO 8859-1 (Latin 1)
      character (e.g. 'A', '3' or '.'), or a special key identifier. Table 3.3 lists valid special key
      identifiers.
Return values
The function returns +PRESS+ if the key is held down, or +RELEASE+ if the key is not
held down.

Description
The function queries the current state of a specific keyboard key. The physical location of each key
depends on the system keyboard layout setting.

Notes
The constant +KEY_SPACE+ is equal to 32, which is the ISO 8859-1 code for space.
Not all key codes are supported on all systems. Also, while some keys are available on some keyboard
layouts, they may not be available on other keyboard layouts.
For systems that do not distinguish between left and right versions of modifier keys (shift, alt and
control), the left version is used (e.g. +KEY_LSHIFT+)
A window must be opened for the function to have any effect, and glfw::PollEvents, glfw::WaitEvents or
glfw::SwapBuffers must be called before any keyboard events are recorded and reported by
glfw::GetKey.
")


(defun lispify-mouse-button (button-int)
  "Convert button-int from GLFW's integer representation to a lisp keyword."
  (case button-int
    (#.glfw:+mouse-button-left+ :left)
    (#.glfw:+mouse-button-middle+ :middle)
    (#.glfw:+mouse-button-right+ :right)
    (#.glfw:+mouse-button-4+ :button-4)
    (#.glfw:+mouse-button-5+ :button-5)
    (#.glfw:+mouse-button-6+ :button-6)
    (#.glfw:+mouse-button-7+ :button-7)
    (#.glfw:+mouse-button-8+ :button-8)))


(defcfun+doc ("glfwGetMouseButton" get-mouse-button) :int ((button :int))
	     "Parameters
button
      A mouse button identifier, which can be one of the mouse button identifiers listed in table 3.4.
Return values
The function returns +PRESS+ if the mouse button is held down, or +RELEASE+ if the
mouse button is not held down.
Description
The function queries the current state of a specific mouse button.
Notes
A window must be opened for the function to have any effect, and glfw::PollEvents, glfw::WaitEvents or
glfw::SwapBuffers must be called before any mouse button events are recorded and reported by
glfw::GetMouseButton.
+MOUSE_BUTTON_LEFT+ is equal to +MOUSE_BUTTON_1+
+MOUSE_BUTTON_RIGHT+ is equal to +MOUSE_BUTTON_2+
+MOUSE_BUTTON_MIDDLE+ is equal to +MOUSE_BUTTON_3+
")


(defcfun+out+doc ("glfwGetMousePos" get-mouse-pos) :void ((:out xpos :int) (:out ypos :int))
		 "Return values
The function returns the current mouse position in xpos and ypos.

Description
The function returns the current mouse position. If the cursor is not hidden, the mouse position is the
cursor position, relative to the upper left corner of the window and limited to the client area of the
window. If the cursor is hidden, the mouse position is a virtual absolute position, not limited to any
boundaries except to those implied by the maximum number that can be represented by a signed integer
(normally -2147483648 to +2147483647).

Notes
A window must be opened for the function to have any effect, and glfw::PollEvents, glfw::WaitEvents or
glfw::SwapBuffers must be called before any mouse movements are recorded and reported by
glfw::GetMousePos.
")


(defcfun+doc ("glfwSetMousePos" set-mouse-pos) :void ((xpos :int) (ypos :int))
	     "Parameters
xpos
     Horizontal position of the mouse.
ypos
     Vertical position of the mouse.

Description
The function changes the position of the mouse. If the cursor is visible (not disabled), the cursor will be
moved to the specified position, relative to the upper left corner of the window client area. If the cursor
is hidden (disabled), only the mouse position that is reported by GLFW is changed.
")

(defcfun+doc ("glfwGetMouseWheel" get-mouse-wheel) :int ()
	     "Return values
The function returns the current mouse wheel position.
Description
The function returns the current mouse wheel position. The mouse wheel can be thought of as a third
mouse axis, which is available as a separate wheel or up/down stick on some mice.
Notes
A window must be opened for the function to have any effect, and glfw::PollEvents, glfw::WaitEvents or
glfw::SwapBuffers must be called before any mouse wheel movements are recorded and reported by
glfw::GetMouseWheel.
")

(defcfun+doc ("glfwSetMouseWheel" set-mouse-wheel) :void ((pos :int))
	     "Parameters
pos
     Position of the mouse wheel.
Description
The function changes the position of the mouse wheel.
")


(define-callback-setter "glfwSetKeyCallback" #:key :void ((key :int) (action :int))
                        :before-form (setf key (lispify-key key))
                        :documentation
                        "
Function that will be called every time a key is pressed or released.
Function should take the arguments (key action), where key is either a character,
if the key pressed was a member of iso-8859-1, or a keyword representing the key pressed if not.
See the GLFW manual, table 3.3 for special key identifiers. Action is either glfw:+press+ or
glfw:+release+. Use set-char-callback instead if you want to read just characters.

Description
The function selects which function to be called upon a keyboard key event. The callback function is
called every time the state of a single key is changed (from released to pressed or vice versa). The
reported keys are unaffected by any modifiers (such as shift or alt).
A window has to be opened for this function to have any effect.

Notes
Keyboard events are recorded continuously, but only reported when glfw::PollEvents, glfw::WaitEvents
or glfw::SwapBuffers is called.
")
(define-callback-setter "glfwSetCharCallback" #:char :void ((character :int) (action :int))
                        :before-form (setf character (code-char character))
                        :documentation
                        "
Function that will be called every time a printable character is generated by
the keyboard. The function should take the arguments (character action)
where character is a lisp character and action is either glfw:+press+ or glfw:+release+.

NB this makes the presumption that your lisp implementation will use Unicode for code-char.

Description
The function selects which function to be called upon a keyboard character event. The callback function
is called every time a key that results in a printable Unicode character is pressed or released. Characters
are affected by modifiers (such as shift or alt).
A window has to be opened for this function to have any effect.

Notes
Character events are recorded continuously, but only reported when glfw::PollEvents, glfw::WaitEvents
or glfw::SwapBuffers is called.
Control characters, such as tab and carriage return, are not reported to the character callback function,
since they are not part of the Unicode character set. Use the key callback function for such events (see
glfw::SetKeyCallback).
The Unicode character set supports character codes above 255, so never cast a Unicode character to an
eight bit data type (e.g. the C language char type) without first checking that the character code is less
than 256. Also note that Unicode character codes 0 to 255 are equal to ISO 8859-1 (Latin 1).
")

(define-callback-setter "glfwSetMouseButtonCallback" #:mouse-button :void ((button :int) (action :int))
                        :before-form (setf button (lispify-mouse-button button))
                        :documentation
                        "
Function that will be called every time a mouse button is pressed or released.
The function takes the arguments (button action), where button is a keyword symbol as returned by
lispify-mouse-button and action is either glfw:+press+ or glfw:+release+.

Description
The function selects which function to be called upon a mouse button event.
A window has to be opened for this function to have any effect.

Notes
Mouse button events are recorded continuously, but only reported when glfw::PollEvents,
glfw::WaitEvents or glfw::SwapBuffers is called.
+MOUSE_BUTTON_LEFT+ is equal to +MOUSE_BUTTON_1+
+MOUSE_BUTTON_RIGHT+ is equal to +MOUSE_BUTTON_2+
+MOUSE_BUTTON_MIDDLE+ is equal to +MOUSE_BUTTON_3+
")
(define-callback-setter "glfwSetMousePosCallback" #:mouse-pos :void ((x :int) (y :int))
                        :documentation
                        "
Function that will be called every time the mouse is moved.
The function takes the arguments (x y), where x and y are the current position of the mouse.

Description
The function selects which function to be called upon a mouse motion event.
A window has to be opened for this function to have any effect.

Notes
Mouse motion events are recorded continuously, but only reported when glfw::PollEvents,
glfw::WaitEvents or glfw::SwapBuffers is called.
")

(defparameter *mouse-wheel-cumulative* nil)
(define-callback-setter "glfwSetMouseWheelCallback" #:mouse-wheel :void ((pos :int))
                        :after-form (unless *mouse-wheel-cumulative* (glfw:set-mouse-wheel 0))
                        :documentation
                        "
Function that will be called every time the mouse wheel is moved.
The function takes one argument: the position of the mouse wheel.
This DIFFERS FROM GLFW's DEFAULT behaviour in that the position is
reset after every call to this function, effectively giving the delta.
As most programs are only interested in the delta anyway, this is thought
to save others recording the state of it again.
If you wish to have the original GLFW behaviour, set cl-glfw:*mouse-wheel-cumulative* to t.

Description
The function selects which function to be called upon a mouse wheel event.
A window has to be opened for this function to have any effect.
Notes
Mouse wheel events are recorded continuously, but only reported when glfw::PollEvents,
glfw::WaitEvents or glfw::SwapBuffers is called.
")

(defcfun+doc ("glfwGetJoystickParam" get-joystick-param) :int ((joy :int) (param :int))
	     "Parameters
joy
      A joystick identifier, which should be +JOYSTICK_n+ where n is in the range 1 to 16.
param
      A token selecting which parameter the function should return (see table 3.5).
Return values
The function returns different parameters depending on the value of param. Table 3.5 lists valid param
values, and their corresponding return values.
Description
The function is used for acquiring various properties of a joystick.
Notes
The joystick information is updated every time the function is called.
No window has to be opened for joystick information to be valid.
")

(defcfun ("glfwGetJoystickPos" %get-joystick-pos) :int (joy :int) (pos :pointer) (numaxes :int))

(defun get-joystick-pos (joy numaxes)
  "Parameters
joy
       A joystick identifier, which should be +JOYSTICK_n+ where n is in the range 1 to 16.
numaxes
       Specifies how many axes should be returned.
Return values
       An list that will hold the positional values for all requested axes.
If the joystick is not supported or connected, the function will
return nil.

Description
The function queries the current position of one or more axes of a joystick. The positional values are
returned in an array, where the first element represents the first axis of the joystick (normally the X
axis). Each position is in the range -1.0 to 1.0. Where applicable, the positive direction of an axis is
right, forward or up, and the negative direction is left, back or down.
If numaxes exceeds the number of axes supported by the joystick, or if the joystick is not available, the
unused elements in the pos array will be set to 0.0 (zero).

Notes
The joystick state is updated every time the function is called, so there is no need to call glfw::PollEvents
or glfw::WaitEvents for joystick state to be updated.
Use glfw::GetJoystickParam to retrieve joystick capabilities, such as joystick availability and number of
supported axes.
No window has to be opened for joystick input to be valid.
"
  (with-foreign-object (pos :float numaxes)
    (let ((numaxes (%get-joystick-pos joy pos numaxes)))
      (loop for i below numaxes collecting (mem-aref pos :float i)))))


(defcfun ("glfwGetJoystickButtons" %get-joystick-buttons) :int (joy :int) (buttons :pointer) (numbuttons :int))
(defun get-joystick-buttons (joy numbuttons)
  "Parameters
joy
       A joystick identifier, which should be +JOYSTICK_n+ where n is in the range 1 to 16.
numbuttons
       Specifies how many buttons should be returned.
Return values
       A list that will hold the button states for all requested buttons.
The function returns the number of actually returned buttons. This is the minimum of numbuttons and
the number of buttons supported by the joystick. If the joystick is not supported or connected, the
function will return 0 (zero).

Description
The function queries the current state of one or more buttons of a joystick. The button states are
returned in an array, where the first element represents the first button of the joystick. Each state can be
either +PRESS+ or +RELEASE+
If numbuttons exceeds the number of buttons supported by the joystick, or if the joystick is not
available, the unused elements in the buttons array will be set to +RELEASE+

Notes
The joystick state is updated every time the function is called, so there is no need to call glfw::PollEvents
or glfw::WaitEvents for joystick state to be updated.
Use glfw::GetJoystickParam to retrieve joystick capabilities, such as joystick availability and number of
supported buttons.
No window has to be opened for joystick input to be valid.
"
  (with-foreign-object (buttons :unsigned-char numbuttons)
    (let ((numbuttons (%get-joystick-buttons joy buttons numbuttons)))
      (loop for i below numbuttons collecting (mem-aref buttons :unsigned-char i)))))


(defcfun+doc ("glfwGetTime" get-time) :double ()
	     "Return values
The function returns the value of the high precision timer. The time is measured in seconds, and is
returned as a double precision floating point value.

Description
The function returns the state of a high precision timer. Unless the timer has been set by the
glfw::SetTime function, the time is measured as the number of seconds that have passed since glfw::Init
was called.

Notes
The resolution of the timer depends on which system the program is running on. The worst case
resolution is somewhere in the order of 10 ms, while for most systems the resolution should be better
than 1us.
")

(defcfun+doc ("glfwSetTime" set-time) :void ((time :double))
	     "Parameters
time
      Time (in seconds) that the timer should be set to.

Description
The function sets the current time of the high precision timer to the specified time. Subsequent calls to
glfw::GetTime will be relative to this time. The time is given in seconds.
")

(defcfun+doc ("glfwSleep" sleep) :void ((time :double))
	     "Parameters
time
        Time, in seconds, to sleep.

Description
The function puts the calling thread to sleep for the requested period of time. Only the calling thread is
put to sleep. Other threads within the same process can still execute.

Notes
There is usually a system dependent minimum time for which it is possible to sleep. This time is
generally in the range 1 ms to 20 ms, depending on thread sheduling time slot intervals etc. Using a
shorter time as a parameter to glfw::Sleep can give one of two results: either the thread will sleep for the
minimum possible sleep time, or the thread will not sleep at all (glfw::Sleep returns immediately). The
latter should only happen when very short sleep times are specified, if at all. ")

(defcstruct image
  (width :int)
  (height :int)
  (format :int)
  (bytes-per-pixel :int)
  (data :pointer))

(defcfun+doc ("glfwReadImage" read-image) boolean
  ((name :string) (img image) (flags :int))
  "Parameters
name
      A null terminated ISO 8859-1 string holding the name of the file that should be read.
img
      Pointer to a GLFWimage struct, which will hold the information about the loaded image (if the
      read was successful).
flags
      Flags for controlling the image reading process. Valid flags are listed in table 3.6
Return values
The function returns t if the image was loaded successfully. Otherwise nil is
returned.
Description
The function reads an image from the file specified by the parameter name and returns the image
information and data in a GLFWimage structure, which has the following definition:

typedef struct {
      int Width, Height;                 //   Image dimensions
      int Format;                        //   OpenGL pixel format
      int BytesPerPixel;                 //   Number of bytes per pixel
      unsigned char *Data;               //   Pointer to pixel data
} GLFWimage;

Width and Height give the dimensions of the image. Format specifies an OpenGL pixel format,
which can be GL_LUMINANCE or GL_ALPHA (for gray scale images), GL_RGB or GL_RGBA.
BytesPerPixel specifies the number of bytes per pixel. Data is a pointer to the actual pixel data.

By default the read image is rescaled to the nearest larger 2m ? 2n resolution using bilinear
interpolation, if necessary, which is useful if the image is to be used as an OpenGL texture. This
behavior can be disabled by setting the GLFW_NO_RESCALE_BIT flag.
Unless the flag GLFW_ORIGIN_UL_BIT is set, the first pixel in img->Data is the lower left corner of
the image. If the flag GLFW_ORIGIN_UL_BIT is set, however, the first pixel is the upper left corner.
For single component images (i.e. gray scale), Format is set to GL_ALPHA if the flag

+ALPHA_MAP_BIT+ flag is set, otherwise Format is set to GL_LUMINANCE.
Notes
glfw::ReadImage supports the Truevision Targa version 1 file format (.TGA). Supported pixel formats
are: 8-bit gray scale, 8-bit paletted (24/32-bit color), 24-bit true color and 32-bit true color + alpha.
Paletted images are translated into true color or true color + alpha pixel formats.
Please note that OpenGL 1.0 does not support single component alpha maps, so do not use images
with Format = GL_ALPHA directly as textures under OpenGL 1.0.
")

(defcfun+doc ("glfwReadMemoryImage" read-memory-image) boolean
    ((data :pointer) (size :long) (img image) (flags :int))
  "Parameters
data
      The memory buffer holding the contents of the file that should be read.
size
      The size, in bytes, of the memory buffer.
img
      Pointer to a GLFWimage struct, which will hold the information about the loaded image (if the
      read was successful).
flags
      Flags for controlling the image reading process. Valid flags are listed in table 3.6
Return values
The function returns t if the image was loaded successfully. Otherwise nil is
returned.
Description
The function reads an image from the memory buffer specified by the parameter data and returns the
image information and data in a GLFWimage structure, which has the following definition:

typedef struct {
      int Width, Height;                 //   Image dimensions
      int Format;                        //   OpenGL pixel format
      int BytesPerPixel;                 //   Number of bytes per pixel
      unsigned char *Data;               //   Pointer to pixel data
} GLFWimage;

Width and Height give the dimensions of the image. Format specifies an OpenGL pixel format,
which can be GL_LUMINANCE or GL_ALPHA (for gray scale images), GL_RGB or GL_RGBA.
BytesPerPixel specifies the number of bytes per pixel. Data is a pointer to the actual pixel data.

By default the read image is rescaled to the nearest larger 2m ? 2n resolution using bilinear
interpolation, if necessary, which is useful if the image is to be used as an OpenGL texture. This
behavior can be disabled by setting the GLFW_NO_RESCALE_BIT flag.
Unless the flag GLFW_ORIGIN_UL_BIT is set, the first pixel in img->Data is the lower left corner of
the image. If the flag GLFW_ORIGIN_UL_BIT is set, however, the first pixel is the upper left corner.
For single component images (i.e. gray scale), Format is set to GL_ALPHA if the flag
+ALPHA_MAP_BIT+ flag is set, otherwise Format is set to GL_LUMINANCE.
Notes
glfw::ReadMemoryImage supports the Truevision Targa version 1 file format (.TGA). Supported pixel
formats are: 8-bit gray scale, 8-bit paletted (24/32-bit color), 24-bit true color and 32-bit true color +
alpha.
Paletted images are translated into true color or true color + alpha pixel formats.
Please note that OpenGL 1.0 does not support single component alpha maps, so do not use images
with Format = GL_ALPHA directly as textures under OpenGL 1.0.
")

(defcfun+doc ("glfwFreeImage" free-image) :void ((img image))
	     "Parameters
img
     Pointer to a GLFWimage struct.
Description
The function frees any memory occupied by a loaded image, and clears all the fields of the GLFWimage
struct. Any image that has been loaded by the glfw::ReadImage function should be deallocated using
this function, once the image is not needed anymore. ")

(defcfun+doc ("glfwLoadTexture2D" load-texture-2d) boolean ((name :string) (flags :int))
	     "Parameters
name
       An ISO 8859-1 string holding the name of the file that should be loaded.
flags
       Flags for controlling the texture loading process. Valid flags are listed in table 3.7.
Return values
The function returns t if the texture was loaded successfully. Otherwise nil is
returned.

Description

The function reads an image from the file specified by the parameter
name and uploads the image to OpenGL texture memory (using the
glTexImage2D function).  If the GLFW_BUILD_MIPMAPS_BIT flag is set,
all mipmap levels for the loaded texture are generated and uploaded to
texture memory.  Unless the flag +ORIGIN_UL_BIT+ is set, the origin of
the texture is the lower left corner of the loaded image. If the flag
+ORIGIN_UL_BIT+ is set, however, the first pixel is the upper left
corner.  For single component images (i.e. gray scale), the texture is
uploaded as an alpha mask if the flag +ALPHA_MAP_BIT+ flag is set,
otherwise it is uploaded as a luminance texture.

Notes
glfw::LoadTexture2D supports the Truevision Targa version 1 file format (.TGA). Supported pixel
formats are: 8-bit gray scale, 8-bit paletted (24/32-bit color), 24-bit true color and 32-bit true color +
alpha.
Paletted images are translated into true color or true color + alpha pixel formats.
The read texture is always rescaled to the nearest larger 2m ? 2n resolution using bilinear interpolation,
if necessary, since OpenGL requires textures to have a 2m ? 2n resolution.
If the GL_SGIS_generate_mipmap extension, which is usually hardware accelerated, is supported by
the OpenGL implementation it will be used for mipmap generation. Otherwise the mipmaps will be
generated by GLFW in software.

Since OpenGL 1.0 does not support single component alpha maps, alpha map textures are converted
to RGBA format under OpenGL 1.0 when the GLFW_ALPHA_MAP_BIT flag is set and the loaded
texture is a single component texture. The red, green and blue components are set to 1.0.
")

(defcfun+doc ("glfwLoadMemoryTexture2D" load-memory-texture-2d) boolean
    ((data :pointer) (size :long) (flags :int))
  "Parameters
data
       The memory buffer holding the contents of the file that should be loaded.
size
       The size, in bytes, of the memory buffer.
flags
       Flags for controlling the texture loading process. Valid flags are listed in table 3.7.
Return values
The function returns t if the texture was loaded successfully. Otherwise nil is
returned.

Description
The function reads an image from the memory buffer specified by the parameter data and uploads the
image to OpenGL texture memory (using the glTexImage2D function).
If the GLFW_BUILD_MIPMAPS_BIT flag is set, all mipmap levels for the loaded texture are
generated and uploaded to texture memory.
Unless the flag +ORIGIN_UL_BIT+ is set, the origin of the texture is the lower left corner of the
loaded image. If the flag +ORIGIN_UL_BIT+ is set, however, the first pixel is the upper left
corner.
For single component images (i.e. gray scale), the texture is uploaded as an alpha mask if the flag
+ALPHA_MAP_BIT+ flag is set, otherwise it is uploaded as a luminance texture.

Notes
glfw::LoadMemoryTexture2D supports the Truevision Targa version 1 file format (.TGA). Supported
pixel formats are: 8-bit gray scale, 8-bit paletted (24/32-bit color), 24-bit true color and 32-bit true color
+ alpha.
Paletted images are translated into true color or true color + alpha pixel formats.
The read texture is always rescaled to the nearest larger 2m ? 2n resolution using bilinear interpolation,
if necessary, since OpenGL requires textures to have a 2m ? 2n resolution.
If the GL_SGIS_generate_mipmap extension, which is usually hardware accelerated, is supported by
the OpenGL implementation it will be used for mipmap generation. Otherwise the mipmaps will be
generated by GLFW in software.

Since OpenGL 1.0 does not support single component alpha maps, alpha map textures are converted
to RGBA format under OpenGL 1.0 when the GLFW_ALPHA_MAP_BIT flag is set and the loaded
texture is a single component texture. The red, green and blue components are set to 1.0.
")


(defcfun+doc ("glfwLoadTextureImage2D" load-texture-image-2d) boolean ((img image)
								    (flags :int))
	     "Parameters
img
      Pointer to a GLFWimage struct holding the information about the image to be loaded.
flags
      Flags for controlling the texture loading process. Valid flags are listed in table 3.7.
Return values
The function returns t if the texture was loaded successfully. Otherwise nil is
returned.

Description
The function uploads the image specified by the parameter img to OpenGL texture memory (using
the glTexImage2D function).
If the +BUILD_MIPMAPS_BIT+ flag is set, all mipmap levels for the loaded texture are
generated and uploaded to texture memory.
Unless the flag +ORIGIN_UL_BIT+ is set, the origin of the texture is the lower left corner of the
loaded image. If the flag +ORIGIN_UL_BIT+ is set, however, the first pixel is the upper left
corner.
For single component images (i.e. gray scale), the texture is uploaded as an alpha mask if the flag
+ALPHA_MAP_BIT+ flag is set, otherwise it is uploaded as a luminance texture.

Notes
glfw::LoadTextureImage2D supports the Truevision Targa version 1 file format (.TGA). Supported
pixel formats are: 8-bit gray scale, 8-bit paletted (24/32-bit color), 24-bit true color and 32-bit true color
+ alpha.
Paletted images are translated into true color or true color + alpha pixel formats.
The read texture is always rescaled to the nearest larger 2m ? 2n resolution using bilinear interpolation,
if necessary, since OpenGL requires textures to have a 2m ? 2n resolution.
If the GL_SGIS_generate_mipmap extension, which is usually hardware accelerated, is supported by
the OpenGL implementation it will be used for mipmap generation. Otherwise the mipmaps will be
generated by GLFW in software.

Since OpenGL 1.0 does not support single component alpha maps, alpha map textures are converted
to RGBA format under OpenGL 1.0 when the GLFW_ALPHA_MAP_BIT flag is set and the loaded
texture is a single component texture. The red, green and blue components are set to 1.0. ")


(defcfun+doc ("glfwExtensionSupported" extension-supported) boolean ((extension :string))
	     "Parameters
extension
      A null terminated ISO 8859-1 string containing the name of an OpenGL extension.
Return values
The function returns t if the extension is supported. Otherwise it returns nil.
Description
The function does a string search in the list of supported OpenGL extensions to find if the specified
extension is listed.
Notes

An OpenGL context must be created before this function can be called (i.e. an OpenGL window
must have been opened with glfwOpenWindow).
In addition to checking for OpenGL extensions, GLFW also checks for extensions in the operating
system ?glue API?, such as WGL extensions under Windows and glX extensions under the X Window
System.
")

(defcfun+doc ("glfwGetProcAddress" get-proc-address) :pointer ((procname :string))
	     "Parameters
procname
       A null terminated ISO 8859-1 string containing the name of an OpenGL extension function.
Return values
The function returns the pointer to the specified OpenGL function if it is supported, otherwise
NULL is returned.
Description
The function acquires the pointer to an OpenGL extension function. Some (but not all) OpenGL
extensions define new API functions, which are usually not available through normal linking. It is
therefore necessary to get access to those API functions at runtime.
Notes

An OpenGL context must be created before this function can be called (i.e. an OpenGL window
must have been opened with glfwOpenWindow).
Some systems do not support dynamic function pointer retrieval, in which case glfwGetProcAddress
will always return NULL.
")

(defcfun+out+doc ("glfwGetGLVersion" get-gl-version) :void ((:out major :int)
							    (:out minor :int)
							    (:out rev :int))
		 "Return values
The function returns the major and minor version numbers and the revision for the currently used
OpenGL implementation as a list (major minor rev).

Description
The function returns the OpenGL implementation version. This is a convenient function that parses
the version number information from the string returned by calling
glGetString( GL_VERSION ). The OpenGL version information can be used to determine
what functionality is supported by the used OpenGL implementation.

Notes
An OpenGL context must be created before this function can be called (i.e. an OpenGL window
must have been opened with glfwOpenWindow). ")

(defctype thread :int)
(defctype threadfun :pointer)
(defctype mutex :pointer)
(defctype cond :pointer)

(defcfun+doc ("glfwCreateThread" create-thread) thread ((fun threadfun) (arg :pointer) )
"Parameters
fun
      A pointer to a function that acts as the entry point for the new thread. The function should have
      the following C language prototype:
      void GLFWCALL functionname( void *arg );
      Where functionname is the name of the thread function, and arg is the user supplied argument
      (see below).
arg
      An arbitrary argument for the thread. arg will be passed as the argument to the thread function
      pointed to by fun. For instance, arg can point to data that is to be processed by the thread.
Return values
The function returns a thread identification number if the thread was created successfully. This number
is always positive. If the function fails, a negative number is returned.
Description
The function creates a new thread, which executes within the same address space as the calling process.
The thread entry point is specified with the fun argument.
Once the thread function fun returns, the thread dies.
Notes
Even if the function returns a positive thread ID, indicating that the thread was created successfully, the
thread may be unable to execute, for instance if the thread start address is not a valid thread entry point.
")
(defcfun+doc ("glfwDestroyThread" destroy-thread) :void ((id thread))
"Parameters
ID
      A thread identification handle, which is returned by glfw::CreateThread or glfw::GetThreadID.
Description
The function kills a running thread and removes it from the thread list.
Notes
This function is a very dangerous operation, which may interrupt a thread in the middle of an important
operation, and its use is discouraged. You should always try to end a thread in a graceful way using
thread communication, and use glfw::WaitThread in order to wait for the thread to die.
")
(defcfun+doc ("glfwWaitThread" wait-thread) boolean ((id thread) (waitmode :int) )
"Parameters
ID
      A thread identification handle, which is returned by glfw::CreateThread or glfw::GetThreadID.
waitmode
      Can be either +WAIT+ or +NOWAIT+
Return values
The function returns t if the specified thread died after the function was called, or the thread
did not exist, in which case glfw::WaitThread will return immediately regardless of waitmode. The
function returns nil if waitmode is +NOWAIT+ and the specified thread exists and is still
running.
")
(defcfun+doc ("glfwGetThreadID" get-thread-id) thread ()
"Return values
The function returns a thread identification handle for the calling thread.
Description
The function determines the thread ID for the calling thread. The ID is the same value as was returned
by glfw::CreateThread when the thread was created.
")

(defcfun+doc ("glfwCreateMutex" create-mutex) mutex ()
"Return values
The function returns a mutex handle, or NULL if the mutex could not be created.
Description
The function creates a mutex object, which can be used to control access to data that is shared between
threads.
")
(defcfun+doc ("glfwDestroyMutex" destroy-mutex) :void ((mutex mutex))
"Parameters
mutex
      A mutex object handle.
Description
The function destroys a mutex object. After a mutex object has been destroyed, it may no longer be
used by any thread.
")
(defcfun+doc ("glfwLockMutex" lock-mutex) :void ((mutex mutex))
"Parameters
mutex
      A mutex object handle.
Description
The function will acquire a lock on the selected mutex object. If the mutex is already locked by another
thread, the function will block the calling thread until it is released by the locking thread. Once the
function returns, the calling thread has an exclusive lock on the mutex. To release the mutex, call
glfw::UnlockMutex.
")
(defcfun+doc ("glfwUnlockMutex" unlock-mutex) :void ((mutex mutex))
"Parameters
mutex
      A mutex object handle.
Description
The function releases the lock of a locked mutex object.
")

(defmacro with-lock-mutex (mutex &body forms)
  "Parameters
mutex
      A mutex object handle.
forms
      Body of code to execute
Description
This macro will acquire a lock on the selected mutex object using glfw::LockMutex and release it afterwards
using glfw::UnlockMutex.
So, forms will not execute until an exclusive lock is held.
The lock is then released when the stack is unwound."
  (let ((smutex (gensym "MUTEX-")))
    `(let ((,smutex ,mutex))
       (glfw:lock-mutex ,smutex)
       (unwind-protect (progn ,@forms)
	 (glfw:unlock-mutex ,smutex)))))

(defcfun+doc ("glfwCreateCond" create-cond) cond ()
"Return values
The function returns a condition variable handle, or NULL if the condition variable could not be
created.
Description
The function creates a condition variable object, which can be used to synchronize threads.
")
(defcfun+doc ("glfwDestroyCond" destroy-cond) :void ((cond cond))
"Parameters
cond
      A condition variable object handle.
Description
The function destroys a condition variable object. After a condition variable object has been destroyed,
it may no longer be used by any thread.
")
(defcfun+doc ("glfwWaitCond" wait-cond) :void ((cond cond) (mutex mutex) (timeout :double))
"  arameters
cond
       A condition variable object handle.
mutex
       A mutex object handle.
timeout
       Maximum time to wait for the condition variable. The parameter can either be a positive time (in
       seconds), or +INFINITY+
Description
The function atomically unlocks the mutex specified by mutex, and waits for the condition variable cond
to be signaled. The thread execution is suspended and does not consume any CPU time until the
condition variable is signaled or the amount of time specified by timeout has passed. If timeout is
+INFINITY+ glfw::WaitCond will wait forever for cond to be signaled. Before returning to the
calling thread, glfw::WaitCond automatically re-acquires the mutex.
Notes
The mutex specified by mutex must be locked by the calling thread before entrance to glfw::WaitCond.
A condition variable must always be associated with a mutex, to avoid the race condition where a thread
prepares to wait on a condition variable and another thread signals the condition just before the first
thread actually waits on it.
")
(defcfun+doc ("glfwSignalCond" signal-cond) :void ((cond cond))
"Parameters
cond
       A condition variable object handle.
Description
The function restarts one of the threads that are waiting on the condition variable cond. If no threads are
waiting on cond, nothing happens. If several threads are waiting on cond, exactly one is restarted, but it
is not specified which.
Notes
When several threads are waiting for the condition variable, which thread is started depends on
operating system scheduling rules, and may vary from system to system and from time to time.
")
(defcfun+doc ("glfwBroadcastCond" broadcast-cond) :void ((cond cond))
"Parameters
cond
      A condition variable object handle.
Description
The function restarts all the threads that are waiting on the condition variable cond. If no threads are
waiting on cond, nothing happens.
Notes
When several threads are waiting for the condition variable, the order in which threads are started
depends on operating system scheduling rules, and may vary from system to system and from time to
time.
")

(defcfun+doc ("glfwGetNumberOfProcessors" get-number-of-processors) :int ()
"Return values
The function returns the number of active processors in the system.
Description
The function determines the number of active processors in the system.
Notes
Systems with several logical processors per physical processor, also known as SMT (Symmetric Multi
Threading) processors, will report the number of logical processors.
")
(defcfun+doc ("glfwEnable" enable) :void ((token :int))
	     "Parameters
token
       A value specifying a feature to enable or disable. Valid tokens are listed in table 3.8.
Return values
none
Description
glfw::Enable is used to enable a certain feature, while glfw::Disable is used to disable it. Below follows a
description of each feature.
+AUTO_POLL_EVENTS+
When +AUTO_POLL_EVENTS+ is enabled, glfw::PollEvents is automatically called each time
that glfw::SwapBuffers is called.
When +AUTO_POLL_EVENTS+ is disabled, calling glfw::SwapBuffers will not result in a call to
glfw::PollEvents. This can be useful if glfw::SwapBuffers needs to be called from within a callback
function, since calling glfw::PollEvents from a callback function is not allowed.
+KEY_REPEAT+
When +KEY_REPEAT+ is enabled, the key and character callback functions are called repeatedly
when a key is held down long enough (according to the system key repeat configuration).
When +KEY_REPEAT+ is disabled, the key and character callback functions are only called once
when a key is pressed (and once when it is released).
+MOUSE_CURSOR+
When +MOUSE_CURSOR+ is enabled, the mouse cursor is visible, and mouse coordinates are
relative to the upper left corner of the client area of the GLFW window. The coordinates are limited to
the client area of the window.
When +MOUSE_CURSOR+ is disabled, the mouse cursor is invisible, and mouse coordinates are
not limited to the drawing area of the window. It is as if the mouse coordinates are recieved directly
from the mouse, without being restricted or manipulated by the windowing system.
+STICKY_KEYS+
When +STICKY_KEYS+ is enabled, keys which are pressed will not be released until they are
physically released and checked with glfw::GetKey. This behavior makes it possible to catch keys that
were pressed and then released again between two calls to glfw::PollEvents, glfw::WaitEvents or
glfw::SwapBuffers, which would otherwise have been reported as released. Care should be taken when
using this mode, since keys that are not checked with glfw::GetKey will never be released. Note also that
enabling +STICKY_KEYS+ does not affect the behavior of the keyboard callback functionality.
When +STICKY_KEYS+ is disabled, the status of a key that is reported by glfw::GetKey is always
the physical state of the key. Disabling +STICKY_KEYS+ also clears the sticky information for
all keys.
+STICKY_MOUSE_BUTTONS+
When +STICKY_MOUSE_BUTTONS+ is enabled, mouse buttons that are pressed will not be
released until they are physically released and checked with glfw::GetMouseButton. This behavior
makes it possible to catch mouse buttons which were pressed and then released again between two calls
to glfw::PollEvents, glfw::WaitEvents or glfw::SwapBuffers, which would otherwise have been reported
as released. Care should be taken when using this mode, since mouse buttons that are not checked with
glfw::GetMouseButton will never be released. Note also that enabling
+STICKY_MOUSE_BUTTONS+ does not affect the behavior of the mouse button callback
functionality.
When +STICKY_MOUSE_BUTTONS+ is disabled, the status of a mouse button that is reported
by glfw::GetMouseButton is always the physical state of the mouse button. Disabling
+STICKY_MOUSE_BUTTONS+ also clears the sticky information for all mouse buttons.
+SYSTEM_KEYS+
When +SYSTEM_KEYS+ is enabled, pressing standard system key combinations, such as
ALT+TAB under Windows, will give the normal behavior. Note that when ALT+TAB is issued under
Windows in this mode so that the GLFW application is deselected when GLFW is operating in
fullscreen mode, the GLFW application window will be minimized and the video mode will be set to
the original desktop mode. When the GLFW application is re-selected, the video mode will be set to
the GLFW video mode again.
When +SYSTEM_KEYS+ is disabled, pressing standard system key combinations will have no
effect, since those key combinations are blocked by GLFW. This mode can be useful in situations when
the GLFW program must not be interrupted (normally for games in fullscreen mode).
")
(defcfun+doc ("glfwDisable" disable) :void ((token :int))
	     "Parameters
token
       A value specifying a feature to enable or disable. Valid tokens are listed in table 3.8.
Return values
none
Description
glfw::Enable is used to enable a certain feature, while glfw::Disable is used to disable it. Below follows a
description of each feature.
+AUTO_POLL_EVENTS+
When +AUTO_POLL_EVENTS+ is enabled, glfw::PollEvents is automatically called each time
that glfw::SwapBuffers is called.
When +AUTO_POLL_EVENTS+ is disabled, calling glfw::SwapBuffers will not result in a call to
glfw::PollEvents. This can be useful if glfw::SwapBuffers needs to be called from within a callback
function, since calling glfw::PollEvents from a callback function is not allowed.
+KEY_REPEAT+
When +KEY_REPEAT+ is enabled, the key and character callback functions are called repeatedly
when a key is held down long enough (according to the system key repeat configuration).
When +KEY_REPEAT+ is disabled, the key and character callback functions are only called once
when a key is pressed (and once when it is released).
+MOUSE_CURSOR+
When +MOUSE_CURSOR+ is enabled, the mouse cursor is visible, and mouse coordinates are
relative to the upper left corner of the client area of the GLFW window. The coordinates are limited to
the client area of the window.
When +MOUSE_CURSOR+ is disabled, the mouse cursor is invisible, and mouse coordinates are
not limited to the drawing area of the window. It is as if the mouse coordinates are recieved directly
from the mouse, without being restricted or manipulated by the windowing system.
+STICKY_KEYS+
When +STICKY_KEYS+ is enabled, keys which are pressed will not be released until they are
physically released and checked with glfw::GetKey. This behavior makes it possible to catch keys that
were pressed and then released again between two calls to glfw::PollEvents, glfw::WaitEvents or
glfw::SwapBuffers, which would otherwise have been reported as released. Care should be taken when
using this mode, since keys that are not checked with glfw::GetKey will never be released. Note also that
enabling +STICKY_KEYS+ does not affect the behavior of the keyboard callback functionality.
When +STICKY_KEYS+ is disabled, the status of a key that is reported by glfwGetKey is always
the physical state of the key. Disabling +STICKY_KEYS+ also clears the sticky information for
all keys.
+STICKY_MOUSE_BUTTONS+
When +STICKY_MOUSE_BUTTONS+ is enabled, mouse buttons that are pressed will not be
released until they are physically released and checked with glfw::GetMouseButton. This behavior
makes it possible to catch mouse buttons which were pressed and then released again between two calls
to glfw::PollEvents, glfw::WaitEvents or glfw::SwapBuffers, which would otherwise have been reported
as released. Care should be taken when using this mode, since mouse buttons that are not checked with
glfw::GetMouseButton will never be released. Note also that enabling
+STICKY_MOUSE_BUTTONS+ does not affect the behavior of the mouse button callback
functionality.
When +STICKY_MOUSE_BUTTONS+ is disabled, the status of a mouse button that is reported
by glfwGetMouseButton is always the physical state of the mouse button. Disabling
+STICKY_MOUSE_BUTTONS+ also clears the sticky information for all mouse buttons.
+SYSTEM_KEYS+
When +SYSTEM_KEYS+ is enabled, pressing standard system key combinations, such as
ALT+TAB under Windows, will give the normal behavior. Note that when ALT+TAB is issued under
Windows in this mode so that the GLFW application is deselected when GLFW is operating in
fullscreen mode, the GLFW application window will be minimized and the video mode will be set to
the original desktop mode. When the GLFW application is re-selected, the video mode will be set to
the GLFW video mode again.
When +SYSTEM_KEYS+ is disabled, pressing standard system key combinations will have no
effect, since those key combinations are blocked by GLFW. This mode can be useful in situations when
the GLFW program must not be interrupted (normally for games in fullscreen mode).
")
