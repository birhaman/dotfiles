;; org-module.def.el

;; Paragraph divide
(defun new-scratch-pad ()
  "Create a new org-mode buffer for random stuff."
   (interactive)
 (let ((tab-bar-index (tab-bar--tab-index-by-name "Kladblok")))
  (if tab-bar-index
      (progn
        (tab-bar-select-tab (+ tab-bar-index 1))
        (switch-to-buffer "kladblok")
        (olivetti-mode t))
    (progn
      (tab-bar-new-tab)
      (tab-bar-rename-tab "Kladblok")
      (let ((buffer (generate-new-buffer "kladblok")))
        (switch-to-buffer buffer)
        (setq buffer-offer-save t)
        (org-mode)
        (olivetti-mode t))))))
(defun xah-unfill-paragraph ()
  (interactive)
  (let ((fill-column most-positive-fixnum))
    (fill-paragraph)))

;; Org-mode dwim
(defun ar/org-insert-link-dwim ()
  "Like `org-insert-link' but with personal dwim preferences."
  (interactive)
  (let* ((point-in-link (org-in-regexp org-link-any-re 1))
         (clipboard-url (when (string-match-p "^http" (current-kill 0))
                          (current-kill 0)))
         (region-content (when (region-active-p)
                           (buffer-substring-no-properties (region-beginning)
                                                           (region-end)))))
    (cond ((and region-content clipboard-url (not point-in-link))
           (delete-region (region-beginning) (region-end))
           (insert (org-make-link-string clipboard-url region-content)))
          ((and clipboard-url (not point-in-link))
           (insert (org-make-link-string
                    clipboard-url
                    (read-string "title: "
                                 (with-current-buffer (url-retrieve-synchronously clipboard-url)
                                   (dom-text (car
                                              (dom-by-tag (libxml-parse-html-region
                                                           (point-min)
                                                           (point-max))
                                                          'title))))))))
          (t
           (call-interactively 'org-insert-link)))))

;; Calendar entries
(defun me-count-calendar-entries (grouped-entries)
  (mapcar (lambda (entry) (cons (car entry) (length (cdr entry)))) grouped-entries))

(defun me-scale-calendar-entries (grouped-entries &optional scale-max)
  (let* ((count (me-count-calendar-entries grouped-entries))
         (count-max (apply #'max (mapcar (lambda (o) (if (car o) (cdr o) 0)) count))))
    (mapcar (lambda (entry)
              (cons (car entry)
                    (/ (* 1.0 (or scale-max 1.0) (cdr entry)) count-max)))
            count)))

(defun me-scale-calendar-entries-logarithmically (grouped-entries &optional scale-max)
  (let* ((count (me-count-calendar-entries grouped-entries))
         (count-max (apply #'max (mapcar (lambda (o) (if (car o) (cdr o) 0)) count))))
    (mapcar (lambda (entry)
              (cons (car entry)
                    (/ (* 1.0 (or scale-max 1.0) (log (cdr entry))) (log count-max))))
            count)))

(defvar me-calendar-count-scaled nil "Values to display.")

(defun me-calendar-heat-map (month year indent)
  (when me-calendar-count-scaled
    (dotimes (i 31)
      (let ((date (list month (1+ i) year))
            (count-scaled (assoc-default (format "%04d-%02d-%02d" year month (1+ i))
                                         me-calendar-count-scaled)))
        (when count-scaled
          (calendar-mark-visible-date
           date
           (intern (format "calendar-scale-%d" count-scaled))))))))

(advice-add #'calendar-generate-month :after #'me-calendar-heat-map)
;(advice-remove #'calendar-generate-month #'me-calendar-heat-map)

(defun me-calendar-visualize (values)
  (setq me-calendar-count-scaled values)
  (calendar))

(defun me-calendar-visualize-journal-entries ()
  (interactive)
  (me-calendar-visualize
   (mapcar
    (lambda (o)
      (cons
       (car o)
       (ceiling (+ 1 (* 7.0 (cdr o))))))
    (me-scale-calendar-entries
     (seq-group-by #'me-journal-date
                   (cdr (pcsv-parse-file "~/emacs.d/logs/emacscal/entries.csv")))))))
