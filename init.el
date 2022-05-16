;;melpa
(require 'package)
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;; (add-to-list 'package-archives
;;              '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(setq package-selected-packages '(lsp-mode lsp-ui lsp-treemacs helm-lsp lsp-pyright projectile hydra flycheck company avy which-key helm-xref dap-mode json-mode realgud ein))
(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))

(load-theme 'manoj-dark t)

;; custom
(add-to-list 'load-path "~/.emacs.d/custom")
(require 'setup-general)
(require 'setup-helm)
;(require 'setup-helm2)
(require 'setup-editing)
(require 'setup-projectile)
;(require 'setup-python)
;(require 'setup-lsp-cpp)
(require 'setup-lsp-js)
;(require 'setup-debugger)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(js2-mode virtualenv jupyter web-mode lsp-mode lsp-ui lsp-treemacs helm-lsp lsp-pyright projectile hydra flycheck company avy which-key helm-xref dap-mode json-mode realgud)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
