;;; init-keys.el --- key bindings -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Key Bindings
;; -------------------------------- ;;


;;; Commentary:


;; hydra
;; A GNU Emacs package that can be used to tie related commands into a family of short bindings with a common prefix - a Hydra.
;; https://github.com/abo-abo/hydra


;; which-key
;; Emacs package that displays available keybindings in popup.
;; https://github.com/justbur/emacs-which-key


;;; Code:


(use-package which-key
  :diminish which-key-mode
  :init
  (which-key-mode 1)
  :config
  (which-key-setup-side-window-right-bottom))


(provide 'init-keys)


;;; init-keys ends here
