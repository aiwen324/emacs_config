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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wombat)))
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 1) ((control)))))
 '(package-selected-packages
   (quote
    (racket-mode adjust-parens company-math company auctex)))
 '(preview-gs-command "x:/Program Files (x86)/gs/gs8.71/bin/GSWIN32C.EXE")
 '(preview-image-type (quote png))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(define-abbrev-table 'global-abbrev-table '(
    ("beta" "¦Â")
    ("alpha" "¦Á")
    ("inf" "¡Þ")
    ("right" "¡ú")
    ("left" "¡û")
    ("lambda" "¦Ë")
    ))
(abbrev-mode t) ; turn on abbrev mode


(global-linum-mode t) ; show line number
(column-number-mode t) ; show column number
(global-company-mode 1) ; enable company mode


;; make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4) ; or any other preferred value
;; Always need to do this after reset tab-width
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
;; make tab key call indent command or insert tab character,
;; depending on cursor position
(setq-default tab-always-indent nil)
(setq backward-delete-char-untabify-method 'hungry)




; Use MELPA
(require 'package)
(add-to-list 'package-archives
			 '("melpa" . "http://melpa.org/packages/")
			 t)

;; automatically enable the racket-unicode input method
;; in racket-mode and racket-repl-mode buffers
(add-hook 'racket-mode-hook      #'racket-unicode-input-method-enable)
(add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)

;; Globally use math-company package
;; (add-hook 'after-init-hook 'global-company-mode)

;; local configuration for TeX modes
;; (defun my-latex-mode-setup ()
;;   (setq-local company-backends
;;               (append '((company-math-symbols-latex company-latex-commands))
;;                       company-backends)))

;; (add-hook 'tex-mode-hook 'my-latex-mode-setup)

;; If you are using `AUCTeX` you might need to use `TeX-mode-hook` instead:

;; (add-hook TeX-mode-hook 'my-latex-mode-setup)
