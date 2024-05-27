;; latex.el – LaTeX

;; База
(setq-default
 TeX-engine 'default
 TeX-parse-self t
 )

(setq
 ; Векторная графика на превью Org-mode
 org-preview-latex-default-process 'dvisvgm)

;; Hooks – LaTeX environment

(after! cdlatex
 (load (concat module-dir "/props/modes/cdlatex-tab.el")
 (add-hook 'org-mode-hook #'turn-on-org-cdlatex)))

;; UML module
(after! plantuml
 (setq plantuml-default-exec-mode 'jar
   plantuml-jar-path "/usr/share/plantuml/plantuml.jar"
   org-plantuml-jar-path (expand-file-name "/usr/share/plantuml/plantuml.jar")
 (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
 (org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))))
