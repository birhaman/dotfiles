;; completion.el - Completion modular system

;; Комбинации закрытия скобок (electric-pairs)
 (electric-pair-mode t) ;; Подбор парной скобки
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1)) ;; Отключение расстановки отступов после перехода на другую строку

(after! evil-surround
 (global-evil-surround-mode t))

;; Настройки модулей автодополнения
(after! company
  (add-to-list 'company-backends '())
  (setq company-global-modes '(not text-mode term-mode markdown-mode gfm-mode)
        company-selection-wrap-around t
        company-show-numbers t
        company-tooltip-align-annotations t
        company-idle-delay 0.5
        company-minimum-prefix-length 2
        company-require-match nil)
  ;; (define-key company-active-map (kbd "C-n") 'company-select-next)
  ;; (define-key company-active-map (kbd "C-p") 'company-select-previous)
  ;; :hook (lsp-mode . company-mode)
  ;; :bind (:map company-active-map ("<tab>" . company-complete-selection))
  ;; (:map lsp-mode-map ("<tab>" . company-indent-or-complete-common)))
)

;; (after! corfu
;;   (use-package corfu
;;     :config
;;   (setq corfu-cycle t
;;     corfu-quit-at-boundary 'separator
;;     corfu-preselect-first nil)
;;     ;; corfu-auto t
;;     ;; corfu-auto-prefix 2 ;; Keys required to insert to make suggestion
;;     ;; corfu-auto-delay 0.0
;;   (global-corfu-mode nil))
;;   (add-hook 'eshell-mode-hook
;;           (lambda () (setq-local corfu-auto nil)
;;             (corfu-mode nil))))
;; (global-corfu-mode nil)
;; (after! vertico
;;   )

(after! orderless
   (setq completion-styles '(orderless basic)
      completion-category-defaults nil
      completion-category-overrides '((file (styles . (partial-completion))))))

;; (after! citar
;;   (setq citar-file-parser-functions
;;    '(citar-file-parser-default
;;      citar-file-parser-triplet)))

  ;; (add-hook 'org-mode-hook #'citar-capf-setup)

;; (with-eval-after-load 'embark
;;   (require 'citar-embark)
;;   (citar-embark-mode))
