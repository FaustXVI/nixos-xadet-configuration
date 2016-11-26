(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
             (package-initialize)

(defvar my-packages '(better-defaults
                      projectile
                      clojure-mode
                      cider
                      auto-complete
                      rainbow-delimiters
                      haskell-mode))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(set-face-attribute 'region nil :background "#999")
