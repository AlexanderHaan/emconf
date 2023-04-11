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

;; Install whick key
(use-package which-key
  :ensure t
  )
(which-key-mode)

;; disable tool bar
(tool-bar-mode -1)

;; Hide *bold* and /italic/ symbols
(setq org-hide-emphasis-markers t)
;; Replace hyphon for bullet in lists
(font-lock-add-keywords 'org-mode
			'(("^ *\\([-]\\) "
			 (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
;; Use different unicode bullets for headings
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
;; Use different heading sizes
(let* ((variable-tuple
       (cond  ((x-list-fonts "Ubuntu") '(:font "Ubuntu"))
	      ((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
	      (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (base-font-color     (face-foreground 'default nil 'default))
       (headline           `(:inherit default :weight bold :foreground ,base-font-color)))

  (custom-theme-set-faces
   'user
   `(org-level-8 ((t (,@headline ,@variable-tuple))))
   `(org-level-7 ((t (,@headline ,@variable-tuple))))
   `(org-level-6 ((t (,@headline ,@variable-tuple))))
   `(org-level-5 ((t (,@headline ,@variable-tuple))))
   `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
   `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
   `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
   `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
   `(org-document-title ((t (,@headline ,@variable-tuple :height 2.0 :underline nil))))))
;; Configure font for different elements
(custom-theme-set-faces
 'user
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-info ((t (:foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
 '(org-link ((t (:foreground "royal blue" :underline t))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
 '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch))))))
;; Use different font styles for different text
(add-hook 'org-mode-hook 'variable-pitch-mode)
(add-hook 'org-mode-hook 'org-indent-mode)

;; set indentation to 2 spaces
(add-hook 'java-mode-hook (setq c-basic-offset 2))
