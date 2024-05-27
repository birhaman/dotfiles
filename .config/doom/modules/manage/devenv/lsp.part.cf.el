;; Language servers


(after! lsp-mode
  (setq lsp-idle-delay 0.500
      lsp-log-io nil ;; Determines how often lsp-mode will refresh the highlights, lenses, links, etc while you type
      lsp-enable-links nil
      ;; lsp-keymap-prefix "C-c l"


      )
  (lsp-enable-which-key-integration t)

  )
  ;; Server choice
;; (defvar lsp-language-id-configuration
;;  '((scala-mode . "scala")
;;    (python-mode . "python")))

;; Syntax checking
(require 'flycheck)
(require 'eldoc)
;; Force flycheck to always use c++11 support. We use
;; the clang language backend so this is set to clang
(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-clang-language-standard "c++11")))

(setq lsp-enable-symbol-highlighting nil
      lsp-lens-enable nil
      lsp-headerline-breadcrumb-enable nil
      lsp-modeline-code-actions-enable nil
      lsp-diagnostics-provider :none
      lsp-modeline-diagnostics-enable nil
      lsp-completion-show-detail nil
      lsp-completion-show-kind nil
      )
 ;; Amount of data Emacs reads from single process
;; export LSP_USE_PLISTS | LSP_USE_HASH_TALBES =true
;; TeX
   (setq lsp-tex-server 'digestif)

   (setq lsp-completion-provider :capf
         read-process-output-max (* 1024 1024)
         lsp-eldoc-enable-hover t)


 ;; Hooks
;; Turn flycheck on everywhere
;;(global-flycheck-mode)

;; (add-hook 'text-mode-hook (lambda ()
;;        (setq-local lsp-completion-enable nil)))

(defun corfu-lsp-setup ()
  (setq-local completion-styles '(orderless)
              completion-category-defaults nil))
 (add-hook 'lsp-mode-hook #'corfu-lsp-setup)
