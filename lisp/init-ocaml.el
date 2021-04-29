;;; init-ocaml.el --- setup OCaml -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(and (require 'cl-lib)
     (use-package tuareg
       :ensure t
       :config
       (add-hook 'tuareg-mode-hook #'electric-pair-local-mode)
       ;; (add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)
       (setq auto-mode-alist
             (append '(("\\.ml[ily]?$" . tuareg-mode)
                       ("\\.topml$" . tuareg-mode))
                     auto-mode-alist)))

     ;; Merlin configuration

     (use-package merlin
       :ensure t
       :config
       (add-hook 'tuareg-mode-hook 'merlin-mode)
       (add-hook 'merlin-mode-hook #'company-mode)
       (setq merlin-error-after-save nil))

     ;; utop configuration

     (use-package utop
       :ensure t
       :config
       (autoload 'utop-minor-mode "utop" "Minor mode for utop" t)
       (add-hook 'tuareg-mode-hook 'utop-minor-mode)
       ))


;;(add-hook 'tuareg-mode-hook
;;          (lambda()
;;            (when (functionp 'prettify-symbols-mode)
;;              (prettify-symbols-mode))))

;;(face-spec-set
;; 'tuareg-font-lock-constructor-face
;; '((((class color) (background light)) (:foreground "SaddleBrown"))
;;   (((class color) (background dark)) (:foreground "burlywood1"))))

;;(add-hook 'tuareg-mode-hook #'(lambda() (setq mode-name "🐫")))

(provide 'init-ocaml)

;;; init-ocaml ends here
