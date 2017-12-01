(require 'package)
(add-to-list 'package-archives
	     '("melpa" ."https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "https://marmalade-repo.org/packages/"))
;;(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
;;  (add-to-list 'package-archives '("gnu elpa" . "https://elpa.emacs-china.org/gnu/")))
(add-to-list 'package-archives
	     '("gnu elpa" . "https://elpa.emacs-china.org/gnu/") t)
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;;; Make easier to manage packages update
;; Use package macro
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(require 'bind-key)

;; Schema validation for Emacs-lisp
(use-package validate
  :ensure t)

;; Load all "*.el" files under ~/.emacs.d/config directory
(load "~/.emacs.d/load-directory")
(load-directory "~/.emacs.d/config")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fe1682ca8f7a255cf295e76b0361438a21bb657d8846a05d9904872aa2fb86f2" "2882cf41c12276b5875879a71cc670d1468653e342586075a48ed68cfed15bea" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "d0ba371ea735abde1f92dd0f01690f4744516df66a5b84b365932e854ace644e" default)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (gradle-mode groovy-mode faustine neotree sass-mode jade-mode realgud cl-lib meghanada julia-shell julia-mode helm-ctest disaster cmake-font-lock cmake-mode company-c-headers c-eldoc zeal-at-point ag json-mode tern-context-coloring nodejs-repl php-mode emmet-mode company-web-html org-plus-contrib company-statistics expand-region iedit multiple-cursors move-text @ micgoline nlinum counsel-projectile pyvenv-mode kanban calfw haskell-mode sclang-snippets sclang-extensions material-theme 0blayout tommyh-theme leuven-theme paper-theme quasi-monochrome-theme minimal-theme github-theme flatland-theme flatland-black-theme sphinx-doc focus-autosave-mode volatile-highlights use-package undo-tree try transpose-frame restart-emacs ng2-mode js3-mode js2-mode hydra highlight-symbol highlight-indent-guides helm flycheck counsel company-tern company-emacs-eclim color-theme ace-window)))
 '(safe-local-variable-values
   (quote
    ((company-clang-arguments "-I/home/dumy/Projects/Learning_C/c-demo-projects/include1" "-I/home/dumy/Projects/Learning_C/c-demo-projects/include2")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
