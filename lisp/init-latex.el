;;; init-latex.el --- latex -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; LaTeX
;; -------------------------------- ;;


;;; Commentary:

;;; Code:


;; AUCTeX
;; An extensible package for writing and formatting Tex files.
;; https://www.gnu.org/software/auctex/

;; (load "auctex.el" nil t t)


;; latex-preview-pane
;; Minor mode that enables you to preview LaTeX files directly in Emacs.
;; https://www.emacswiki.org/emacs/LaTeXPreviewPane


;; reftex
;; A specialized package for support of labels, citations, and indices in LaTeX.
;; https://www.gnu.org/software/auctex/reftex.html

(use-package reftex
  :commands turn-on-reftex
  :hook ((latex-mode LaTeX-mode) . turn-on-reftex)
  :config
  (setq reftex-plug-into-AUCTeX t))


;; cdlatex
;; A minor mode supporting fast insertion of environment templates and math stuff in LaTeX.
;; https://github.com/cdominik/cdlatex

;; (add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode
;; (add-hook 'latex-mode-hook 'turn-on-cdlatex)   ; with Emacs latex mode

;; (setq org-latex-compiler "xelatex")

;; (setq exec-path (append exec-path '("/usr/texbin")))

;; (require 'ox-reveal)

(require 'ox-latex)

(add-to-list 'org-latex-classes
             '("beamer"
               "\\documentclass\[presentation\]\{beamer\}"
               ("\\section\{%s\}" . "\\section*\{%s\}")
               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
               ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))


(add-to-list 'org-latex-classes
             '("book"
               "\\documentclass{book}"
               ("\\part{%s}" . "\\part*{%s}")
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
             )


(add-to-list 'org-latex-classes
             '("tufte-book"
               "\\documentclass{tufte-book}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))


(provide 'init-latex)


;;; init-latex ends here
