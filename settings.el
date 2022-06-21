;; turn on visible bell
(setq visible-bell t)
;; do not create backup files
(setq make-backup-files nil)

(use-package dracula-theme
  :ensure t)

(load-theme 'dracula t)
