;; primary.mappings.lisp - Primary keybindings
(in-package #:nyxt-user)

(define-configuration :input-buffer
  ((override-map (let ((map (make-keymap "override-map")))
     (define-key map
         "M-x" 'execute-command
         "f1 m" 'describe-mode

         "C-c C-w" 'query-selection-in-search-engine

         "C-space" 'nothing
)))))

(define-configuration (:modable-buffer :prompt-buffer :editor-buffer)
  ((default-modes (append (list :vi-insert-mode) %slot-value%))))

(define-configuration :document-mode
    ((keyscheme-map (keymaps:define-keyscheme-map
       "custom" (list :import %slot-value%)
       nyxt/keyscheme:emacs
       (list "C-s" 'search-buffer
             "C-c y" 'autofill
             ;; "" '
             ;; "" '
             ;; "" '
             ;; "" '
             ;; "" '
             ;; "" '
             ;; "" '
             ;; "" '
             ;; "" '
             )))))

;; (define-configuration (:prompt-buffer)
;;   ((default-modes (append (list :) %slot-value%))
;;    ))
