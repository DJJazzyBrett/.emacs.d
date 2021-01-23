;;; init.el --- Load the full configuration -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; Disabling package-enable-at-startup is SOP
(setq package-enable-at-startup nil)


;; Enter the debugger each time an error is found
(setq debug-on-error t)


;; ---------- ;;
(defvar jazzy-modules-dir (expand-file-name "lisp" user-emacs-directory)
  "This directory stores all of the modules functionality.")

(unless (file-exists-p jazzy-modules-dir)
  (make-directory jazzy-modules-dir))

(add-to-list 'load-path jazzy-modules-dir)
;; ---------- ;;


;; ---------- ;;
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
;; ---------- ;;


;; ---------- ;;
(defvar jazzy-backups-dir (expand-file-name "backups" user-emacs-directory)
  "This folder stores all the automatically generated backup files.")

(unless (file-exists-p jazzy-backups-dir)
  (make-directory jazzy-backups-dir))

(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      backup-by-copying 1
      delete-old-versions -1
      version-control t
      vc-make-backup-files t)
;; ---------- ;;


;; ---------- ;;
(defvar jazzy-auto-save-dir (expand-file-name "auto-save-list" user-emacs-directory)
  "This folder stores all the automatically generated autosave files.")

(unless (file-exists-p jazzy-auto-save-dir)
  (make-directory jazzy-auto-save-dir))

(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))
;; ---------- ;;


;; Please don't load outdated byte code
(setq load-prefer-newer t)


;; Make all commands of the "package" module present
(require 'package)


;; Set package archives
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)


;; Initialize packages
(package-initialize)


;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package diminish
  :ensure t)

(eval-when-compile
  (require 'use-package))
(require 'bind-key)                ;; require if used with use-package utility
(require 'diminish)                ;; require if used with use-package utility



;; Other use-package settings
(setq use-package-verbose t)
(setq use-package-always-ensure t)


;; Increase garbage collection threshold during startup
(setq gc-cons-threshold 10000000)


;; Restore threshold after startup
(add-hook 'after-init-hook
          (lambda ()
            (setq gc-cons-threshold 1000000)
            (message "gc-cons-threshold restored to %S"
                     gc-cons-threshold)))


;; -------------------------------- ;;
;; Basic Customizations
;; -------------------------------- ;;

(global-visual-line-mode 1)                  ;; enable soft-wrap
(setq inhibit-startup-screen t)              ;; Quiet startup
(setq inhibit-startup-message t)             ;; Quiet startup
(setq visible-bell 1)                        ;; Flashing when something goes wrong ---no blinking
(setq require-final-newline t)               ;; Newline at end of file
(setq tab-always-indent 'complete)           ;; Smart tab behavior - indent or complete
(setq-default sentence-end-double-space nil) ;; Do not add double space after periods
(setq-default fill-column 80)                ;; Wrap lines at 80 characters
(setq-default indent-tabs-mode nil)          ;; Always indent using spaces, never tabs
(fset 'yes-or-no-p 'y-or-n-p)                ;; Simplify 'yes-or-no'
(setq inhibit-read-only t)

;; -------------------------------- ;;
;; Miscellaneous GUI Settings
;; -------------------------------- ;;

;; Automatically maximize initial frame.
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; A more useful frame title that shows either a file or a
;; buffer name (if the buffer isn't visiting a file).
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(scroll-bar-mode -1)
(blink-cursor-mode -1)


;; -------------------------------- ;;
;; Scrolling Settings
;; -------------------------------- ;;

(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)


;; -------------------------------- ;;
;; Mode Line Settings
;; -------------------------------- ;;

(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)


;; -------------------------------- ;;
;; Disable kill-emacs Key-Binding
;; -------------------------------- ;;

(defun dont-kill-emacs ()
  "This is sparta."
  (interactive)
  (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))
(global-set-key "\C-x\C-c" 'dont-kill-emacs)


;; -------------------------------- ;;
;; UTF-8
;; -------------------------------- ;;

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)



;; -------------------------------- ;;
;; Load Modules
;; -------------------------------- ;;

(require 'init-user)

(require 'init-font)

(require 'init-savehist)

(require 'init-swiper)

(require 'init-keys)

(require 'init-dired)

(require 'init-treemacs)

(require 'init-avy)

(require 'init-visual)

(require 'init-editing)

(require 'init-projectile)

(require 'init-programming)

(require 'init-company)

(require 'init-debug)

(require 'init-origami)

(require 'init-flycheck)

(require 'init-search)

(require 'init-bibtex)

(require 'init-latex)

(require 'init-pdf)

(require 'init-magit)

(require 'init-themes)

;;(require 'init-finance)

;;(require 'init-graphviz)

;;(require 'init-plantuml)

(require 'init-ebib)

(require 'init-org)

(require 'init-org-ref)

;;(require 'init-python)

(require 'init-java-quickstart)

;;(require 'init-ess)


;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;;; init.el ends here
