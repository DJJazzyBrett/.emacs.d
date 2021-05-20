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

;; Bibtex-completion supports two methods for storing notes. It can either store all notes in one file or store notes in multiple files, one file per publication. In the first case, the customization variable bibtex-completion-notes-path has to be set to the full path of the notes file:
;; (setq bibtex-completion-notes-path "/path/to/notes.org")
;; If one file per publication is preferred, bibtex-completion-notes-path should point to the directory used for storing the notes files:
;; (setq bibtex-completion-notes-path "/path/to/notes")
;; The names of these files consist of the BibTeX key plus a user-defined suffix (.org by default).


(use-package ivy-bibtex
  :init
  (setq bibtex-completion-bibliography "~/reference/library/my-books.bib"
        bibtex-completion-library-path "~/reference/library/bibtex-pdfs"
        bibtex-completion-notes-path "~/reference/library/bibtex-notes"
        bibtex-completion-notes-symbol "✎")
  (setq bibtex-completion-notes-template-multiple-files
        "#+TITLE: Notes on: ${title} by ${author-or-editor} (${year})\n#+Time-stamp: <>\n\n- source :: cite:${=key=}\n\n* TODO Summary\n\n* TODO Comments\n\n* TODO Topics\n\n"))
;; bibliography:~/reference/library/my-books.bib"))


;; [mebbe worth revisiting later ...]
;; https://hugocisneros.com/org-config/#org-ref-and-bibtex


(provide 'init-bibtex)


;;; init-bibtex ends here
