;; turn on visible bell
(setq visible-bell t)
;; do not create backup files
(setq make-backup-files nil)

;; Install Dracula theme
(use-package dracula-theme
  :ensure t)

;; Install Evil
(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll t)	; Enable Scroll up with C-u
  (setq evil-auto-indent nil)	           ; Disable auto indent
  :config
  (evil-mode))

;; Remap Escape key
(use-package evil-escape
  :ensure t
  :init
  (setq-default evil-escape-delay 0.2)
  (setq-default evil-escape-key-sequence "jk")
  (evil-escape-mode))

;; Install Evil for Org-mode
(use-package evil-org
  :ensure t
  :after org
  :config  
  (require 'evil-org-agenda)
  (evil-org-set-key-theme '(textobjects insert navigation additional shift todo heading))
  (add-hook 'org-mode-hook  (lambda ()
    (evil-org-mode)))
  (evil-org-agenda-set-keys))

;; Install magit
(use-package magit
  :ensure t
  )

;; Set dracula theme
(load-theme 'dracula t)
;; disable tool bar
(tool-bar-mode -1)
