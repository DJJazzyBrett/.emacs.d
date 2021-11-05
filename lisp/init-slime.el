;;; init-slime.el --- Slime (sbcl) -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;;; From initial sbcl install, console output showed this ...
;; SBCL has been installed:
;; binary /usr/local/bin/sbcl
;; core and contribs in /usr/local/lib/sbcl/
;; Documentation:
;; man /usr/local/share/man/man1/sbcl.1
;;;


;;; https://common-lisp.net/project/slime/doc/html/Loading-Contribs.html
;; Setup load-path and autoloads
;; (add-to-list 'load-path "~/dir/to/cloned/slime")
;; (require 'slime-autoloads)

;; Set your lisp system and some contribs
;; (setq inferior-lisp-program "/opt/sbcl/bin/sbcl")
;; (setq slime-contribs '(slime-scratch slime-editing-commands))



;;; https://common-lisp.net/project/slime/doc/html/REPL.html
;; SLIME uses a custom Read-Eval-Print Loop (REPL, also known as a “top level”, or listener). The REPL user-interface is written in Emacs Lisp, which gives more Emacs-integration than the traditional comint-based Lisp interaction:
;; To load the REPL use (add-to-list 'slime-contribs 'slime-repl) in your .emacs.

;; C-c C-z
;; M-x slime-switch-to-output-buffer
;; Select the output buffer, preferably in a different window.



;;; https://common-lisp.net/project/slime/doc/html/inferior_002dslime_002dmode.html
;; The inferior-slime-mode is a minor mode is intended to use with the *inferior-lisp* lisp buffer. It provides some of the SLIME commands, like symbol completion and documentation lookup. It also tracks the current directory of the Lisp process. To install it, add something like this to user .emacs:



;; M-x inferior-slime-mode
;; Turns inferior-slime-mode on or off.



;;; https://common-lisp.net/project/slime/doc/html/slime_002dautodoc_002dmode.html
;; Autodoc mode is an additional minor-mode for automatically showing information about symbols near the point. For function names the argument list is displayed, and for global variables, the value. Autodoc is implemented by means of eldoc-mode of Emacs.

;; The mode can be enabled by default in your ~/.emacs:
;; (add-to-list 'slime-contribs 'slime-autodoc)


;;; Loading Contrib Packages
;; Setup load-path and autoloads
;; (add-to-list 'load-path "~/dir/to/cloned/slime")
;; (require 'slime-autoloads)

;; Set your lisp system and some contribs
;; (setq inferior-lisp-program "/opt/sbcl/bin/sbcl")
;; (setq slime-contribs '(slime-scratch slime-editing-commands))




;; (require 'slime-autoloads)

(setq inferior-lisp-program "/usr/bin/sbcl")

;; (add-to-list 'slime-contribs 'slime-repl)
;; (add-to-list 'slime-contribs 'inferior-slime)



(provide 'init-slime)

;;; init-slime.el ends here
