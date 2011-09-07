(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(geiser-mode-autodoc-p nil)
 '(geiser-racket-binary "/home/turon/software/racket/bin/racket")
 '(ispell-highlight-p t)
 '(safe-local-variable-values (quote ((TeX-master . t) (TeX-master . "linlog"))))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(fill-column 78)
)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "microsoft" :family "Consolas")))))

(add-hook 'LaTeX-mode-hook (lambda ()
                                 (TeX-fold-mode 1))) ;turn on
                                                     ;tex-fold-mode
                                                     ;by default

(add-hook 'LaTeX-mode-hook 'TeX-PDF-mode) ;turn on pdf-mode.  AUCTeX
                                         ;will call pdflatex to
                                         ;compile instead of latex.

(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode) ;turn on math-mode by
                                            ;default

;(add-hook 'LaTeX-mode-hook 'flyspell-mode) ;turn on flyspell mode by
;                                          ;default

(add-hook 'LaTeX-mode-hook (lambda ()
                            (TeX-fold-mode 1)))

;; (set-default-font "-schumacher-clean-medium-r-normal--0-0-75-75-c-0-iso8859-1")

;; (load "/usr/local/ProofGeneral/generic/proof-site.el")

;; (add-to-list 'load-path "/home/turon/go/misc/emacs/go-mode-load.el" t)
;; (require 'go-mode-load)

;(setq default-tab-width 2)

;; (setq load-path (cons (expand-file-name "/home/turon/software/ott/ott_distro_0.10.17/emacs") load-path))
;; (require 'ottmode)

(require 'color-theme)
(load "/home/turon/software/color-theme-solarized.el")
(color-theme-initialize)
;(color-theme-scintilla)
(color-theme-solarized-light)
;(color-theme-solarized-dark)
;(color-theme-salmon-font-lock)

(load-file "/home/turon/software/geiser/elisp/geiser.el")
(load-file "/home/turon/software/paredit.el")

(setq auto-mode-alist (cons '("\\.sls$" . scheme-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.markdown$" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.tex$" . latex-mode) auto-mode-alist))

(add-to-list 'load-path "/home/turon/typesafe-stack/misc/scala-tool-support/emacs")

(require 'scala-mode-auto)

;(setq flyspell-issue-welcome-flag nil) ;; fix for Ubuntu 10.10 problem
;(setq-default flyspell-mode t)

(load "/home/turon/software/elscreen-1.4.6/elscreen" "ElScreen" t)
(load "/home/turon/software/elscreen-color-theme-0.0.0/elscreen-color-theme" "ElScreenColorTheme" t)
(require 'elscreen-color-theme)

(menu-bar-mode nil)

(setq x-select-enable-clipboard t)

(require 'magit)
(global-set-key (kbd "C-x C-g") 'magit-status)
;(global-set-key [f5] 'recompile)

(defun revert-all-buffers ()
    "Refreshes all open buffers from their respective files."
    (interactive)
    (dolist (buf (buffer-list))
      (with-current-buffer buf
        (when (and (buffer-file-name) (not (buffer-modified-p)))
          (revert-buffer t t t) )))
    (message "Refreshed open files."))

(add-to-list 'load-path "/home/turon/software/ensime_2.9.0-1-0.6.1/elisp/")
;(require 'ensime)
;(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
