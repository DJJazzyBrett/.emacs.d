;;; init-company.el --- code completion -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Code Completion
;; -------------------------------- ;;


;;; Commentary:


;; company
;; Modular in-buffer text completion framework for Emacs.
;; https://company-mode.github.io/


;;; Code:


(use-package company
  :diminish company-mode
  :config
  (setq company-idle-delay 0.75)
  (setq company-show-numbers t)
  (setq company-tooltip-limit 10)
  (setq company-minimum-prefix-length 2)
  (setq company-tooltip-align-annotations t)
  ;; invert the navigation direction if the completion popup-isearch-match
  ;; is displayed on top (happens near the bottom of windows)
  (setq company-tooltip-flip-when-above t)
  (add-hook 'after-init-hook #'global-company-mode))


(provide 'init-company)


;;; init-company ends here
