(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(magit-git-executable "/usr/local/bin/git")
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default nil :height 100)

(setenv "PATH" "usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/usr/X11/bin:/Applications/typesafe-stack/bin/")

(add-to-list 'load-path "/Applications/typesafe-stack/misc/scala-tool-support/emacs/")
(require 'scala-mode-auto)

(add-to-list 'load-path "/Applications/")
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist
   (cons '("\\.markdown" . markdown-mode) auto-mode-alist))

(show-paren-mode t)
(transient-mark-mode t)       ; make the current 'selection' visible
(global-font-lock-mode t)
(column-number-mode t)

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/")
(require 'magit)

(add-to-list 'load-path "/Users/turon/Software/apel-10.8/")

(load-file "/Users/turon/Software/geiser-0.1.2/elisp/geiser.el")

(add-to-list 'load-path "/Users/turon/Software/elscreen-1.4.6/")
(load "elscreen" "ElScreen" t)

(add-to-list 'load-path "/Users/turon/Software/elscreen-color-theme-0.0.0/")
(load "elscreen-color-theme" "ElScreenColorTheme" t)

(add-to-list 'load-path "/Applications/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)

(add-to-list 'load-path "/Applications/emacs-colors-solarized")
(require 'color-theme-solarized)
(color-theme-solarized-dark)

(global-set-key (kbd "C-x g") 'magit-status)

(add-hook 'text-mode-hook 
  (lambda () (flyspell-mode 1))) 
(add-hook 'markdown-mode-hook 
  (lambda () (flyspell-mode 1)))

