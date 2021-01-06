;;; init-flycheck.el --- error check -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; Error Check
;; -------------------------------- ;;


;;; Commentary:


;; flycheck
;; Modern on-the-fly syntax checking meant to replace FlyMake.
;; https://www.flycheck.org/en/latest/


;;; Code:


(use-package flycheck
  ;;:diminish flycheck-mode
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))


(provide 'init-flycheck)


;;; init-flycheck ends here
