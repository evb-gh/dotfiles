;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Eugeniu Botnaru"
      user-mail-address "enbotnaru@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
;; (setq doom-font (font-spec :family "FiraCode Nerd Font" :size 15 :style "Retina"))
;;      doom-variable-pitch-font (font-spec :family "FiraCode Nerd Font" :size 16 :style "Retina"))
(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 16)
      doom-variable-pitch-font (font-spec :family "JetBrainsMono Nerd Font" :size 16))


;; (setq doom-font (font-spec :family "Mononoki Nerd Font Mono" :size 16)
;;       doom-variable-pitch-font (font-spec :family "Ubuntu Nerd Font" :size 16))
      ;;doom-variable-pitch-font (font-spec :family "Mononoki Nerd Font Mono" :size 16 :style "Italic"))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;; (setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; Start emacs in full screen mode
(toggle-frame-fullscreen)

;; Display battery indicator
(display-battery-mode 1)

;; deft dir
;; (setq deft-directory "~/org/")

;; Set org-roam directory
;; (setq org-roam-directory "~/roam")

;; Set F12 key to display og-agenda
(global-set-key (kbd "<f12>") 'org-agenda)

(setq org-agenda-files (directory-files-recursively "~/org/" "\\.org$") )

(setq projectile-project-search-path '("~/src/"))

;;(setq spray-wpm 165
;;      spray-height 700)

;; TODO decited if you need a diary file
;; (setq diary-file "~/lbry/dates.org")

(load! "+org.el")
(load! "+anki.el")
(load! "+mu4e.el")

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
