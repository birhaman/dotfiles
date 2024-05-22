;; status.lisp -
(in-package #:nyxt-user)

(define-configuration :prompt-buffer
  ((hide-single-source-header-p t
    :doc "This is to hide the header is there's only one source.
There also used to be other settings to make prompt-buffer a bit
more minimalist, but those are internal APIs :(")))
