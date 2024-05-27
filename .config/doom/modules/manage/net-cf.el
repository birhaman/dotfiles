;; net-cf.el - Network management

;; (eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))
  ;; (add-to-list 'tramp-connection-properties
  ;;            (list (regexp-quote "/doas:user@host:")))
  ;; (customize-set-variable 'tramp-encoding-shell "/run/current-system/sw/bin/bash")

;; Proxies
(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10.*\\)")
     ("http"  . "103.163.53.91:64692")
     ("https" . "103.163.53.91:64692"))
   )

(setq url-http-proxy-basic-auth-storage
    (list (list "103.163.53.91:64692"
                (cons "Input your LDAP UID !" ;
                      (base64-encode-string "DXf2sxr5:2EVysff7")))))
