;; org-roam.el
;; (require 'org-roam)
;;  (setq org-roam-directory "/wpa/.entries/org-roam")

;;  (require 'org-roam-protocol)

;; ;; (setq org-roam-capture-templates
;; ;;       '(("d" "default" plain
;; ;;          "%?"
;; ;;          :target
;; ;;          (file+head
;; ;;           "%<%Y%m%d%H%M%S>-${slug}.org"
;; ;;           "#+title: ${note-title}\n")
;; ;;          :unnarrowed t)
;; ;;         ("n" "literature note" plain
;; ;;          "%?"
;; ;;          :target
;; ;;          (file+head
;; ;;           "%(expand-file-name (or citar-org-roam-subdir \"\") org-roam-directory)/${citar-citekey}.org"
;; ;;           "#+title: ${citar-citekey} (${citar-date}). ${note-title}.\n#+created: %U\n#+last_modified: %U\n\n")
;; ;;          :unnarrowed t)))

;; (with-eval-after-load 'citar
;;   (require 'citar-org-roam)
;;  (setq citar-org-roam-note-title-template "${author} - ${title}")

;;    (add-hook 'org-mode-hook #'citar-org-roam-mode))

;; ;;  (require 'org-roam-ui)
;; ;;  (require 'org-roam-bibtex)
;; ;;   (setq org-roam-v2-ack t)
;; ;; ;;   :custom
;; ;; ;;   (org-roam-directory (file-truename "~/kaartenbak"))
;; ;; ;;   :bind (("C-c o l" . org-roam-buffer-toggle)
;; ;; ;;          ("C-c o f" . org-roam-node-find)
;; ;; ;;          ("C-c o g" . org-roam-graph)
;; ;; ;;          ("C-c o i" . org-roam-node-insert)
;; ;; ;;          ("C-c o c" . org-roam-capture)
;; ;; ;;          ;; Dailies
;; ;; ;;          ("C-c o j" . org-roam-dailies-capture-today))
;; ;; ;;   :config
;; ;; ;;   (org-roam-setup)
;; ;; ;;   (setq org-roam-db-gc-threshold (* 10 1024 1024))
;; ;; ;;   ;; If using org-roam-protocol
;; ;; ;;   (require 'org-roam-protocol)
;; ;; ;;   (require 'org-roam-export) ;; check whether this helps exporting
;; ;; ;;   (setq org-roam-dailies-directory "daily/")
;; ;; ;;   (setq org-roam-dailies-capture-templates
;; ;; ;;       '(("d" "default" entry
;; ;; ;;          "* %?"
;; ;; ;;          :if-new (file+head "%<%Y-%m-%d>.org"
;; ;; ;;                             "#+title: %<%Y-%m-%d>\n")))))

;; ;; (add-hook 'after-init-hook #'org-roam-mode)
;; ;; (add-hook 'org-roam-mode-hook #'org-roam-bibtex-mode)

;; ;;   (setq org-roam-ui-sync-theme t
;; ;;         org-roam-ui-follow t
;; ;;         org-roam-ui-update-on-save t
;; ;;         org-roam-ui-browser-function #'browse-url-chromium
;; ;;         org-roam-ui-open-on-start nil)

;; ;; (defun open-kaartenbak ()
;; ;;   (interactive)
;; ;;   (let ((tab-bar-index (tab-bar--tab-index-by-name "Kaartenbak")))
;; ;;     (if tab-bar-index
;; ;;         (tab-bar-switch-to-tab (+ tab-bar-index 1))
;; ;;       (progn
;; ;;         (tab-bar-new-tab)
;; ;;         (tab-bar-rename-tab "Kaartenbak")
;; ;;         (find-file "~/kaartenbak/20210727213932-kaartenbak.org")))))

;; ;; (setq org-use-speed-commands t  ; set to true for navigation with shortcuts
;; ;;       org-image-actual-width (list 550) ; resize the width of images
;; ;;       org-format-latex-options (plist-put org-format-latex-options :scale 1.5)
;; ;;       org-src-fontify-natively t  ; use auctex for formatting latex in org
;; ;;       org-hide-leading-stars nil  ; Show all stars of headers
;; ;;       org-adapt-indentation nil   ; Don't indent subsections (helps org-babel code blocks)
;; ;;       org-cite-global-bibliography '("~/org/bib.bib")  ; for citing references
;; ;;       org-latex-create-formula-image-program 'dvisvgm
;; ;;       org-latex-default-class "tufte-handout"
;; ;;       org-highlight-latex-and-related '(native))

;; ;; LINKED TO https://www.karsdorp.io/posts/dotemacs/
