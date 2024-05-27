;; foreign.input.el
(setq abbrev-mode t
      save-abbrevs 'silently)

(load (concat module-dir "/props/input/cyrillic-colemak.el"))
(load (concat module-dir "/props/input/arabic-standard.el"))
;; Reverse-im
(after! reverse-im
  (use-package reverse-im
   :config
  (setq reverse-im-input-methods '("cyrillic-colemak" "greek" "arabic-standard"))
  (reverse-im-mode t)))

;; Japanese input
(after! ddskk
  (use-package! ddskk
   :config
  (setq skk-jisyo "$SKK_DICT_DIR/SKK-JISYO.L")))
;; [辞書登録] あいふ: (Регистрация комбинации в словарь)


;; Pyim
(require 'pyim)
;; (after! pyim
;;   )
;;
