;;; init-magit.el --- version control -*- lexical-binding: t -*-


;;; Commentary:

;;; Code:


;; -------------------------------- ;;
;; Version Control
;; -------------------------------- ;;

;; magit
;; A complete text-based user interface to Git.
;; https://magit.vc/

(use-package magit
  :init
  (message "Loading Magit!")
  :config
  (message "Loaded Magit!")
  :bind (("C-c g" . magit-file-dispatch)))

;; VC
;; Built-in version control interface.
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Version-Control.html


;; git-gutter
;; Emacs port of GitGutter which is Sublime Text Plugin.
;; https://github.com/emacsorphanage/git-gutter



(provide 'init-magit)


;;; init-magit ends here
