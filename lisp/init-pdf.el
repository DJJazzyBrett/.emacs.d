;;; init-pdf.el --- pdf -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; PDF
;; -------------------------------- ;;


;;; Commentary:

;;; Code:


;; pdf-tools
;; Emacs support library for PDF files.
;; https://github.com/politza/pdf-tools


;; (use-package pdf-tools
;; :load-path "site-lisp/pdf-tools/lisp"
;; :magic ("%PDF" . pdf-view-mode)
;; :config
;; (pdf-tools-install :no-query))

;; This registers an autoloaded command for pdf-view-mode, defers loading of pdf-tools, and runs pdf-view-mode if the beginning of a buffer matches the string "%PDF".


(use-package pdf-tools
  :pin manual ;; manually update
  ;; :magic ("%PDF" . pdf-view-mode)
  :config
  ;; initialise
  (pdf-tools-install)
  ;; open pdfs scaled to fit page ... fit-width also an option
  (setq-default pdf-view-display-size 'fit-page)
  ;; automatically annotate highlights
  (setq pdf-annot-activate-created-annotations t)
  ;; use isearch instead of swiper
  (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)
  ;; more fine-grained zooming
  (setq pdf-view-resize-factor 1.1))


;; pdf-tools no likey linum-mode (!)
;; (add-hook 'pdf-view-mode-hook (lambda() (linum-mode -1)))


(provide 'init-pdf)


;;; init-pdf ends here
