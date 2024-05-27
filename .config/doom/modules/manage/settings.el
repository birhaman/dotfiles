;;; settings.el – Core values

;; Резервное копирование
(setq create-lockfiles  nil
  make-backup-files nil
  auto-save-default nil
  auto-save-list-file-name nil
  version-control t
 ; Notifications
  ring-bell-function 'ignore
 ; Minibuffer/Vertico
  enable-recursive-minibuffers nil)

;; Predefined
;; (mapc 'load (file-expand-wildcards "~/.config/doom/modules/*.el"))

(load (concat module-dir "/by-user/define/base-input.def.el"))
(load (concat module-dir "/by-user/define/org-module.def.el"))
(load (concat module-dir "/by-user/define/home.def.el"))
(load (concat module-dir "/props/visuals/prompts.el"))
