;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Silas Curfman"
      user-mail-address "silas.curfman@stw-technic.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;; (setq doom-font (font-spec :family "Fira Code" :size 14 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 16))
;;
(setq doom-them 'doom-dracula)

;; (setq doom-font (font-spec :family "Source Code Pro" :size 16 :weight 'normal :width 'condensed)
;;       doom-variable-pitch-font (font-spec :family "Source Code Pro" :size 16))
(setq doom-font (font-spec :family "Cascadia Code" :size 14 :weight 'normal :width 'ultra-condensed)
      doom-variable-pitch-font (font-spec :family "Cascadia Code" :size 14))

(setq doom-themes-enable-bold t
      doom-themes-enable-italic t)
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
;; Specify both a dark and light theme, like so and Doom will choose which one
;; to load based on your system light/dark setting:
;;
;;   (setq doom-theme '(doom-one   . doom-one-light))   ; (DARK . LIGHT)
;;
;; If you want more pro-active theme switching based on OS light/dark mode, look
;; up the `auto-dark' package.

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

(setq window-divider-default-places t
      window-divider-default-right-width 3
      window-divider-default-bottom-width 3)

(window-divider-mode 1)

(custom-set-faces!
  '(window-divider :foreground "black")
  '(window-divider-first-pixel :foreground "black")
  '(window-divider-last-pixel :foreground "black")
  ;; For terminal (TTY) Emacs, which uses vertical-border instead:
  '(vertical-border :foreground "white"))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;; (setq org-directory "~/org/gtd/"
;;       org-roam-directory (file-truename "~/org/roam/"))


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `with-eval-after-load' block, otherwise Doom's defaults may override your
;; settings. E.g.
;;
;;   (with-eval-after-load 'PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look them up).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Additional Personal Configurations

;; SGC Customizations & Notes
;; + use load! to bring in my custom agendafile paths and my agile style agenda settings
;; + DO NOT use GTD packages such as trevoke org-gtd etc.  Just use vanilla agenda with my customizations and follow GTD principals in general.
;; + org roam directory != org-directory, see above entry for both org-directory and org-roam path
;; + Fleeting / Unsorted notes in GTD => ~/org/gtd/inbox.org (one file)
;; + Fleeting / Unsorted notes in ROAM => ~/org/roam/daily/YYYY-MM-DD.org (new file for every day, process these like you would GTD inbox, then leave out of UI graph)
(load! "+myagendafiles.el")
(load! "+capture.el")
(load! "+agile.el")
(use-package! selected-window-accent-mode
  :config
  (setq selected-window-accent-fringe-thickness 6
        selected-window-accent-custom-color "SystemButtonText")
  (selected-window-accent-mode 1))
