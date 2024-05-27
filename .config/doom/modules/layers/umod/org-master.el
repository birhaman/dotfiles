;; org-config.el – Org-mode configur
(after! org
  (use-package org
   :config
  (require 'org-superstar)
   :hook
   ((org-mode . (lambda () (org-superstar-mode 1)))

    )))


;;  (load "~/.emacs.d/define/org-module.def.el")
;;  (load (concat properties-user-dir "/modes/org-prop.el"))

;; (setq
;;       ;; org-pretty-entities t
;;       org-use-property-inheritance nil


;;       ;; Image properties
;;       ;; org-image-actual-width nil
;;       ;; org-display-inline-images nil

;;       ;; Bookmarks
;;       org-capture-bookmark nil)

;; ;; Importing

;;  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;;   (setq org-log-done t)
;;   (setq org-todo-keywords
;;       '((sequence "TODO" "HOLD" "IN PROCESS" "WAITING" "CHECK" "MEETING" "|" "DONE" "DELAYED" "DEFERRED" "CANCELLED")))
;;   (setq org-todo-keyword-faces ;; Стадии разработки
;;       (quote (("TODO" :foreground "beige" :weight bold)
;;           ("HOLD" :foreground "DarkOrange" :weight bold)
;;           ("WAITING" :foreground "goldenrod1" :weight bold)
;;           ("IN PROCESS" :foreground "NavajoWhite2" :weight bold)
;;           ("CHECK" :foreground "MediumOrchid" :weight bold)
;;           ("CANCELLED" :foreground "red3" :weight bold)
;;           ("DONE" :foreground "green" :weight bold)
;;           ("DELAYED" :foreground "orange" :weight bold)
;; 	  ("DEFERRED FOR LONG TIME" :foreground "navajowhite" :weight bold)
;;           ("MEETING" :foreground "NavajoWhite2" :weight bold))))
;;  (add-to-list 'load-path "~/.emacs.d/plugins/org-mode-applets")

;; (setq org-hide-leading-stars t
;;       org-hide-emphasis-markers t)

;; ;; Прочие параметры в орге
;; ;; use org-bullets-mode for utf8 symbols as org bullets
;; ;(require 'org-bullets)
;; ;; make available "org-bullet-face" such that I can control the font size individually
;; ;(setq org-bullets-face-name (quote org-bullet-face))
;; (add-hook 'org-mode-hook 'visual-line-mode) ;; Hiding exterhal org-mode characters
;; ;(add-hook 'org-mode-hook 'org-toggle-pretty-entities)
;;   (evil-define-key 'normal org-mode-map
;;    (kbd "<tab>") #'org-cycle ;; Первоначальный функционал <tab> в Org-mode
;;    (kbd "C-b") #'org-view-mode)

;;  (add-hook 'org-mode-hook 'org-appear-mode)
;; ; (evil-define-key '(normal insert) org-mode-map (kbd "C-c C-x C-i") #' )

;; (defvar org-electric-pairs '((?$ . ?$) (?№ . ?№))) ;; Закрытие скобок и комбинаций символов для Org-mode
;; (defun org-add-electric-pairs ()
;;   (setq-local electric-pair-pairs (append electric-pair-pairs org-electric-pairs))
;;   (setq-local electric-pair-text-pairs electric-pair-pairs))
;;  (add-hook 'org-mode-hook 'org-add-electric-pairs)
;;    (remove-hook 'org-cdlatex-mode 'org-add-electric-pairs)
;;  (add-hook 'org-mode-hook (lambda () (push '(?< . ("= " . " =")) evil-surround-pairs-alist)))

;; (defun org+-buffer-name-to-title (&optional end)
;;   "Rename buffer to value of #+TITLE:.
;; If END is non-nil search for #+TITLE: at `point' and
;; delimit it to END.
;; Start an unlimited search at `point-min' otherwise."
;;   (interactive)
;;   (let ((beg (or (and end (point))
;;          (point-min))))
;;     (save-excursion
;;       (when end
;;     (goto-char end)
;;     (setq end (line-end-position)))
;;       (goto-char beg)
;;       (when (re-search-forward "^[[:space:]]*#\\+TITLE:[[:space:]]*\\(.*?\\)[[:space:]]*$" end t)
;;     (rename-buffer (match-string 1)))))
;;   nil)
;; (defun org+-buffer-name-to-title-config ()
;;   "Configure Org to rename buffer to value of #+TITLE:."
;;   (font-lock-add-keywords nil '(org+-buffer-name-to-title)))

;; (add-hook 'org-mode-hook #'org+-buffer-name-to-title-config)

;; ;(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; ;(add-hook 'org-mode-hook #'turn-on-cdlatex)


;; ;; Org-Agenda
;; (require 'org-agenda)

;; (setq org-refile-targets '((nil :maxlevel . 5)
;;                            (org-agenda-files :maxlevel .5)))

;;  ;; (require 'origami)

;; (add-hook 'org-agenda-mode-hook #'origami-mode)
;; (add-hook 'org-agenda-mode-hook #'org-super-agenda-mode)


;; (setq org-agenda-search-view-always-boolean t
;;       org-agenda-block-separator (propertize
;;                                   (make-string (frame-width) ?\u2594)
;;                                   'face '(:foreground "grey38"))
;;       org-super-agenda-header-separator ""
;;       org-habit-show-habits-only-for-today nil
;;       org-agenda-restore-windows-after-quit t
;;       org-agenda-show-future-repeats nil
;;       org-deadline-warning-days 3
;;       org-agenda-window-setup 'current
;;       org-agenda-span 'month
;;       org-agenda-start-on-weekday 1 ;; nil
;;       org-agenda-skip-deadline-prewarning-if-scheduled t
;;       org-agenda-skip-scheduled-if-done t
;;       org-agenda-skip-deadline-if-done t
;;       ;; org-agenda-format-date "\n%A, %-e %B %Y"
;;       org-agenda-dim-blocked-tasks t)
;; ;; (setq org-agenda-custom-commands
;; ;;       '(("d" "Dagelijkse Takenlijst"
;; ;;          ((agenda ""
;; ;;                   ((org-agenda-overriding-header " Planner")
;; ;;                    (org-agenda-prefix-format '((agenda . " %?-12t")))
;; ;;                    (org-agenda-span 'day)
;; ;;                    (org-deadline-warning-days 0)
;; ;;                    (org-super-agenda-groups
;; ;;                     '((:name "" :time-grid t :scheduled t :deadline t :category "verjaardag")
;; ;;                       (:discard (:anything t))))))))))
;; ;; (org-super-agenda--def-auto-group category "their org-category property"
;; ;;   :key-form (org-super-agenda--when-with-marker-buffer (org-super-agenda--get-marker item)
;; ;;               (org-get-category))
;; ;;   :header-form (concat " " key))

;; ;; (setq org-agenda-custom-commands (append org-agenda-custom-commands
;; ;;         '(("p" "Project backlog"
;; ;;           ((todo "TODO|NEXT|WAITING|HOLD"
;; ;;                 ((org-agenda-overriding-header " Inbox\n")
;; ;;                  (org-agenda-prefix-format "  ")
;; ;;                  (org-agenda-files '("~/org/inbox.org"))))
;; ;;           (todo "TODO|NEXT|WAITING|HOLD"
;; ;;                  ((org-agenda-overriding-header " Project TODOs")
;; ;;                  (org-agenda-prefix-format "  ")
;; ;;                   (org-agenda-files '("~/org/projects.org"))
;; ;;                   (org-super-agenda-groups
;; ;;                    '((:discard (:scheduled t :date t))
;; ;;                      (:auto-category t)
;; ;;                      (:discard (:anything t))))))
;; ;;           (todo "TODO|NEXT"
;; ;;                 ((org-agenda-overriding-header " Reading List")
;; ;;                  (org-agenda-prefix-format "  ")
;; ;;                  (org-agenda-files '("~/org/leeslijst.org"))
;; ;;                  (org-super-agenda-groups
;; ;;                   '((:discard (:scheduled t))
;; ;;                     (:name " Priority A reading" :priority "A")
;; ;;                     (:name " Priority B reading" :priority "B")
;; ;;                     (:name " Priority C reading" :priority "C")
;; ;;                      (:discard (:anything t)))))))))))

;; ;; (defun format-closed-query ()
;; ;;   (format "+TODO=\"DONE\"+CLOSED>=\"<-%sd>\"" (read-string "Number of days: ")))
;; ;; (setq org-agenda-custom-commands (append org-agenda-custom-commands
;; ;;         '(("w" "Weekly review"
;; ;;          ((tags (format-closed-query)
;; ;;                 ((org-agenda-overriding-header "Overview of DONE tasks")
;; ;;                  (org-agenda-archives-mode t))))))))(setq org-notifications-which-agenda-files

;;  (require 'calfw)
;;   (require 'calfw-org)
;; (defun fk-window-displaying-agenda-p (window)
;;   (equal (with-current-buffer (window-buffer window) major-mode)
;;          'org-agenda-mode))

;; (defun fk-position-calendar-buffer (buffer alist)
;;   (let ((agenda-window (car (remove-if-not #'fk-window-displaying-agenda-p (window-list)))))
;;     (when agenda-window
;;       (if (not (get-buffer-window "*Calendar*"))
;;           (let ((desired-window (split-window agenda-window nil 'below)))
;;             (set-window-buffer desired-window buffer)
;;             desired-window)))))

;; (add-to-list 'display-buffer-alist (cons "\\*Calendar\\*" (cons #'fk-position-calendar-buffer nil)))


;; (require 'org-notifications)
;; ;; Notification templates
;; (setq org-notification-title "Notice!"
;;       org-notifications-style 'libnotify
;;       org-notifications-play-sounds t
;;       )
;;  ;; (setq org-notifications-sound "")
;; (org-notifications-start)
