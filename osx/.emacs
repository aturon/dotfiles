(setenv "PATH" "usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/usr/X11/bin:/Applications/typesafe-stack/bin/")

(add-to-list 'load-path "/Applications/typesafe-stack/misc/scala-tool-support/emacs/")
(require 'scala-mode-auto)

(add-to-list 'load-path "/Users/turon/Software/")
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

;(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/")
;(require 'magit)

;(add-to-list 'load-path "/Users/turon/Software/apel-10.8/")

;(load-file "/Users/turon/Software/geiser-0.1.2/elisp/geiser.el")

;(add-to-list 'load-path "/Users/turon/Software/elscreen-1.4.6/")
;(load "elscreen" "ElScreen" t)

;(add-to-list 'load-path "/Users/turon/Software/elscreen-color-theme-0.0.0/")
;(load "elscreen-color-theme" "ElScreenColorTheme" t)

(add-to-list 'load-path "/Users/turon/Software/sml-mode-4.1/")
(autoload 'sml-mode "sml-mode" "Major mode for editing SML." t)
(autoload 'run-sml "sml-proc" "Run an inferior SML process." t)
(setq auto-mode-alist
   (cons '("\\.sml" . sml-mode) auto-mode-alist))

(add-to-list 'load-path "/Users/turon/Software/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)

(add-to-list 'load-path "/Users/turon/Software/emacs-color-theme-solarized")
(require 'color-theme-solarized)
(color-theme-solarized-dark)

;(global-set-key (kbd "C-x g") 'magit-status)

(add-hook 'text-mode-hook 
  (lambda () (flyspell-mode 1))) 
(add-hook 'markdown-mode-hook 
  (lambda () (flyspell-mode 1)))

(set-default-font "Inconsolata-12")