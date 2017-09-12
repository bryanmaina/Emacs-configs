;; Font family
;; (set-default-font "DejaVu Sans Mono Bold")
;; (set-default-font "Lucida Sans Bold")
;; (set-default-font "Source Code Pro Medium Bold")

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-face-attribute 'default nil :height 100)
;; (defun set-fonts (frame)
;;   (select-frame frame)
;;   (set-default-font "Fira Code Retina"))

;; (if (daemonp)
;;     (add-hook 'after-make-frame-functions #'set-fonts)
;;   (set-default-font "Fira Code Retina"))

(defun set-fonts (frame)
  (select-frame frame)
  (set-default-font "DejaVuSansMono"))

(if (daemonp)
    (add-hook 'after-make-frame-functions #'set-fonts)
  (set-default-font "DejaVuSansMono"))
