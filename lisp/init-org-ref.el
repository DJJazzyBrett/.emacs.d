;;; init-org-ref.el --- org ref -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; -------------------------------- ;;
;; Org-Ref
;; -------------------------------- ;;

(use-package org-ref
  :after org
  :init
  ;;(setq org-ref-completion-library 'org-ref-ivy-cite)
  (setq reftex-default-bibliography '("~/reference/library/my-books.bib")
        org-ref-bibliography-notes "~/reference/library/bibtex-notes"
        ;;org-ref-bibliography-notes "~/reference/roam"
        org-ref-default-bibliography '("~/reference/library/my-books.bib")
        org-ref-pdf-directory "~/reference/library/bibtex-pdfs/"))


;; Tell org-ref to let helm-bibtex find notes for it
(setq org-ref-notes-function
      (lambda (thekey)
        (let ((bibtex-completion-bibliography (org-ref-find-bibliography)))
          (bibtex-completion-edit-notes
           (list (car (org-ref-get-bibtex-key-and-file thekey)))))))


(provide 'init-org-ref)

;;; init-org-ref ends here
