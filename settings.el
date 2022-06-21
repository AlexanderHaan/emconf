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
  (setq evil-want-C-u-scroll t)		; Enable Scroll up with C-u
  :config
  (evil-mode))

;; Remap Escape key
(use-package evil-escape
  :ensure t
  :init
  (setq-default evil-escape-delay 0.2)
  (setq-default evil-escape-key-sequence "jj")
    (evil-escape-mode))

;; Install Evil for Org-mode
(use-package evil-org
  :ensure t
  :after org
  :hook (org-mode . (lambda () evil-org-mode))
  :config
  (require 'evil-org-agenda)
  (evil-org-set-key-theme '(textobjects insert navigation additional shift todo heading))
  (evil-org-agenda-set-keys))

;; Set dracula theme
(load-theme 'dracula t)
;; disable tool bar
(tool-bar-mode -1)
