(menu-bar-mode -1)
(tool-bar-mode -1)

(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook
          (lambda () (interactive)
            (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)
(c-set-offset 'substatement-open 0)

;; window move
(windmove-default-keybindings)

;; ace-window
(global-set-key (kbd "M-p") 'ace-window)

(which-key-mode)

(provide 'setup-general)
