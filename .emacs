;; load emacs 24's package system. Add MELPA repository.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (dart-mode markdown-mode dockerfile-mode transpose-frame mo-git-blame typescript-mode flycheck yaml-mode projectile flycheck-golangci-lint go-mode protobuf-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq make-backup-files nil) ; stop creating ~backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

;; emacs x y opens x and y side by side
(setq split-height-threshold nil)
(setq split-width-threshold 0)

;; show column numbers
(setq column-number-mode t)

;; recognize camelCase
(add-hook 'prog-mode-hook 'subword-mode)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("BUILD" . python-mode))
(setq frame-title-format '("" invocation-name " %f"))
(projectile-mode)


(set-face-attribute 'default (selected-frame) :height 75)


;;(add-hook 'after-init-hook #'global-flycheck-mode)

;; remove stuff in fullscreen mode
(tool-bar-mode -1)
(scroll-bar-mode -1)
