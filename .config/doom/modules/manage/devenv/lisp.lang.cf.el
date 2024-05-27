;; elisp.el - Lisp environment
;; (after! paredit
;;   )
;; (after! async-await

;;   )

;; Hooks
(defun greek-lambda-replacement-hook ()
    (font-lock-add-keywords nil `(("\\<lambda\\>"
       (0 (progn (compose-region (match-beginning 0) (match-end 0)
                ,(make-char 'greek-iso8859-7 107))
                 nil))))))
(add-hook 'emacs-lisp-mode-hook 'greek-lambda-replacement-hook)
