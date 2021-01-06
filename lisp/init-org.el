;;; init-org.el --- org -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Org
;; -------------------------------- ;;


;;; Commentary:


;;; Code:


(require 'org)


(add-hook 'org-mode-hook #'org-indent-mode)


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
   (haskell    . t)
   (ruby       . t)
   (C          . t)
   (dot        . t)
   (latex      . t)
   (org        . t)
   (makefile   . t)
   ))

;; Don't prompt before running code in orgmode
(setq org-confirm-babel-evaluate nil)

;; Syntax highlight in #+BEGIN_SRC blocks
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)


(provide 'init-org)


;;; init-org ends here
