(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(jabber-account-list (quote (("john.northrup@gmail.com" (:network-server . "talk.google.com") (:port . 5223) (:connection-type . ssl)))))
 '(show-paren-mode t))
(load "~/.emacs.d/init.el")
 (color-theme-zenburn)
  ;; This is where we get funky
(defvar mswindows-p (string-match "windows" (symbol-name system-type)))
(defvar macosx-p (string-match "darwin" (symbol-name system-type)))
(defvar linux-p (string-match "linux" (symbol-name system-type)))
(if macosx-p 
    (progn
      (setq mac-command-modifier 'meta)
      (set-default-font "-apple-Andale_Mono-medium-normal-normal-*-*-*-*-*-m-0-iso10646-1")
      ))
(if linux-p 
    (progn
      (setq mac-command-modifier 'meta)
      (set-default-font "-Misc-Fixed-Medium-R-Normal--11-100-75-75-C-60-ISO8859-1")
      ))
