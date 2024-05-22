;; blocker.lisp - Page element blocker properties
(in-package #:nyxt-user)

 ;; "Blocker mode with custom hosts from *my-blocked-hosts*."
(define-mode my-blocker-mode (nyxt/mode/blocker:blocker-mode)
  ((nyxt/mode/blocker:hostlists (list *my-blocked-hosts* nyxt/mode/blocker:*default-hostlist*))))
