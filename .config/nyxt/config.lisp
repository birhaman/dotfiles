;; config.lisp - Initializing config file
(in-package #:nyxt-user)
#+nyxt-3 (reset-asdf-registries)

;; #-quicklisp
;; (let ((quicklisp-init
;;        (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
;;   (when (probe-file quicklisp-init)
;;     (load quicklisp-init)))

;; (defvar *web-buffer-modes*
;;   '(:emacs-mode
;;     :blocker-mode :force-https-mode
;;     :reduce-tracking-mode
;;     :user-script-mode :bookmarklets-mode))

(define-nyxt-user-system-and-load nyxt-user/basic-config
  :components (
   "modules/quicklisp/quicklisp"

   "modules/ui/frameset"
   "modules/input/primary.mappings"

   "modules/ui/status"
   "modules/ui/style"

   "modules/netrules/manage-urls"
   ;; "modules/netrules/proxy/default"

   "modules/users/auth"

   "modules/at-read/completion"

   "modules/ui/highlight"
   "modules/ui/blocker"

   ;; "modules/emacs"
   ;; "modules/users/logdata"

   "modules/input/symbol-inserting"


   "extensions/search-engines"
   "extensions/dark-reader"
   ;; "extensions/user-scripts/"

   "testing/extensions/chromium-transfer"

   "sessions"
   ))



;; (defmacro defextsystem (system &optional file)
;;   `(define-nyxt-user-system-and-load ,(gensym "NYXT-USER/")
;;      :depends-on (,system) ,@(when file
;;                                `(:components (,file)))))


;; (define-configuration buffer
;;   ((default-modes
;;     (pushnew 'nyxt/mode/vi:vi-normal-mode %slot-value%))))






;; (defvar *custom-keymap* (make-keymap "custom-map")
;;     "Keymap for `custom-mode'.")
;; (define-key *custom-keymap* "C-M-k" 'set-url)

;; (define-mode custom-mode ()
;;     "Mode for the custom key bindings in `*custom-keymap*'."
;;        ((keymap-scheme (keymap:make-scheme
;;                      scheme:cua *custom-keymap*
;;                      scheme:emacs *custom-keymap*
;;                      scheme:vi-normal *custom-keymap*))))


(unless nyxt::*run-from-repl-p*
  (define-configuration :browser
  ((after-startup-hook (hooks:add-hook %slot-value% #'toggle-debug-on-error))
   )))
