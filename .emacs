;; emacs configuration file

;; Enable package retrieval from the Internet repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                     ("marmalade" . "http://marmalade-repo.org/packages/")
                     ("melpa" . "http://melpa.org/packages/")))

;; Maximize emacs window at startup
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))


