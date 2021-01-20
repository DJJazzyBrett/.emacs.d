;;; init-java.el --- setup java config -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:


(use-package lsp-mode
  :defer t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((java-mode-hook . lsp-deferred)
         (lsp-mode-hook . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred)
  :bind (:map lsp-mode-map
              ("M-<RET>" . lsp-execute-code-action)))


(use-package lsp-ui
  :defer t
  :config
  (setq lsp-ui-sideline-enable nil)
  :hook (lsp-mode-hook . lsp-ui-mode)
  :bind (:map lsp-ui-mode-map
              ("C-c i" . lsp-ui-imenu)))


;; LSP integration with treemacs

(use-package lsp-treemacs
  :defer t
  :after lsp)


;; Debugger

(use-package dap-mode
  :after (lsp-mode)
  :config
  (dap-auto-configure-mode)
  :bind (:map dap-mode-map
              ("C-c C-c" . dap-java-debug)
              ("C-c R" . dap-java-run-test-class)
              ("C-c d" . dap-java-debug-test-method)
              ("C-c r" . dap-java-run-test-method)))



;; Requires lsp-mode

(use-package lsp-java
  :defer t
  :after lsp
  :config
  (setq lsp-java-format-on-type-enabled nil)
  (defun my/java-mode-hook ()
    (setq c-basic-offset 2
          c-label-offset 0
          tab-width 2
          indent-tabs-mode nil
          require-final-newline nil))
  :hook (java-mode-hook . (lsp my/java-mode-hook)))


;; Requires dap-mode

(use-package dap-java
  :ensure nil
  :defer t
  :after (lsp-java))



(provide 'init-java)

;;; init-java ends here
