;; sessions.lisp - Session management
(in-package #:nyxt-user)


;; Prompt
(define-configuration :browser
    ((session-restore-prompt :never-restore)))

(define-configuration :buffer
 ((external-editor-program '("emacsclient"))))

(define-configuration buffer
  ((default-modes
    (append (list 'reduce-tracking-mode) %slot-value%))))

;; (define-configuration :buffer
;;   ((default-modes (append '(my-blocker-mode) %slot-default%))))

;; Sessions

;; Workspaces

;; History
;; (define-configuration :context-buffer
;;   (global-history-p nil))
