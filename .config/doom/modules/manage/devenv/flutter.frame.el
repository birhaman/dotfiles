;; flutter.frame.el - Flutter framework
(use-package dart-mode
  :hook (dart-mode . flutter-test-mode))
(add-hook 'dart-mode-hook 'lsp-deferred)
