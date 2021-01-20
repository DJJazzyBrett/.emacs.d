;;; init-java-quickstart.el --- setup java config QUICKSTART -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(use-package lsp-mode :hook ((lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil))


(use-package lsp-ui)


(use-package lsp-java
  :config
  (add-hook 'java-mode-hook 'lsp))


(use-package dap-mode
  :after lsp-mode
  :config (dap-auto-configure-mode))


(use-package dap-java
  :ensure nil)


(use-package lsp-treemacs)


(provide 'init-java-quickstart)


;;; init-java-quickstart ends here
