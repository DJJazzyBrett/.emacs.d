;;; init-bibtex.el --- bibliography -*- lexical-binding: t -*-



;;; Commentary:

;;; Code:

;; -------------------------------- ;;
;; Bibtex
;; -------------------------------- ;;


(require 'bibtex)

(setq bibtex-align-at-equal-sign t
      bibtex-autokey-year-length 4
      ;;bibtex-autokey-titleword-ignore '("the" "a" "if" "and" "an")

      bibtex-autokey-titleword-separator "-"
      bibtex-autokey-name-year-separator "-"
      bibtex-autokey-year-title-separator "-"

      bibtex-autokey-titlewords 2
      bibtex-autokey-titlewords-stretch 1
      bibtex-autokey-titleword-length 5

      bibtex-maintain-sorted-entries t)

;;bibtex-entry-field-alist



;; -------------------------------- ;;
;; Ivy-Bibtex
;; -------------------------------- ;;

;; ivy-bibtex
;; Search and manage bibliographies in Emacs.
;; https://github.com/tmalsburg/helm-bibtex

(use-package ivy-bibtex
  :init
  (setq bibtex-completion-bibliography "~/reference/library/my-books.bib"
        bibtex-completion-library-path "~/reference/library/bibtex-pdfs"
        bibtex-completion-notes-path "~/reference/library/bibtex-notes"))


(provide 'init-bibtex)


;;; init-bibtex ends here
