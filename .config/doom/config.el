;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:

;; Fonts



;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Fon
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq custom-safe-themes t
      doom-theme 'doom-xcode
      display-line-numbers-type t
      ;; Fonts
      doom-font (font-spec :family "Fira Code" :height 90 :weight 'semi-light)
      doom-symbol-font (font-spec :family "Noto Sans Mono" :height 90)
      doom-emoji-fallback-font-families
       '("Noto Color Emoji"
         "Noto Emoji"
         "Font Awesome"))

(set-face-attribute
   'default nil :font "Fira Code" :height 90)
(set-fontset-font t 'arabic "Kawkab Regular")







;; Emacs+evil
(after! evil
  (use-package evil)
   :config
  (setq evil-magic nil))

;; Dired
(after! dired
  (require 'dired)
  (setq dired-dwim-target t))

(setq-hook! 'python-mode-hook python-indent-offset 2)


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(after! org
 (custom-set-faces
 '(font-lock-warning-face ((t (:background "#e28271" :foreground "white"))))
 '(isearch-fail ((t (:background "#181818" :foreground "#CD2138" :underline t))))
 '(link ((t (:foreground "#00b7f0" :underline nil))))
 '(linum ((t (:background "#2f2f2f" :foreground "#67625d"))))
 '(orderless-match-face-0 ((t (:foreground "#3899ED"))))

 '(org-code ((t (:foreground "#FCD6A2" :box (:line-width (1 . 1) :color "dark gray")))))
 '(org-level-1 ((t (:foreground "#FFFFFF" :extend nil))))
 '(org-level-2 ((t (:foreground "#FFEC8E" :extend nil))))
 '(org-link ((t (:inherit link))))
 '(org-table ((t (:foreground "#A7A7A7"))))
 '(outline-3 ((t (:foreground "tomato"))))
 '(outline-4 ((t (:foreground "#7FFFD4"))))
 '(outline-5 ((t (:foreground "tomato"))))
 '(outline-6 ((t (:foreground "#FFEC8E"))))
 '(outline-8 ((t (:foreground "#BFEA75"))))
 '(outline-9 ((t (:foreground "#DCDEA4"))))

 '(treemacs-directory-face ((t (:foreground "#F6D0B1"))))
 '(treemacs-root-face ((t (:foreground "#eae2e5" :underline t :weight bold :height 1.12))))))


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented
;;
;;
;;

;; Module order
(setq module-dir "~/.config/doom/modules")

(load (concat module-dir "/manage/settings.el")) ;; + predefined *.def.el
(load (concat module-dir "/manage/net-cf.el"))
(load (concat module-dir "/props/visuals/frame.el"))


;; Language modules
(load (concat module-dir "/manage/devenv/lisp.lang.cf.el"))
(load (concat module-dir "/manage/devenv/nix.lang.cf.el"))
(load (concat module-dir "/manage/devenv/perl.lang.cf.el"))
(load (concat module-dir "/manage/devenv/script.family.cf.el"))
(load (concat module-dir "/manage/devenv/web.family.cf.el"))
(load (concat module-dir "/manage/devenv/haskell.lang.cf.el"))

;; Inactive
(load (concat module-dir "/manage/completion/master.cf.el"))
(load (concat module-dir "/manage/completion/navigate.el"))
(load (concat module-dir "/manage/completion/snippets.el"))


;; Related to user
(load (concat module-dir "/layers/umod/org-master.el"))
(load (concat module-dir "/layers/umod/org-roam.el"))
(load (concat module-dir "/layers/umod/latex.el"))
(load (concat module-dir "/layers/umod/mapping.el"))

(load (concat module-dir "/users/main.el"))
(load (concat module-dir "/users/auth.el"))

;; Keybindings
(load (concat module-dir "/layers/foreign.input.el"))
(load (concat module-dir "/props/input/primary.mappings.el"))
(load (concat module-dir "/props/input/byuser.mappings.el"))
(load (concat module-dir "/props/input/hydras.el"))
