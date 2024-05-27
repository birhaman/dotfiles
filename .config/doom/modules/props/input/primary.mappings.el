;; primary.mappings.el

;; – Global keymappings
(map! :map global-map
 :nvi "C-x C-c" #'comment-eclipse
 :nvi "C-x M-b" #'consult-buffer-other-frame
 ;; Emacs bindings
 :nvi "C-x C-s" #'save-buffer
 :nvi "C-x C-f" #'find-file
 :nvi "C-S-s" #'isearch-backward

 :nv "P" #'duplicate-region
 :nv "q" #'undo :nv "r" #'undo-redo
 :nv "H-t" #'transpose-sexps

 :v "u" #'evil-upcase
 :v "l" #'evil-downcase
 :v "H-i" #'evil-substitute
 :v "d" #'delete-region
 :v "s" #'evil-surround-edit
 :v "C-w" #'kill-region
 :i "C-p" #'yank

 ;; Навигация
 :nv "SPC w a" #'avy-goto-char


 )

(map! :map doom-leader-map
 :n "SPC q l" #'doom/load-session)
;; Org-mode

(map! :map isearch-mode-map
  :localleader
  "C-S-s" #'isearch-repeat-backward)

(map! :map org-mode-map :after org
  "C-x C-M-f" #'consult-org-roam-file-find
  "C-c C-e" #'org-edit-special)

(map! :map org-super-agenda-header-map
  :n "<tab>" #'origami-toggle-node)

;; Minibuffer
(map! :map vertico-mode-map :after vertico
  :i "C-p" #'yank
  :i "C-<backspace>" #'sp-backward-delete-word)

;; Corfu
(map! :map corfu-map
 :ni "S-SPC" #'corfu-insert-separator
 :ni "TAB" #'corfu-next
 :ni "S-TAB" #'corfu-previous
  )

;; Dired
(map! :after dired :map dired-mode-map
 :nv "+f" #'dired-create-empty-file
 :nv "+d" #'dired-create-directory
 :nv "+s" #'dired-do-symlink
 :nv "+h" #'dired-do-hardlink
 ; Навигацияя, буфер обмена
 :nv "a" #'evil-append
 :nv "q" #'dired-up-directory
 :nv "N" #'dired-number-of-marked-files
 :nv "U" #'dired-unmark-all-marks
 :nv "v" #'evil-visual-state
 :nv "C-x w" #'dired-ranger-copy
 :nv "C-x x" #'dired-ranger-move
 :nv "C-x y" #'dired-ranger-paste

 :nv "SPC r g" #'consult-ripgrep

 :nv "r"   #'dired-do-rename
 :nv "*u"  #'dired-upcase
 :nv "*l"  #'dired-downcase

  ; Шифрование
 :nv "=ec" #'epa-dired-do-encrypt
 :nv "=de" #'epa-dired-do-decrypt
 :nv "=:gs" #'epa-dired-do-sign

 :nv "C-M-w" #'wdired-change-to-wdired-mode
  )

(map! :map global-map
 :n "SPC i j" #'skk-mode
 :n "SPC i x" #'pyim-activate
 )

(map! :map epa-key-list-mode-map
 :n "m" #'epa-mark-key
 :n "u" #'epa-unmark-key
  )

(map! :map kana-mode-map :after kana
 "[" #'kana-loop-dec
 "]" #'kana-loop-inc
 "1" #'kana-first
 "d" #'kana-details
 "j" #'kana-jump
 "n" #'kana-next
 "p" #'kana-previous
 "q" #'kana-quit
 "r" #'kana-toggle-random
 "s" #'kana-say-question
 "t" #'kana-toggle-kana
 "v" #'kana-validate)
(map! :map skk-mode-map)
