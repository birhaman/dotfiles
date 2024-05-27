;; snippets.el – Snippet environment

;; ;; # Шаблоны и сниппеты
;; (require 'tempo)
;;  (defun tempo-space ()
;;   (interactive)
;;   (if (tempo-expand-if-complete)
;;       nil
;;     (insert " ")))
;; (load-file "~/.emacs.d/props/snippets/org-snippets.el")

;; (require 'tempel)

;; (require 'abbrev-hook)


;; (require 'aas) ;; Auto-activating snippets
;;   (aas-set-snippets 'org-cdlatex-mode
;;     ;; set condition!
;;     :cond #'texmathp ; expand only while in math
;;     "sec" "\section{}
;;            \label{}"
;;     "On" "O(n)"
;;     "O1" "O(1)"
;;     "Olog" "O(\\log n)"
;;     "Olon" "O(n \\log n)"
;;     ;; Use YAS/Tempel snippets with ease!
;;     "amax" '(tempel "\\argmax_{" p "}") ; Tempel snippet shorthand form
;;     ;; bind to functions!
;;     ";ig" #'insert-register
;;     ";call-sin"
;;     (lambda (angle) ; Get as fancy as you like
;;       (interactive "sAngle: ")
;;       (insert (format "%s" (sin (string-to-number angle))))))

;;   (add-hook 'org-cdlatex-mode-hook 'aas-mode)
;;   ;; Disable snippets by redefining them with a nil expansion
;; ;  (aas-set-snippets 'latex-mode
;; ;    "supp" nil))

;; (require 'dabbrev)
;; (setq dabbrev-case-fold-search t) ;; Keeping character case right

;; (use-package yasnippet
;;   :hook ((text-mode
;;           prog-mode
;;           conf-mode
;;           snippet-mode) . yas-minor-mode))
;; (setq yas-snippet-dir "~/.emacs.d/props/snippets")
