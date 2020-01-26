;; hide pc name at top of the frame
(setq frame-title-format "emacs")
;; get rid of scroll bar, menu bar and tool bar
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
;; full-screen mode
(toggle-frame-fullscreen)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
    (package-initialize)

    
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "b46ee2c193e350d07529fcd50948ca54ad3b38446dcbd9b28d0378792db5c088" default)))
 '(display-line-numbers-type (quote relative))
 '(display-time-24hr-format t)
 '(display-time-mode t)
 '(global-display-line-numbers-mode t)
 '(org-agenda-files
   (quote
    ("c:/Users/JohnW/Development/Courses_Spring20/TODO.org")))
 '(package-selected-packages
   (quote
    (helm org-bullets magit spacemacs-theme auto-complete powerline solarized-theme evil dracula-theme)))
 '(show-paren-mode t))
    
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 100 :width normal)))))

    ;; Make sure scrolling is line by line
    (setq scroll-step           1
	scroll-conservatively 10000)

    ;; Move all back-up files to the same location
    (setq
    backup-by-copying t      ; don't clobber symlinks
    backup-directory-alist
	'(("." . "~/.emacs_auto_backup/"))    ; don't litter my fs tree
    delete-old-versions t
    kept-new-versions 6
    kept-old-versions 2
    version-control t)       ; use versioned backups


;; Show matching parentheses and brackets
(show-paren-mode 1)

;; Open emacs with vertical two panes
(split-window-right)

;; Enabling MELPA-stable
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;;  Enabling MELPA
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; Turn off alarm beep
(setq visible-bell 1)


;; highlight the current line globally
;; (global-hl-line-mode)
(global-hl-line-mode 1)
;; (set-face-attribute hl-line-face nil :underline t)

;; show column number as well
(column-number-mode)

;; Using evil mode
(require 'evil)
(evil-mode 1)

;; shoe time in the mode line
(display-time-mode 1)


(require 'powerline)
(powerline-center-evil-theme)

;; Auto completion
(global-auto-complete-mode t)

;; For magit
(global-set-key (kbd "C-x g") 'magit-status)

;; open this path in dired at start up
(setq initial-buffer-choice "C:/Users/JohnW/Development")

;; adding the TODO file to org agenda automatically
(setq org-agenda-files '("C:/Users/JohnW/Development/Courses_Spring20/TODO.org"))

;; Org Mode
(require 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)

(setq org-todo-keywords
      '((sequence "TODO" "STARTED(s!)" "|" "DONE")))

(setq org-log-done 'time)

;; 
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
