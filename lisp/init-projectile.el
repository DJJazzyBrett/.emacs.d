;;; init-projectile.el --- project management -*- lexical-binding: t -*-



;; -------------------------------- ;;
;; Project Mgmt
;; -------------------------------- ;;


;;; Commentary:


;; projectile
;; A project interaction library for Emacs.
;; https://docs.projectile.mx/projectile/index.html


;; project-explorer
;; A tree project explorer that integrates with projectile.
;; https://github.com/sabof/project-explorer


;;; Code:


(use-package projectile
  :diminish projectile-mode
  :bind ( :map projectile-mode-map
               ("s-p" . projectile-command-map)
               ("C-c p" . projectile-command-map))
  :init
  (projectile-mode 1))


(provide 'init-projectile)


;;; init-projectile ends here
