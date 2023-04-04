;; turn on visible bell
(setq visible-bell t)
;; do not create backup files
(setq make-backup-files nil)

;; Install magit
(use-package magit
  :ensure t
  )

;; Install rust mode
(use-package rust-mode
  :ensure t
  )

;; Install tree sitter
(use-package tree-sitter
  :ensure t
  )
(use-package tree-sitter-langs
  :ensure t
  )
(global-tree-sitter-mode)

;; disable tool bar
(tool-bar-mode -1)
