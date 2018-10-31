(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
			 ("GNU" . "http://elpa.gnu.org/packages/")
			 ("MELPA" . "https://melpa.org/packages/")
			 ("ORG" . "https://orgmode.org/elpa/")
			 ("SC" . "http:/joseito.republika.pl/sunrise-commander/")))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (switch-window helm dmenu spacemacs-theme exwm use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
