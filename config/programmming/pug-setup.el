(use-package pug-mode
  :ensure t)

;; (add-hook 'after-save-hook 'pug-compile)

(add-to-list 'auto-mode-alist '("\\.pug\\'" . pug-mode))
