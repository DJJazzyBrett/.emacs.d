;;; init-org.el --- org -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Org
;; -------------------------------- ;;


;;; Commentary:


;;; Code:


(require 'org)


(add-hook 'org-mode-hook #'org-indent-mode)


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
  (setq org-bullets-bullet-list
        '("■" "◆" "▲" "▶"))
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
   (dot        . t)
   (latex      . t)
   (org        . t)
   (makefile   . t)
   ))

;; Allow alphabetically ordered lists
(setq org-list-allow-alphabetical t)

;; Don't prompt before running code in orgmode
(setq org-confirm-babel-evaluate nil)

;; Syntax highlight in #+BEGIN_SRC blocks
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)


;; https://gist.github.com/stardiviner/dd7f4bf5f38dfffc3afc
(defcustom org-inline-image-background nil
  "The color used as the default background for inline images. When nil, use the default face background."
  :group 'org
  :type '(choice color (const nil)))

(setq org-inline-image-background "white")


;; https://emacs.stackexchange.com/questions/30520/org-mode-c-c-c-c-to-display-inline-image
(add-hook 'org-babel-after-execute-hook 'org-redisplay-inline-images)



;; https://orgmode.org/worg/org-tutorials/org-latex-preview.html
(setq org-latex-create-formula-image-program 'dvipng)

;;(eval-after-load 'org
;;  (add-to-list 'org-latex-packages-alist '("" "tcolorbox" t)))


;; https://orgmode.org/worg/org-tutorials/org-latex-export.html
(setq org-export-latex-hyperref-format "\\ref{%s}")


(provide 'init-org)


;;; init-org ends here
