;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; FONTS

(setq doom-font (font-spec :family "Iosevka Extended" :size 26))
(setq doom-variable-pitch-font (font-spec :family "Noto Serif" :size 16))

;; COLORSCHEME

(setq doom-theme 'doom-city-lights)

;; LINE NUMBERS

(setq display-line-numbers-type t)

;; ORG DIRECTORY

(setq org-directory "~/nexus/")
(setq org-roam-directory (file-truename "~/nexus"))
(org-roam-db-autosync-mode)

;; DO NOT SHOW LINE NUMBERS IN ORG MODE

(dolist (mode '(org-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; CENTER SCREEN IN ORG MODE

(defun efs/org-mode-visual-fill ()
  (setq visual-fill-column-width 80
        visual-fill-column-center-text t
        org-adapt-indentation nil
        org-indent-mode nil)
 ;; (mixed-pitch-mode)
  (visual-fill-column-mode 1))

(use-package! visual-fill-column
  :hook (org-mode . efs/org-mode-visual-fill))

;; USE VISUAL LINE MODE

(setq evil-respect-visual-line-mode t)

;; CUSTOM ORG BULLETS

(use-package! org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("⏣" "●" "○" "◐" "◑" "◓" "◒")))

;; CITAR CONFIG

(setq! citar-bibliography '("~/nexus/library.bib"))
(setq! citar-library-paths '("~/Dropbox/Library/")
       citar-notes-paths '("~/nexus/"))
(setq citar-file-open-functions
      (list
       (cons "pdf" #'citar-file-open-external)
       (cons "html" #'citar-file-open-external)
       (cons t #'find-file)))

;; SETUP TRANSPARENCY

(set-frame-parameter nil 'alpha-background 75)
(add-to-list 'default-frame-alist '(alpha-background . 75))

;; LAUNCH EMACS MAXIMIZED

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; DONT REMEMBER WHAT IT DOES

(org-babel-do-load-languages
 'org-babel-load-languages
 '((c . t)))

(after! flyspell
  (setq flyspell-lazy-idle-seconds 2))

;; CUSTOM KEYBINDINGS
(map! :leader
      :desc "Insert Citation" "n c" #'citar-insert-citation)

