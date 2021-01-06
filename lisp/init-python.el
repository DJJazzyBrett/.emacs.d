;;; init-python.el --- python -*- lexical-binding: t -*-


;;; Commentary:


;;; Code:


;; Install & load (defer) elpy package
(use-package elpy
  :ensure t
  :defer t
  :init
  (advice-add 'python-mode :before 'elpy-enable))


;; Enable blacken
(use-package blacken
  :hook (python-mode . blacken-mode)
  :config
  (setq blacken-line-length '88))


;; Enable Flycheck [already global ??]
;;(when (require 'flycheck nil t)
;;  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;  (add-hook 'elpy-mode-hook 'flycheck-mode))


;; Enable autopep8
;;(use-package py-autopep8
;;  :config
;;  (add-hook 'elpy-mode-hook #'py-autopep8-enable-on-save)


(provide 'init-python)

;;; init-python ends here
