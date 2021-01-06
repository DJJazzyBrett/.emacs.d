;;; init-avy.el --- navigation -*- lexical-binding: t -*-



;; -------------------------------- ;;
;; Navigation
;; -------------------------------- ;;


;;; Commentary:


;; avy
;; A GNU Emacs package for jumping to visible text using a char-based decision tree.
;; https://github.com/abo-abo/avy


;; ace-window
;; A GNU Emacs package for selecting a window to switch to.
;; https://github.com/abo-abo/ace-window


;;; Code:


(use-package avy
  :ensure t
  :bind (("s-." . avy-goto-word-or-subword-1)
         ("s-," . avy-goto-char))
  :config
  (setq avy-background t))


(provide 'init-avy)


;;; init-avy ends here
