;; search-engines.lisp - Search engine declaration
(in-package #:nyxt-user)

(defvar *my-search-engines*
  (list
   '("Yahoo!" "https://search.yahoo.com/search?p=~a" "https://search.yahoo.com")
   '("Python3" "https://docs.python.org/3/search.html?q=~a"
     "https://docs.python.org/3")
   '("doi" "https://dx.doi.org/~a" "https://dx.doi.org/")
   '("Carrot2" "https://search.carrot2.org/#/search/web/~a/pie-chart" "https://search.carrot2.org")
   '("BoardReader" "https://boardreader.com/s/~a" "https://boardreader.com")

   '("EmacsWiki" "https://www.emacswiki.org/emacs/Search?action=index&match=~a" "https://www.emacswiki.org")
   '("Nix: Options" "https://search.nixos.org/options?channel=unstable&from=0&size=50&sort=relevance&type=packages&query=~a" "https://search.nixos.org")
   '("Home-manager: Options" "https://mipmip.github.io/home-manager-option-search/?query=~a" "https://mipmip.github.io/home-manager-option-search")
   '("Wayback Machine" "https://web.archive.org/web/*/~a" "https://web.archive.org")
   '("meta⠶cpan" "https://metacpan.org/search?size=20&q=~a" "https://metacpan.org")
   '("Last.fm" "https://www.last.fm/search/tracks?q=~a" "https://www.last.fm")
   '("Shodan" "https://www.shodan.io/search?query=~a" "https://www.shodan.io")
   ;; '("" " " "")
))

(define-configuration :context-buffer
  ;; Go through the search engines above and make-search-engine out of them
  ((search-engines
    (append %slot-default%
            (mapcar
             (lambda (engine) (apply 'make-search-engine engine))
             *my-search-engines*)))))

;; (define-configuration :context-buffer
;;   ((search-engines
;;    (pushnew
;;      (make-instance 'search-engine
;;         :name "Carrot2" :shortcut "c2"
;;         :search-url "https://search.carrot2.org/#/search/web/~a/pie-chart"
;;         :fallback-url "https://search.carrot2.org")
;;      %slot-value%))))

;; (defvar *my-search-engines*
;;   (list
;;    '("python3" "https://docs.python.org/3/search.html?q=~a"
;;      "https://docs.python.org/3")

;;    '("doi" "https://dx.doi.org/~a" "https://dx.doi.org/"))
;;   "Search engines list")
;; (defvar *my-search-engines*
;;   (list
;;    '("google" "https://google.com/search?q=~a" "https://google.com")
;;    '("python3" "https://docs.python.org/3/search.html?q=~a"
;;      "https://docs.python.org/3")
;;    '("doi" "https://dx.doi.org/~a" "https://dx.doi.org/"))
;;   "List of search engines.")

;; (define-configuration context-buffer
;;   "Go through the search engines above and make-search-engine out of them."
;;   ((search-engines
;;     (append
;;      (mapcar (lambda (engine) (apply 'make-search-engine engine))
;;              *my-search-engines*)
;;      %slot-default%))))
