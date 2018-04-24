;; emacs configuration file

;; Run helm at startup - whatever it is...
;; (require 'helm)

;; Enable package retrieval from the Internet repositories
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                     ("marmalade" . "https://marmalade-repo.org/packages/")
                     ("melpa" . "https://melpa.org/packages/")))

;; Maximize emacs window at startup
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(menu-bar-mode nil))

;; ----------------------------------------------------------------

(require 'package)
;; User may be using a non standard \`package-user-dir'.
;; Modify \`package-directory-list' instead of \`package-user-dir'
;; in case the user starts Helm from a non-ELPA installation.
(unless (file-equal-p package-user-dir "~/.emacs.d/elpa")
  (add-to-list 'package-directory-list (directory-file-name
                                        (file-name-directory
                                         (directory-file-name default-directory)))))

(setq package-load-list '((helm-core t) (helm t) (async t) (popup t)))
(package-initialize)
(add-to-list 'load-path (file-name-directory (file-truename "$0")))
(setq default-frame-alist '((vertical-scroll-bars . nil)
                            (tool-bar-lines . 0)
                            (menu-bar-lines . 0)
                            (fullscreen . nil)))
(blink-cursor-mode -1)
(require 'helm-config)
(helm-mode 1)
(define-key global-map [remap find-file] 'helm-find-files)
(define-key global-map [remap occur] 'helm-occur)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
(define-key global-map [remap execute-extended-command] 'helm-M-x)
(unless (boundp 'completion-in-region-function)
  (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
  (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))
(add-hook 'kill-emacs-hook #'(lambda () (and (file-exists-p "$CONF_FILE") (delete-file "$CONF_FILE"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 128 :width normal)))))

;; additional helm configuration
(defvar helm-M-x-fuzzy-match t)
(defvar helm-buffers-fuzzy-matching)
(defvar helm-recentf-fuzzy-match)
(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t)
(setq helm-recentf-fuzzy-match t)
(global-set-key "\C-x\ \C-r" 'helm-recentf)
(global-set-key (kbd "C-k") 'kill-whole-line)

;; The below commands do not work:
;; (package-install 'better-defaults)
;; (require 'better-defaults)
;; I get the following information: 
;; Required package 'better-defaults' is disabled
;; Instead I downloaded the package from github.com and added it manually:   
(add-to-list 'load-path "/home/pgniewek/.emacs.d/more-packages/better-defaults-master")
(require 'better-defaults)

;; The below config option hangs emacs upon startup ... :(
;; (add-hook 'after-init-hook 'global-company-mode)



