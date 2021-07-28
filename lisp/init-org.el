;;; init-org.el --- org -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Org
;; -------------------------------- ;;


;;; Commentary:


;;; Code:


(require 'org)


;;(add-hook 'org-mode-hook #'org-indent-mode)


(add-hook 'org-mode-hook 'turn-on-org-cdlatex)


;;(setq org-directory "~/Reference/")
;;(setq org-default-notes-file (concat org-directory "notes.org"))


(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)


;;(setq org-hide-emphasis-markers t)


;;(use-package org-indent
;;  :diminish
;;  :custom
;;  (org-indent-indentation-per-level 4))


;;(require 'org-superstar)
;;(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))


(use-package org-bullets
  :ensure t
  :init
  ;; (setq org-bullets-bullet-list
  ;;       '("■" "◆" "▲" "▶"))
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))


(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (emacs-lisp . t)
   (lisp       . t)
   (shell      . t)
   (python     . t)
   ;; (ipython    . t)
   ;; (plantuml   . t)
   (haskell    . t)
   (ruby       . t)
   (C          . t)
   (java       . t)
   (dot        . t)
   (latex      . t)
   (org        . t)
   (makefile   . t)
   ))


;; https://lepisma.xyz/2017/10/28/ricing-org-mode/index.html
(setq org-startup-indented t
      ;; org-bullets-bullet-list '(" ") ;; no bullets, needs org-bullets package
      ;; org-ellipsis ;; folding symbol
      org-pretty-entities t
      org-hide-emphasis-markers t
      ;; show actually italicized text instead of /italicized text/
      ;;org-agenda-block-separator ""
      org-fontify-whole-heading-line t
      org-fontify-done-headline t
      org-fontify-quote-and-verse-blocks t)



;; Allow alphabetically ordered lists
(setq org-list-allow-alphabetical t)

;; Don't prompt before running code in orgmode
;;(setq org-confirm-babel-evaluate nil)

;; Syntax highlight in #+BEGIN_SRC blocks
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)

;; enable prompt-free code running
(setq org-confirm-babel-evaluate nil
      org-link-elisp-confirm-function nil
      org-link-shell-confirm-function nil)


;; https://gist.github.com/stardiviner/dd7f4bf5f38dfffc3afc
;;(defcustom org-inline-image-background nil
;; "The color used as the default background for inline images.
;; When nil, use the default face background."
;;  :group 'org
;;  :type '(choice color (const nil)))

;;(setq org-inline-image-background "white")


;; https://emacs.stackexchange.com/questions/30520/org-mode-c-c-c-c-to-display-inline-image
(add-hook 'org-babel-after-execute-hook 'org-redisplay-inline-images)


;; https://lists.gnu.org/archive/html/emacs-orgmode/2014-08/msg01000.html
;;(defadvice org-babel-execute-src-block (around progress nil activate)
;; "Give us some hint that we are running."
;;(set-face-attribute 'org-block-background nil :background "LightSteelBlue")

;;(message "Running your code block")
;;ad-do-it
;;(set-face-attribute 'org-block-background nil :background "gray")
;;(message "Done with code block"))


;; https://orgmode.org/worg/org-tutorials/org-latex-preview.html
;; (setq org-latex-create-formula-image-program 'dvipng)


;; https://orgmode.org/worg/org-tutorials/org-latex-export.html
;; (setq org-export-latex-hyperref-format "\\ref{%s}")


;; C-c C-, (org-insert-structure-template)


;; kindly borrowed from https://github.com/jkitchin/jmax/blob/master/jmax-org.el
;;* Expansions for blocks
;; add <p for python expansion
(add-to-list 'org-structure-template-alist
             '("p" "#+BEGIN_SRC python\n?\n#+END_SRC" "<src lang=\"python\">\n?\n</src>"))

;; add <por for python expansion with raw output
(add-to-list 'org-structure-template-alist
             '("por" "#+BEGIN_SRC python :results output raw\n?\n#+END_SRC" "<src lang=\"python\">\n?\n</src>"))

;; add <pv for python expansion with value
(add-to-list 'org-structure-template-alist
             '("pv" "#+BEGIN_SRC python :results value\n?\n#+END_SRC" "<src lang=\"python\">\n?\n</src>"))

;; add <el for emacs-lisp expansion
(add-to-list 'org-structure-template-alist
             '("el" "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC" "<src lang=\"emacs-lisp\">\n?\n</src>"))

;; add <sh for shell
(add-to-list 'org-structure-template-alist
             '("sh" "#+BEGIN_SRC sh\n?\n#+END_SRC" "<src lang=\"shell\">\n?\n</src>"))

;; set default exports to both code and results
(setq org-babel-default-header-args
      (cons '(:exports . "both")
            (assq-delete-all :exports org-babel-default-header-args)))

;; Interpret "_" and "^" for export when braces are used.
;; (setq org-export-with-sub-superscripts '{})


(provide 'init-org)


;;; init-org ends here
