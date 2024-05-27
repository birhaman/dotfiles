;; perl.lang.cf.el - Perl params

(after! perl
  (mapc (lambda (pair)
       (if (eq (cdr pair) 'perl-mode)
           (setcdr pair 'cperl-mode)))
     (append auto-mode-alist interpreter-mode-alist))
  (add-hook 'cperl-mode-hook 'lsp-deferred)
  )
