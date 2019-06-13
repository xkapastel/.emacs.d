;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dart-format-on-save t)
 '(package-selected-packages
   (quote
    (company js2-mode rust-mode dart-mode markdown-mode paredit undo-tree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook
 'dired-mode-hook
 (lambda ()
   (dired-hide-details-mode 1)))

(add-hook
 'emacs-lisp-mode-hook
 (lambda ()
   (eldoc-mode 1)
   (paredit-mode 1)))

(add-hook
 'js-mode-hook
 (lambda ()
   (setq js-indent-level 2
         js-switch-indent-offset 0)))

(menu-bar-mode 0)
(column-number-mode)
(defalias 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-undo-tree-mode)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 2)
