;;; init-java.el --- setup java config -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:


(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (
         (lsp-mode . lsp-enable-which-key-integration)
         (java-mode . lsp)
         )
  :commands lsp)
;;:bind (:map lsp-mode-map
;;            ("M-<RET>" . lsp-execute-code-action)))


;; https://emacs-lsp.github.io/lsp-ui/#intro
;; By default, lsp-mode automatically activates lsp-ui unless lsp-auto-configure is set to nil.
;; You only have to put (use-package lsp-ui) in your config and the package will work out of the box.
(use-package lsp-ui)
;;  :config
;;  (setq lsp-ui-sideline-enable nil)
;;  :hook (lsp-mode-hook . lsp-ui-mode)
;;  :bind (:map lsp-ui-mode-map
;;              ("C-c i" . lsp-ui-imenu)))


;; https://github.com/emacs-lsp/lsp-treemacs
(use-package lsp-treemacs
  :after lsp)


;; https://emacs-lsp.github.io/dap-mode/page/configuration/
(use-package dap-mode
  :after lsp-mode
  :config
  (dap-auto-configure-mode)
  ;; the modes below are optional
  ;;(dap-ui-mode 1)
  ;; enables mouse hover support
  ;;(dap-tooltip-mode 1)
  ;; use tooltips for mouse hover
  ;; if it is not enabled `dap-mode' will use the minibuffer.
  ;;(tooltip-mode 1)
  ;; displays floating panel with debug buttons
  ;; requies emacs 26+
  ;;(dap-ui-controls-mode 1)
  )


;;(use-package lsp-java
;;  :defer t
;;  :after lsp
;;  :config
;;  (setq lsp-java-format-on-type-enabled nil)
;;  (defun my/java-mode-hook ()
;;    (setq c-basic-offset 2
;;          c-label-offset 0
;;          tab-width 2
;;          indent-tabs-mode nil
;;          require-final-newline nil))
;;  :hook (java-mode-hook . (lsp my/java-mode-hook)))


;; https://emacs-lsp.github.io/lsp-java/#quick-start
(use-package lsp-java
  :config (add-hook 'java-mode-hook 'lsp))


(use-package dap-java
  :ensure nil
  :after (lsp-java))


(provide 'init-java)

;;; init-java ends here
