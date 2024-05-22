(in-package #:nyxt-user)

(define-configuration :reduce-tracking-mode
  ((query-tracking-parameters
    (append '("utm_source" "utm_medium" "utm_campaign" "utm_term" "utm_content")
            %slot-value%)
    :doc "This is to strip UTM-parameters off all the links.
          Upstream Nyxt doesn't have it because it may break some websites.")
   (preferred-user-agent
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36"
    :doc "Mimic Chrome on MacOS.")))
