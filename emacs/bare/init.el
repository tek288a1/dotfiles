;; Make startup faster by reducing the frequency of garbage
;; collection.
(setq gc-cons-threshold (* 50 1000 1000))

(require 'package)

;; (if (file-exists-p (expand-file-name "config.el" user-emacs-directory))
;;     (load-file (expand-file-name "config.el" user-emacs-directory))
;;   (org-babel-load-file (expand-file-name "config.org" user-emacs-directory)))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(load custom-file)


(setq package-archives '(("melpa"     . "https://melpa.org/packages/")
			 ("org"       . "http://orgmode.org/elpa/")
			 ("gnu"       . "http://elpa.gnu.org/packages/")
			 ("marmalade" .  "http://marmalade-repo.org/packages/")))
(package-initialize)
;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                          ("melpa" . "http://melpa.org/packages/")
;;                          ("org" . "http://orgmode.org/elpa/")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(defun packages-require (&rest packs)
  "Install and load packages in `packs`. If the package is not available, install it automatically."
  (mapc (lambda (package) (unless (package-installed-p package) (package-install package))) packs))
	  
(packages-require
 'paredit
 'rainbow-delimiters
 'company
 )

(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (paredit-mode t)
	    (rainbow-delimiters-mode t)
	    (show-paren-mode 1)
	    ))





(use-package delight
  :ensure t)

(use-package use-package-ensure-system-package
  :ensure t)

;; Themes ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; stop asking if custom themes are safe
(setq custom-safe-themes t)
;;(load-theme 'modus-vivendi t)

;; Source of this theme toggle (adaptations by me):
;; https://emacs.stackexchange.com/questions/24088/make-a-function-to-toggle-themes
(defvar tk/light-theme 'modus-operandi)
(defvar tk/dark-theme 'modus-vivendi)
(defvar tk/current-theme 'modus-vivendi)

;; disable other themes before loading new one
(defadvice load-theme (before theme-dont-propagate activate)
  "Disable theme before loading new one."
  (mapc #'disable-theme custom-enabled-themes))

(defun tk/next-theme (theme)
  (if (eq theme 'default)
      (disable-theme 'default)
    (progn
      (load-theme theme t)))
  (setq tk/current-theme theme))

(defun tk/toggle-theme ()
  (interactive)
  (cond ((eq tk/current-theme tk/light-theme) (tk/next-theme tk/dark-theme))
	((eq tk/current-theme tk/dark-theme) (tk/next-theme tk/light-theme))))
(global-set-key (kbd "C-c M-t") 'tk/toggle-theme)


(setq inhibit-startup-message t)
(setq frame-title-format "TaEmaX")
(scroll-bar-mode -1)
(setq initial-buffer-choice t)
(setq initial-scratch-message "")
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(menu-bar-mode -1)

;; the blinking cursor is nothing, but an annoyance
(blink-cursor-mode -1)

;; disable the annoying bell ring
(setq ring-bell-function 'ignore)


;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
(setq frame-title-format
      '("" invocation-name " Prelude - " (:eval (if (buffer-file-name)
                                                    (abbreviate-file-name (buffer-file-name))
                                                  "%b"))))

;; show the cursor when moving after big movements in the window
(use-package beacon
  :ensure t)

(beacon-mode +1)

;; show available keybindings after you start typing
(use-package which-key
  :ensure t)

(which-key-mode +1)

(bind-key "s-C-<left>"  'shrink-window-horizontally)
(bind-key "s-C-<right>" 'enlarge-window-horizontally)
(bind-key "s-C-<down>"  'shrink-window)
(bind-key "s-C-<up>"    'enlarge-window)


(defun vsplit-other-window ()
  "Splits the window vertically and switches to that window."
  (interactive)
  (split-window-vertically)
  (other-window 1 nil))
(defun hsplit-other-window ()
  "Splits the window horizontally and switches to that window."
  (interactive)
  (split-window-horizontally)
  (other-window 1 nil))
(bind-key "C-x 2" 'vsplit-other-window)
(bind-key "C-x 3" 'hsplit-other-window)


(use-package switch-window
	     :ensure t)
(bind-key "C-z" 'switch-window)

(use-package buffer-move
	     :ensure t)
(global-set-key (kbd "H-s-k") 'buf-move-up)
(global-set-key (kbd "H-s-j") 'buf-move-down)
(global-set-key (kbd "H-s-h") 'buf-move-left)
(global-set-key (kbd "H-s-l") 'buf-move-right)


;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


(use-package exec-path-from-shell
	     :ensure t)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(use-package helm
	     :ensure t)
(helm-mode 1)
(helm-autoresize-mode 1)
(setq helm-split-window-in-side-p
      t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-m") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-h f") 'helm-apropos)
(global-set-key (kbd "C-h r") 'helm-info-emacs)
(global-set-key (kbd "C-h C-l") 'helm-locate-library)

(use-package server
	     :config
	     (server-start))

(set-frame-parameter (selected-frame) 'alpha '(90 . 80))
(add-to-list 'default-frame-alist '(alpha . (90 . 80)))

(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque."
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))

(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
		    ((numberp (cdr alpha)) (cdr alpha))
		    ;; Also handle undocumented (<active> <inactive>) form.
		    ((numberp (cadr alpha)) (cadr alpha)))
	      100)
	 '(90 . 50) '(100 . 100)))))
(global-set-key (kbd "C-M-S-t") 'toggle-transparency)

(use-package helm-themes
  :ensure t)
(global-set-key (kbd "s-t") 'helm-themes)

;;Line wrapping
(global-visual-line-mode 1) ; 1 for on, 0 for off.
