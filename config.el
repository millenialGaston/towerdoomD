;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-
(defun disable-tls3 (orig-fn &rest args)
  (require 'gnutls)
  (let ((old-gnutls-algorithm-priority gnutls-algorithm-priority))
    (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
    (unwind-protect
      (apply orig-fn args)
      (setq gnutls-algorithm-priority old-gnutls-algorithm-priority))))
(advice-add #'package-refresh-contents :around #'disable-tls3)
(load-file "~/macs/towerdoom.el")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-document-title ((t (:inherit default :family "Iosevka Nerd" :height 2.0 :underline nil))))
 '(org-level-1 ((t (:inherit default :weight bold :family "Iosevka Nerd" :height 1.7))))
 '(org-level-2 ((t (:inherit default :weight bold :family "Iosevka Nerd" :height 1.5))))
 '(org-level-3 ((t (:inherit default :weight bold :family "Iosevka Nerd" :height 1.25))))
 '(org-level-4 ((t (:inherit default :weight bold :family "Iosevka Nerd" :height 1.1))))
 '(org-level-5 ((t (:inherit default :weight bold :family "Iosevka Nerd"))))
 '(org-level-6 ((t (:inherit default :weight bold :family "Iosevka Nerd"))))
 '(org-level-7 ((t (:inherit default :weight bold :family "Iosevka Nerd"))))
 '(org-level-8 ((t (:inherit default :weight bold :family "Iosevka Nerd")))))
