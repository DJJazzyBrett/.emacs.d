;;; init-treemacs.el --- tree layout file explorer  -*- lexical-binding: t -*-



;; -------------------------------- ;;
;; Treemacs
;; -------------------------------- ;;


;;; Commentary:

;;; Code:


;; treemacs
;; A tree layout file explorer for Emacs.
;; https://github.com/Alexander-Miller/treemacs

(use-package treemacs
  :defer t)


(use-package treemacs-projectile
  :after treemacs projectile)


(use-package treemacs-icons-dired
  :after treemacs dired
  :config (treemacs-icons-dired-mode))


(use-package treemacs-magit
  :after treemacs magit
  :ensure t)




(provide 'init-treemacs)


;;; init-treemacs ends here
