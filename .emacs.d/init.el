(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize) ; using MELPA as supplement package manager

(setq inhibit-startup-message t) ; it's annoying

;; load external modules
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

;; auctex and preview-latex
(add-hook 'LaTeX-mode-hook
	  ( lambda()
	    (setq TeX-engine 'xetex) ; use xetex as default engine
	    (setq TeX-save-query nil) ; auto save before compile
	    (setq Tex-master nil) ; emacs will ask for master file
	    (setq preview-gs-command "/usr/local/bin/gs") ; to solve a problem
	    ("PATH" "/usr/local/bin:/Library/TeX/texbin:$PATH" t)) )

;; jedi setup
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; move auto-generated lines to seperate file, keep my space clean
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
