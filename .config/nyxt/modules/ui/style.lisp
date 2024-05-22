;; style.lisp - UI style
(in-package #:nyxt-user)

;; (define-configuration :browser
;;   ((theme (make-instance 'theme:theme
;;      :dark-p t
;;      :background-color "#191919" :on-background-color "white"
;;      ;; :primary-color "rgb(170, 170, 170)"   :on-primary-color "black"
;;      ;; :secondary-color "rgb(100, 100, 100)" :on-secondary-color "white"
;;      ;; :accent-color "#37A8E4" :on-accent-color "black"
;;      ;; :action-color "#268bd2" :success-color "#2aa198"
;;      :warning-color "#dc322f" :highlight-color "#d33682"
;;      :codeblock-color "#222222" :text-color "#002b36"
;; ))))

;; Status buffer
(define-configuration :status-buffer
  ((style (str:concat %slot-value%
     (theme:themed-css (theme *browser*)
       ;; See the `describe-class' of `status-buffer' understand what to customize
      '("#controls" :display "none"))))))

;; (define-configuration :prompt-buffer
;;   ((style (str:concat %slot-default%
;;      (theme:themed-css
;;       '((body
;;          :background-color "black"
;;          :color "#808080")
;;         ))))))

;; Minibuffer
;; (define-configuration window
;;     ((cl-css:css
;;       '((nyxt::body :font-size "12px" :padding 0
;;                :padding-left "4px" :margin 0)))))
;; (define-configuration minibuffer
;;   ((style
;;     (str:concat
;;      %slot-default
;;      (cl-css:css
;;       '((body
;;          :background-color "black"
;;          :color "#808080")))))))

;; (define-configuration browser
;;   ((theme
;;     (make-instance 'theme:theme
;;        :background-color "#eee8d5"
;;          :primary-color "#073642"
;;        :secondary-color "#586e75"
;;
;;
;;        :contrast-text-color "#fdf6e3"))))

;; (define-configuration nyxt/mode/style:dark-mode
;;   ((style
;;     (theme:themed-css (theme *browser*)
;;       `(* :background-color ,theme:background "!important"
;;           :background-image none "!important" :color "red"
;;           "!important")
;;       `(a :background-color ,theme:background "!important"
;;         :background-image none "!important" :color "#AAAAAA"
;;         "!important"))))
;;   :doc "Notice the use of theme:themed-css for convenient theme color injection.")
