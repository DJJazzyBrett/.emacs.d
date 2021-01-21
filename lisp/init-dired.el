;;; init-dired.el --- file manager -*- lexical-binding: t -*-



;; -------------------------------- ;;
;; File Manager
;; -------------------------------- ;;


;;; Commentary:

;;; Code:


;; dired
;; Makes an Emacs buffer that contains a listing of a directory, and optionally some of its subdirectories as well.
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Dired.html

(use-package dired
  :ensure nil
  :config
  ;; dired - reuse current buffer by pressing 'a'
  (put 'dired-find-alternate-file 'disabled nil)
  ;; always delete and copy recursively
  (setq dired-recursive-deletes 'always)
  (setq dired-recursive-copies 'always)
  ;; if there is a dired buffer displayed in the next window, use its
  ;; current subdir, instead of the current subdir of this dired buffer
  (setq dired-dwim-target t)
  ;; enable some really cool extensions like C-x C-j(dired-jump)
  (require 'dired-x))


;; dired-x
;; A GNU Emacs Package containing extra features.
;; https://www.gnu.org/software/emacs/manual/html_node/dired-x/


;; dired+
;; Extends functionalities provided by standard Emacs libs dired.el, dired-aux.el, and dired-x.el.
;; https://www.emacswiki.org/emacs/DiredPlus


;; treemacs
;; A tree layout file explorer for Emacs.
;; https://github.com/Alexander-Miller/treemacs

(use-package treemacs
  :defer t)

;;(use-package treemacs-projectile
;;  :after treemacs projectile)

;;(use-package treemacs-magit
;;  :after treemacs magit)


(provide 'init-dired)


;;; init-dired ends here
