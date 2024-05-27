;; frame.el
(setq-default
 show-paren-style 'expression
 cursor-type 'bar
 indent-tabs-mode nil
 truncate-lines t)

(fringe-mode '(5 . 3))
(set-face-attribute 'vertical-border nil :foreground "#2f2f2f")

(set-frame-parameter nil 'alpha-background 55)
 (add-to-list 'default-frame-alist '(alpha-background . 63))

(setq pixel-scroll-precision-initial-velocity-factor 1)
 (pixel-scroll-precision-mode)
(display-line-numbers-mode t)
 (set-face-attribute 'line-number nil :background "2f2f2f" :foreground "#85817d")
 (set-face-attribute 'line-number-current-line nil :foreground "red")
 (add-hook 'prog-mode-hook 'display-line-numbers-mode)

 ;; (use-package 'diminish)
