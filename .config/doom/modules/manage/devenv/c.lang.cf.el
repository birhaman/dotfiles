;; c.lang.cf.el - Pure C
(require 'ciao)
(require 'cc-chainsaw)
(defun ciao-goto-symbol ()
  (interactive)
  (deactivate-mark)
  (ring-insert find-tag-marker-ring (point-marker))
  (or (and (require 'rtags nil t)
           (rtags-find-symbol-at-point))
      (and (require 'semantic/ia)
           (condition-case nil
               (semantic-ia-fast-jump (point))
             (error nil)))))

(load-file (concat pre-config-dir "/modules/driven/stm32-emacs/stm32.el"))


(require 'stm32)
