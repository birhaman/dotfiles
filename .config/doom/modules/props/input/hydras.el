;; hydras.el - Hydras

(defhydra hydra-zoom (global-map "M-<f3>")
   "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))
