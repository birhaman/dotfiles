;; auth.el - Auth sources

(setq auth-sources '((:source "/wpa/.private/creds/.authinfo")))

    ;; EPA
(setf epa-pinentry-mode 'loopback)
(setq browse-url-browser-function 'browse-url-generic
       ;; browse-url-generic-program "nyxt")
       browse-url-generic-program "vivaldi")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-hook 'before-save-hook 'delete-trailing-whitespace)
