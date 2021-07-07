;;; init-programming.el --- programming -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Programming
;; -------------------------------- ;;


;;; Commentary:


;;; Code:


;; eldoc
;; Shows you, in the echo area, the argument list of the function call you are currently writing.
;; https://www.emacswiki.org/emacs/ElDoc

(use-package eldoc
  :diminish eldoc-mode
  :init  (setq eldoc-idle-delay 0.1))


;; cedet
;; A Collection of Emacs Development Environment Tools.
;; http://cedet.sourceforge.net/


;; mmm-mode
;; MMM Mode is a minor mode for Emacs that allows Multiple Major Modes to coexist in one buffer.
;; https://github.com/purcell/mmm-mode


;; SmartParens
;; Minor mode for Emacs that deals with parens pairs and tries to be smart about it.
;; https://github.com/Fuco1/smartparens

(use-package smartparens
  :diminish smartparens-mode
  :config
  (progn
    (require 'smartparens-config)
    (smartparens-global-mode 1)
    (show-paren-mode t)))

;; https://github.com/Fuco1/smartparens/blob/master/smartparens-config.el
;; emacs is lisp hacking enviroment, so we set up some most common
;; lisp modes too
(sp-with-modes sp-lisp-modes
  ;; disable ', it's the quote character!
  (sp-local-pair "'" nil :actions nil))


;; Aggressive-indent
;; Emacs minor mode that keeps your code always indented. More reliable than electric-indent-mode.
;; https://github.com/Malabarba/aggressive-indent-mode

(use-package aggressive-indent
  :diminish aggressive-indent-mode
  :config
  (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode))


;; indent-guide
;; Show vertical lines to help guide indentation.
;; https://github.com/zk-phi/indent-guide


;; whitespace-cleanup-mode
;; In Emacs, intelligently call whitespace-cleanup on save.
;; https://github.com/purcell/whitespace-cleanup-mode


;; lsp-mode
;; Emacs client/library for the Language Server Protocol.
;; https://emacs-lsp.github.io/lsp-mode/

;; (use-package lsp-mode :hook ((lsp-mode . lsp-enable-which-key-integration))
;; :config (setq lsp-completion-enable-additional-text-edit nil))

;; lsp-ui
;; UI integrations for lsp-mode.
;; https://emacs-lsp.github.io/lsp-ui/

;; (use-package lsp-ui :commands lsp-ui-mode)


;; lsp-ivy
;; Provides interactive ivy interface to the workspace symbol functionality offered by lsp-mode.
;; https://github.com/emacs-lsp/lsp-ivy

;; (use-package lsp-ivy :commands lsp-ivy-workspace-symbol)


;; eglot
;; A client for Language Server Protocol servers.
;; https://github.com/joaotavora/eglot


(provide 'init-programming)

;;; init-programming ends here
