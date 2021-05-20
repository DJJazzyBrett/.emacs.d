;;; init-org-roam.el --- org-roam -*- lexical-binding: t -*-


;;; Commentary:

;;; Code:

;; -------------------------------- ;;
;; Org-Roam
;; -------------------------------- ;;


;; ---------- ;;
(defvar jazzy-roam-dir (expand-file-name "roam" user-emacs-directory)
  "This directory stores the org-roam git repo.")

(unless (file-exists-p jazzy-roam-dir)
  (make-directory jazzy-roam-dir))

(add-to-list 'load-path jazzy-roam-dir)
;; ---------- ;;



(require 'org-roam)




;;(use-package org-roam
;;  :hook
;;  (after-init . org-roam-mode)
;;  :custom
;;  (org-roam-directory  "~/reference/roam/")
;;  :bind (:map org-roam-mode-map
;;              (("C-c n l" . org-roam)
;;               ("C-c n f" . org-roam-find-file)
;;               ("C-c n g" . org-roam-graph))
;;              :map org-mode-map
;;              (("C-c n i" . org-roam-insert)))
;;  :config (setq org-roam-capture-templates '(("d" "default" plain
;;                                              (function org-roam--capture-get-point)
;;                                              "%?"
;;                                              :file-name "${slug}"
;;                                              :head "#+title: ${title}\n#+date: %U\n#+roam_alias: \n#+roam_tags: \n\n"
;;                                              :unnarrowed t))))



(provide 'init-org-roam)


;;; init-org-roam ends here
