;; nix.lang.cf.el - Nix language params

;; Nix expressions support
(after! nix
 (with-eval-after-load 'lsp-mode
  (lsp-register-client
     (make-lsp-client
     :new-connection (lsp-stdio-connection "nixd")
     :major-modes '(nix-mode)
     :priority 0
     :server-id 'nixd)))
  (setq lsp-nix-nil-formatter "nixpkgs-fmt")
 (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode))
 (add-hook 'nix-mode-hook #'lsp-deferred))
