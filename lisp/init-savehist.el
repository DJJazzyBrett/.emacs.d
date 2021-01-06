;;; init-savehist.el --- save history & archiving -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Save History
;; -------------------------------- ;;


;;; Commentary:


;;; Code:

(defvar jazzy-savefile-dir (expand-file-name "savefile" user-emacs-directory)
  "This folder stores all the automatically generated save/history-files.")

(unless (file-exists-p jazzy-savefile-dir)
  (make-directory jazzy-savefile-dir))


(use-package saveplace
  :config
  ;; remembers your location in a file when saving files
  (setq save-place-file (expand-file-name "saveplace" jazzy-savefile-dir))
  ;; activate it for all buffers
  (setq-default save-place t))


(use-package savehist
  :config
  (setq savehist-additional-variables
        ;; search entries
        '(search-ring regexp-search-ring)
        ;; save every minute
        savehist-autosave-interval 60
        ;; keep the home clean
        savehist-file (expand-file-name "savehist" jazzy-savefile-dir))
  (savehist-mode 1))


(use-package recentf
  :config
  (setq recentf-save-file (expand-file-name "recentf" jazzy-savefile-dir)
        recentf-max-saved-items 500
        recentf-max-menu-items 15
        ;; disable recentf-cleanup on Emacs start, because it can cause
        ;; problems with remote files
        recentf-auto-cleanup 'never)
  (recentf-mode +1))


(provide 'init-savehist)


;;; init-savehist ends here
