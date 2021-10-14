;;; init-lsp.el --- setup Language Server Protocol -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (java-mode . lsp-deferred)
         ;;(c++-mode  . lsp-deferred)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil)
  ;; Performance tweaks, see
  ;; https://github.com/emacs-lsp/lsp-mode#performance
  ;; (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024))
  (setq lsp-idle-delay 0.500)
  :commands lsp lsp-deferred)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)


;; if you are helm user
;; (use-package helm-lsp :commands helm-lsp-workspace-symbol)


;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)


;; optionally if you want to use debugger
(use-package dap-mode
  :after lsp-mode
  :config (dap-auto-configure-mode))


(use-package dap-java
  :ensure nil)


(use-package lsp-java
  :config
  (add-hook 'java-mode-hook 'lsp))


(setq lsp-java-inhibit-message t)


(setq lsp-headerline-breadcrumb-enable t)

;; --------------------------------------------------------- ;;
;; https://emacs-lsp.github.io/lsp-mode/tutorials/CPP-guide/
;;(add-hook 'c++-mode-hook 'lsp)
;;(with-eval-after-load 'lsp-mode
;;  (require 'dap-cpptools))
;; --------------------------------------------------------- ;;

(provide 'init-lsp)


;;; init-lsp ends here
