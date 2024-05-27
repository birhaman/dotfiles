;; auctex.def.el
;; Масштабирование формул во встроенной интерпретации LaTeX
(defun org-latex/text-scale-latex-previews ()
  "Adjust the size of latex preview fragments when changing the
buffer's text scale."
  (pcase major-mode
    ('latex-mode
     (dolist (ov (overlays-in (point-min) (point-max)))
       (if (eq (overlay-get ov 'category)
               'preview-overlay)
           (org-latex/text-scale--resize-fragment ov))))
    ('org-mode
     (dolist (ov (overlays-in (point-min) (point-max)))
       (if (eq (overlay-get ov 'org-overlay-type)
               'org-latex-overlay)
           (org-latex/text-scale--resize-fragment ov))))))

(defun org-latex/text-scale--resize-fragment (ov)
  (overlay-put
   ov 'display
   (cons 'image
         (plist-put
          (cdr (overlay-get ov 'display))
          :scale (+ 1.10 (* 0.25 text-scale-mode-amount))))))

(add-hook 'text-scale-mode-hook #'org-latex/text-scale-latex-previews)

    (setq org-startup-with-inline-images nil)
    (setq org-startup-with-latex-preview t)

(after! face-remap
 (defadvice preview-inherited-face-attribute (after preview-inherit-local-face nil activate)
  "Scale preview images with respect to buffer-local face"
  (when (and text-scale-mode (eq attribute :height))
    (setq ad-return-value (* (expt text-scale-mode-step text-scale-mode-amount) ad-return-value)))))
