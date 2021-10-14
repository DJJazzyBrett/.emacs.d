;;; init-org-ref.el --- org ref -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; -------------------------------- ;;
;; Org-Ref
;; -------------------------------- ;;

;; adapted from https://ogbe.net/emacs/references.html
;;
(defvar bj.refs/db-dirs nil
  "A list of paths to directories containing all my bibtex databases.")

(defun bj.refs/get-db-file-list ()
  "Get the list of all the bib files containing my bib database."
  (mapcan (lambda (dir) (directory-files dir t "\\.bib\\'"))
          bj.refs/db-dirs))



(use-package org-ref
  :after org
  :init
  ;;(setq org-ref-completion-library 'org-ref-ivy-cite)
  (setq reftex-default-bibliography '("~/reference/library/my-books.bib")
        org-ref-bibliography-notes "~/reference/library/bibtex-notes"
        ;;org-ref-default-bibliography '("~/reference/library/my-books.bib")
        org-ref-default-bibliography (directory-files
                                      (concat (getenv "HOME") "/reference/library") t "^[A-Za-z].+.bib$")
        org-ref-pdf-directory "~/reference/library/bibtex-pdfs/"))


;; Tell org-ref to let helm-bibtex find notes for it
(setq org-ref-notes-function
      (lambda (thekey)
        (let ((bibtex-completion-bibliography (org-ref-find-bibliography)))
          (bibtex-completion-edit-notes
           (list (car (org-ref-get-bibtex-key-and-file thekey)))))))


(require 'doi-utils)


(require 'org-ref-arxiv)


(provide 'init-org-ref)

;;; init-org-ref ends here
