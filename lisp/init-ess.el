;;; init-ess.el --- Emacs Speaks Statistics -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; -------------------------------- ;;
;; ESS
;; -------------------------------- ;;

;; ess
;; Emacs Speaks Statistics
;; ess.r-project.org

(use-package ess
  :init
  (require 'ess-site))
  ;;(require 'ess-rutils)
  ;;(require 'ess-r-mode))

(provide 'init-ess)

;;; init-ess ends here
