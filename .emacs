;; Installed Packages:

;; smex
;; gruber-darker
;; haskell-mode
;; hindent

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;; Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)



;; Appearance
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(set-default-font "Ubuntu Mono-14")

;; Scratch
(setq initial-scratch-message ";; There is only one thing that I dread: not to be worthy of my sufferings.")

;; ido mode
(ido-mode 1)

;; Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Window Display
(setq frame-title-format "")
;; (set-window-margins (selected-window) 10 10)

;; Scrolling
(setq scroll-step            1
      scroll-conservatively  10000)

;; Emacs Saves
(setq emacs-saves-file-directory "~/.emacs-saves/")
(setq backup-directory-alist
      `((".*" . , emacs-saves-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" , emacs-saves-file-directory t)))

;; org-journal
(require 'org-journal)

;; Haskell
(require 'haskell-mode)
(setq haskell-process-log t)
;;(setq haskell-process-type 'cabal-new-repl)
;;(add-hook 'haskell-mode-hook 'haskell-indent-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;;(add-hook 'haskell-mode-hook 'haskell-doc-mode)
(add-hook 'haskell-mode-hook 'hindent-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (gruber-darker)))
 '(custom-safe-themes
   (quote
    ("47ec21abaa6642fefec1b7ace282221574c2dd7ef7715c099af5629926eb4fd7" default)))
 '(package-selected-packages (quote (org-journal gruber-darker-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
