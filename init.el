;; Package settings
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)


(require 'org)
(setq org-config-file (concat user-emacs-directory "settings.org"))
(setq el-config-file (concat user-emacs-directory "settings.el"))

;; Function to reload org settings
(defun reload-org-settings ()
  (interactive)
  (org-babel-tangle-file org-config-file el-config-file "emacs-lisp")
  (load el-config-file))

(load el-config-file)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(tree-sitter-langs tree-sitter rust-mode magit use-package org)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "SauceCodePro Nerd Font" :foundry "outline" :slant normal :weight normal :height 108 :width normal)))))
