;;; init-visual.el --- visual -*- lexical-binding: t -*-



;; -------------------------------- ;;
;; Visual
;; -------------------------------- ;;


;;; Commentary:

;;; Code:


;; undo-tree
;; Replaces Emacs' undo system with a system that treats undo history as what it is: a branching tree of changes.
;; http://www.dr-qubit.org/undo-tree.html

(use-package undo-tree
  :diminish undo-tree-mode
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)))


;; highlight-symbol
;; An automatic and manual symbol highlighting package for GNU Emacs.
;; https://github.com/nschum/highlight-symbol.el


;; rainbow-delimiters
;; Highlights delimiters such as parentheses, brackets, or braces according to their depth.
;; https://github.com/Fanael/rainbow-delimiters


;; rainbow-mode
;; Sets background color to strings that match color names.
;; https://elpa.gnu.org/packages/rainbow-mode.html


;; typo.el
;; Emacs extension for typographical editing.
;; https://github.com/jorgenschaefer/typoel


;; whitespace
;; A minor mode to visualize blanks [TAB, (HARD) SPACE and NEWLINE].
;; https://www.emacswiki.org/emacs/WhiteSpace

(use-package whitespace
  :diminish whitespace-mode
  :init
  ;;(dolist (hook '(prog-mode-hook text-mode-hook))
  (dolist (hook '(prog-mode-hook))
    (add-hook hook #'whitespace-mode))
  (add-hook 'before-save-hook #'whitespace-cleanup)
  :config
  (setq whitespace-line-column 80) ;; limit line length
  (setq whitespace-style '(face tabs empty trailing lines-tail)))

;; (setq whitespace-global-modes '(not org-mode))

;; linum-relative
;; Display relative line numbers is Emacs.
;; https://github.com/coldnew/linum-relative


;; focus
;; Dims surrounding text and works with any theme.
;; https://github.com/larstvei/Focus


;; beacon
;; Whenever the window scrolls, a light will shine on top of your cursor.
;; https://github.com/Malabarba/beacon

(use-package beacon
  :diminish beacon-mode
  :config
  (beacon-mode 1))


;;(progn
;; Make whitespace-mode with very basic background coloring for whitespaces.
;; http://ergoemacs.org/emacs/whitespace-mode.html
;;(setq whitespace-style (quote (face spaces tabs newline space-mark tab-mark newline-mark )))

;; Make whitespace-mode and whitespace-newline-mode use “¶” for end of line char and “▷” for tab.
;;(setq whitespace-display-mappings
;; all numbers are unicode codepoint in decimal. e.g. (insert-char 182 1)
;;'(
;;  (space-mark 32 [183] [46]) ; SPACE 32 「 」, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
;;  (newline-mark 10 [182 10]) ; LINE FEED,
;;  (tab-mark 9 [9655 9] [92 9]) ; tab
;;  )))

(provide 'init-visual)


;;; init-visual ends here
