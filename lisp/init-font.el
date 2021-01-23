;;; init-font.el --- font types and sizes -*- lexical-binding: t -*-


;;; Commentary:

;;; Code:

(defun default-input-font ()
  "Changes the set-input-method to nil and selects a default font
bound to C-c d"
  (interactive)
  (set-input-method nil)
  (face-remap-add-relative 'default :family "Ubuntu Mono" :height 130)
  )

(defun russian-input-font ()
  "Changes the set-input-method to Russian and selects another font
bound to C-c r"
  (interactive)
  (set-input-method "russian-computer")
  (face-remap-add-relative 'default :family "Lora" :height 130)
  )

(global-set-key (kbd "C-c d") 'default-input-font)
(global-set-key (kbd "C-c r") 'russian-input-font)


(provide 'init-font)

;;; init-font ends here
