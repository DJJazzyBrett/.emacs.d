;;; init-ebib.el --- ebib -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Basic Customizations
;; -------------------------------- ;;


;;; Commentary:


;; ebib
;; excerpts taken from https://ogbe.net/emacs/references.html


;;; Code:


(use-package ebib
  :ensure t
  :init
  ;;(add-hook 'ebib-entry-mode-hook #'no-trailing-whitespace)
  :config
  ;; point it to our database
  (setq ebib-file-search-dirs `("~/reference/library/bibtex-pdfs"))
  (setq ebib-notes-directory '("~/reference/library/bibtex-notes"))
  (setq ebib-preload-bib-files '("~/reference/library/my-books.bib"))

  ;; `ebib' uses `bibtex.el' to auto-generate keys for us
  (setq bibtex-align-at-equal-sign t

        bibtex-autokey-year-length 4

        bibtex-autokey-titleword-separator "-"
        bibtex-autokey-name-year-separator "-"
        bibtex-autokey-year-title-separator "-"

        ;;bibtex-autokey-titleword-ignore '("the" "a" "if" "and" "an")

        bibtex-autokey-titlewords 2
        bibtex-autokey-titlewords-stretch 1
        bibtex-autokey-titleword-length 5)

  ;;(setq bibtex-autokey-titleword-ignore ;; I took "On" out of this
  ;;      '("A" "An" "The" "Eine?" "Der" "Die" "Das" "[^[:upper:]].*" ".*[^[:upper:][:lower:]0-9].*"))

  ;; make ebib window easier to deal with
  (setq ebib-index-window-size 25)

  ;; use a common/similar notes template between `ebib' and `ivy-bibtex'.
  (setq ebib-notes-template "#+TITLE: Notes on: %T\n\n>|<")
  (remove-hook 'ebib-notes-new-note-hook #'org-narrow-to-subtree))


(provide 'init-ebib)


;;; init-ebib ends here
