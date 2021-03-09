;;; init-plantuml.el --- plantuml -*- lexical-binding: t -*-


;; -------------------------------- ;;
;; PlantUML
;; -------------------------------- ;;


;;; Commentary:


;;; Code:


;; Initial set-up after downloadin .jar file
;; see https://plantuml.com/zh/emacs
;; (setq org-plantuml-jar-path (expand-file-name "~/.emacs.d/UML/plantuml.jar"))
;; (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
;; (org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))


;; https://github.com/skuro/plantuml-mode
;; (use-package plantuml-mode
;;   :init
;;   (setq plantuml-jar-path "/home/boxx/Home/.emacs.d/UML/plantuml.jar")
;;   (setq plantuml-default-exec-mode 'jar))


;; https://stackoverflow.com/questions/59863466/failing-to-execute-plantuml-in-emacs
(use-package plantuml-mode
  :init
  (setq plantuml-default-exec-mode 'jar)
  (setq plantuml-jar-path "~/.emacs.d/UML/plantuml.jar")
  (setq org-plantuml-jar-path (expand-file-name "~/.emacs.d/UML/plantuml.jar"))
  (setq org-startup-with-inline-images t)
  (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
  (org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t))))

;; Enable plantuml-mode for PlantUML files
;; (add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))


(provide 'init-plantuml)


;;; init-plantuml ends here
