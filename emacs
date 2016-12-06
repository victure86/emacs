;;LOAD_PATH       
(add-to-list 'load-path' "~/.emacs.d/site-lisp")

b;
;;auto load cscope and ctags
(require 'xcscope)
(setq tags-file-name "./TAGS")

;;color theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)

;;replace yes/no with y/n
(fset 'yes-or-no-p 'y-or-n-p)

;;highlight
;;(require 'hl-line-settings)

;;80 column
(setq default-fill-column 80)

;;match parentheses
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;show column number
(setq column-number-mode t)
(setq line-number-mode t)

;;set kill ring buffer number
(setq kill-ring-max 200)

;;auto decompression when open a file
(auto-compression-mode 1)

;;indent
(setq c-basic-offset 4)
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())
(loop for x downfrom 40 to 1 do
(setq tab-stop-list (cons (* x 4) tab-stop-list)))

;;show time
;;(display-time-mode 1)
;;(setq display-time-24hr-format t)
;;(setq display-time-day-and-date t)

;;backup directory
(setq backup-directory-alist '(("." . "~/.emacs.tmp")))

;;enable yasnippet
(add-to-list 'load-path' "~/.emacs.d/plugins/yasnippet")
;;(require 'yasnippet)
;;(yas/global-mode 1)

;;auto complete
(add-to-list 'load-path' "~/.emacs.d/plugins/auto-complete")
(add-to-list 'load-path' "~/.emacs.d/plugins/popup-el")
(add-to-list 'load-path' "~/.emacs.d/plugins/fuzzy-el")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/dict")
(ac-config-default)
;;use tab
(setq ac-dwim t)
;;enable fuzzy
(setq ac-fuzzy-enable t)
