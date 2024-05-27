; treemacs.el - Emacs project handling attributes

;; Treemacs
(after! treemacs
  (require 'treemacs)
  (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action)
 (progn
    (setq treemacs-width 12
          treemacs-indent-guide-style 'line)
    ))
          ;; treemacs-wide-toggle-width               28
 ;;          treemacs-width-increment                 1
 ;;          treemacs-width-is-initially-locked       t
 ;;          treemacs-workspace-switch-cleanup        nil
 ;;          treemacs-deferred-git-apply-delay        0.5
 ;;          treemacs-directory-name-transformer      #'identity
 ;;          treemacs-display-in-side-window          t
 ;;          treemacs-eldoc-display                   'simple
 ;;          treemacs-file-event-delay                2000
 ;;          treemacs-file-extension-regex            treemacs-last-period-regex-value
 ;;          treemacs-file-follow-delay               0.2
 ;;          treemacs-file-name-transformer           #'identity
 ;;          treemacs-follow-after-init               t
 ;;          treemacs-expand-after-init               t
 ;;          treemacs-find-workspace-method           'find-for-file-or-pick-first
 ;;          treemacs-git-command-pipe                ""
 ;;          treemacs-goto-tag-strategy               'refetch-index
 ;;          treemacs-header-scroll-indicators        '(nil . "^^^^^^")
 ;;          treemacs-hide-dot-git-directory          t
          ;; treemacs-indentation                     1
          ;; treemacs-indentation-string              " "
          ;; treemacs-is-never-other-window           nil
 ;;          treemacs-max-git-entries                 5000
 ;;          treemacs-missing-project-action          'ask
 ;;          treemacs-move-forward-on-expand          nil
 ;;          treemacs-no-png-images                   nil
 ;;          treemacs-no-delete-other-windows         t
 ;;          treemacs-project-follow-cleanup          nil
 ;;          treemacs-persist-file                    (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
 ;;          treemacs-position                        'left
 ;;          treemacs-read-string-input               'from-child-frame
 ;;          treemacs-recenter-distance               0.1
 ;;          treemacs-recenter-after-file-follow      nil
 ;;          treemacs-recenter-after-tag-follow       nil
 ;;          treemacs-recenter-after-project-jump     'always
 ;;          treemacs-recenter-after-project-expand   'on-distance
 ;;          treemacs-litter-directories              '("/node_modules" "/.venv" "/.cask")
 ;;          treemacs-project-follow-into-home        nil
 ;;          treemacs-show-cursor                     nil
 ;;          treemacs-show-hidden-files               t
 ;;          treemacs-silent-filewatch                nil
 ;;          treemacs-silent-refresh                  nil
 ;;          treemacs-sorting                         'alphabetic-asc
 ;;          treemacs-select-when-already-in-treemacs 'move-back
 ;;          treemacs-space-between-root-nodes        t
 ;;          treemacs-tag-follow-cleanup              t
 ;;          treemacs-tag-follow-delay                1.5
 ;;          treemacs-user-mode-line-format           nil
 ;;          treemacs-user-header-line-format         nil


 (treemacs-resize-icons 13))
 (treemacs-fringe-indicator-mode 'always)
 ;; (treemacs-indent-guide-mode 'deferred)

;; Creating custom theme
;; (treemacs-create-theme "Default"
;;   :icon-directory (treemacs-join-path treemacs-dir "icons/default")
;;   :config
;;   (progn
;;     (treemacs-create-icon :file "root-open.png"   :fallback ""       :extensions (root-open))
;;     (treemacs-create-icon :file "root-closed.png" :fallback ""       :extensions (root-closed))
;;     (treemacs-create-icon :file "emacs.png"       :fallback "🗏 "     :extensions ("el" "elc"))
;;     (treemacs-create-icon :file "readme.png"      :fallback "🗏 "     :extensions ("readme.md"))

 ;; (treemacs-git-mode 'deferred)
 ;; (treemacs-git-commit-diff-mode 'deferred)

 ;; (setq projectile-switch-project-action #'magit-status)
