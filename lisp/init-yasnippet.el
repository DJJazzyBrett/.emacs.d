;;; init-yasnippet.el --- yasnippet setup -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; YASnippet
;; -------------------------------- ;;


;;; Commentary:


;;; Code:


;; yasnippet
;; A template system for Emacs.
;; https://github.com/joaotavora/yasnip

(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (yas-global-mode))

;;(setq yas-snippet-dirs
;;      '("~/.emacs.d/snippets"                 ;; personal snippets
;;        "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
;;        "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
;;        ))

;;(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.


;; yasnippet-snippets
;; A collection of yasnippet snippets for many languages.
;; https://github.com/AndreaCrotti/yasnippet-snippets


;; auto-yasnippet
;; A hybrid of keyboard macros and yasnippet.
;; https://github.com/abo-abo/auto-yasnippet


(provide 'init-yasnippet)

;;; init-yasnippet ends here
