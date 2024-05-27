;; prop/org-prop.el – Org-mode properties



;; Шаблоны
;; (setq org-capture-templates
      ;; (quote (("t" "todo" entry (file "~/git/org/life//refile.org")
      ;;      "* TODO %?\n\n" :clock-in t :clock-resume t) ;; TODO: %? %U %a, what does these means??? %: %c
      ;;     ("o" "org" entry (file "~/git/org/life//refile.org")
      ;;      "* TODO %?General Org\n%U\n" :clock-in t :clock-resume t) ;; TODO: %? %U %a, what does these means??? %: %c
      ;;     ;; ("r" "respond" entry (file "~/git/org/life//refile.org")
      ;;     ;;  "* To %? about :RESPONSE:  \nSCHEDULED: %t\n%U\n%a" :clock-in t :clock-resume t)
      ;;     ("r" "read" entry (file "~/git/org/life//refile.org")
      ;;      "* TODO %? :READ:\n%U\n" :clock-in t :clock-resume t)
      ;;     ("n" "note" entry (file "~/git/org/life//refile.org")
      ;;      "* %? :NOTE:\n%U\n" :clock-in t :clock-resume t)

      ;;     ("h" "Habit" entry (file "~/git/org/habits.org")
      ;;      "* NEXT %?\nSCHEDULED: %(format-time-string \"<%Y-%m-%d .+1d/3d>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n%U\n")
      ;;     ("v" "Vocabulary" entry (file "~/git/org/vocabulary.org")
      ;;      "* %? :VOCA:\n%U" :clock-in t :clock-resume t)

      ;;     ("j" "Journalsing")
      ;;     ("jd" "diary" entry (file+datetree "~/git/org/diary/2020.org")
      ;;      "* %?\n%U\n" :clock-in t :clock-resume t)
      ;;     ("jk" "Kaggle Competition" entry (file+datetree "~/git/org/diary/Kaggle.org")
      ;;      "* %?\n%U\n" :clock-in t :clock-resume t)
      ;;     ("js" "Statistician" entry (file+datetree "~/git/org/diary/Statistics.org")
      ;;      "* %?\n%U\n" :clock-in t :clock-resume t)
      ;;     ("jo" "Office" entry (file+datetree "~/git/org/diary/2020.org")
      ;;      "* %?:office:\n%U\n" :clock-in t :clock-resume t)
      ;;     ("jf" "Finance" entry (file+datetree "~/git/org/diary/2020.org")
      ;;      "* %?:finance:\n%U\t\n" :clock-in t :clock-resume t)
      ;;     ("jc" "Career" entry (file+datetree "~/git/org/diary/Career.org")
      ;;      "* %?\n%U\n" :clock-in t :clock-resume t)
          ;; )


;; Аббревиация ссылок на ресурсы и директории
(setq org-link-abbrev-alist
  '(("openmap" . "https://www.openstreetmap.org/search?q=%s&polygon=1")
 ;; Локальные ссылки
    ("pubchem" . "https://pubchem.ncbi.nlm.nih.gov/compound")))
;   ("message" . "/wpl/.maildir/omeirosil@disroot.org/INBOX")

(defun org-cycle-hide-drawers (state)
  "Re-hide all drawers after a visibility state change."
  (when (and (derived-mode-p 'org-mode)
             (not (memq state '(overview folded contents))))
    (save-excursion
      (let* ((globalp (memq state '(contents all)))
             (beg (if globalp
                    (point-min)
                    (point)))
             (end (if globalp
                    (point-max)
                    (if (eq state 'children)
                      (save-excursion
                        (outline-next-heading)
                        (point))
                      (org-end-of-subtree t)))))
        (goto-char beg)
        (while (re-search-forward org-drawer-regexp end t)
          (save-excursion
            (beginning-of-line 1)
            (when (looking-at org-drawer-regexp)
              (let* ((start (1- (match-beginning 0)))
                     (limit
                       (save-excursion
                         (outline-next-heading)
                           (point)))
                     (msg (format
                            (concat
                              "org-cycle-hide-drawers:  "
                              "`:END:`"
                              " line missing at position %s")
                            (1+ start))))
                (if (re-search-forward "^[ \t]*:END:" limit t)
                  (outline-flag-region start (point-at-eol) t)
                  (user-error msg))))))))))

;; Ledger

;; Соответствия
  (add-to-list 'org-file-apps '(
     ("\\.jpg\\'" . "feh %s")
     ("\\.png\\'" . "feh %s")
     ("\\.gif\\'" . "nomacs %s")
     ("\\.mp4\\'" . "celluloid %s")
     ("\\.mkv\\'" . "celluloid %s")
     ("\\.mp3\\'" . "quodlibet %s")
      ;; Documents
     ("\\.xlsx\\'" . "libreoffice --calc %s")

     ("\\.html\\'" . "nyxt %s")
     ("\\.x?html?\\'" . "nyxt %s")
     ("\\.mhtml\\'" . "nyxt %s")

     ("\\.pdf\\'" . "okular %s")
     ("\\.pdf\\'" . "okular %s")

  ))
