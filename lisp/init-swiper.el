;;; init-swiper.el --- enhance interface -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Interface Enhancement
;; -------------------------------- ;;


;;; Commentary:


;; ivy
;; A generic completion mechanism for Emacs.
;; https://oremacs.com/swiper/


;; counsel
;; A collection of Ivy-enhanced versions of common Emacs commands.
;; https://oremacs.com/swiper/


;; swiper
;; An Ivy-enhanced alternative to isearch.
;; https://oremacs.com/swiper/


;;; Code:


(use-package ivy
  :diminish ivy-mode
  :init
  (setq ivy-use-virtual-buffers t
        ivy-count-format "%d/%d ")
  :config
  (ivy-mode 1))


(use-package counsel
  :diminish counsel-mode
  :config
  (counsel-mode 1))


(use-package swiper
  :init
  (setq ivy-display-style 'fancy))


(provide 'init-swiper)


;;; init-swiper ends here
