;; prompts.el
(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
         kill-buffer-query-functions)
  inhibit-startup-screen t

  confirm-kill-emacs nil
  confirm-nonexistent-file-or-buffer nil
)
