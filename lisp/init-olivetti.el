;;; init-olivetti.el --- olivetti -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Olivetti
;; -------------------------------- ;;


;;; Commentary:


;;; Code:


;; https://github.com/pprevos/EmacsLife/blob/master/init.el
;; Distraction-free screen
(use-package olivetti
  :config
  (defun distraction-free ()
    "Distraction-free writing environment"
    (interactive)
    (if (equal olivetti-mode nil)
        (progn
          (delete-other-windows)
          (text-scale-increase 2)
          (setq olivetti-body-width 150)
          (olivetti-mode t))
      (progn
        (olivetti-mode 0)
        (text-scale-decrease 2))))
  (global-set-key (kbd "<f9>") 'distraction-free))


(provide 'init-olivetti)

;;; init-olivetti ends here
