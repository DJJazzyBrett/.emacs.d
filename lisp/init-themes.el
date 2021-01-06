;;; init-themes.el --- themes -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Appearance & Themes
;; -------------------------------- ;;


;;; Commentary:


;; smart-mode-line
;; A powerful and beautiful mode-line for Emacs.
;; https://github.com/Malabarba/smart-mode-line


;; spaceline
;; Powerline theme from Spacemacs.
;; https://github.com/TheBB/spaceline


;; telephone-line
;; A new implementation of Powerline for Emacs.
;; https://github.com/dbordak/telephone-line


;; mode-icons
;; Show icons instead of mode names.
;; https://github.com/ryuslash/mode-icons


;; emojify
;; Display emojis in Emacs.
;; https://github.com/iqbalansari/emacs-emojify


;; awesome-tray
;; Hide mode-line, display necessary information at right of minibuffer.
;; https://github.com/manateelazycat/awesome-tray


;; blackout
;; Customize or hide the displahy of major and minor modes in the mode line.
;; https://github.com/raxod502/blackout


;; highlight-indent-guides
;; This minor mode highlights indentation levels via font-lock.
;; https://github.com/DarthFennec/highlight-indent-guides


;; doom-modeline
;; A fancy and fast mode-line inspired by minimalism design.
;; https://seagle0128.github.io/doom-modeline/


;; doom-themes
;; An opinionated UI plugin and pack of themes.
;; https://github.com/hlissner/emacs-doom-themes


;; all-the-icons
;; Utility package to collect various Icon Fonts and propertize them within Emacs.
;; https://github.com/domtronn/all-the-icons.el


;; zenburn
;; A direct port of the popular Zenburn theme for vim.
;; https://github.com/bbatsov/zenburn-emacs


;;; Code:


(use-package all-the-icons)


(use-package zenburn-theme
  :config
  (load-theme 'zenburn t))


(provide 'init-themes)


;;; init-themes ends here
