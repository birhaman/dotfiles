;; ./users/main.el – About me

;; Userinfo
(setq user-full-name "Birhaman"
      user-mail-address "media-cefia.bazaar@erine.eu"
      user-matrix-address "@birhaman:pub.solar")

;; Elfeed
(after! elfeed
  (setq elfeed-feeds
   '(("https://www.sobyte.net/index.xml")
     ("https://nullprogram.com/feed/")
     ("https://nixos.org/blog/announcements-rss.xml")
     ("https://feeds.feedblitz.com/baeldung&x=1")
     ("https://eax.me/feed/"))))
