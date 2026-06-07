;;; vague-theme.el --- A muted dark theme -*- lexical-binding: t; -*-

;; Author: voidprtwashere
;; Version: 1.0.0
;; Keywords: faces themes
;; SPDX-License-Identifier: MIT

;;; Commentary:
;; A low-contrast, muted dark theme built from a custom palette.
;; Works in vanilla Emacs and Doom Emacs.

;;; Code:

(deftheme vague "A muted, low-contrast dark theme.")

(let ((class '((class color) (min-colors 89)))
      ;; --- palette ---
      (black     "#141415")
      (shadow    "#1c1c24")
      (graphite  "#252530")
      (onyx      "#333738")
      (muted     "#606079")
      (gray      "#878787")
      (white     "#cdcdcd")
      (yellow    "#f3be7c")
      (amber     "#e8b589")
      (gold      "#e0a363")
      (peach     "#c48282")
      (red       "#d8647e")
      (storm     "#405065")
      (lilac     "#c3c3d5")
      (cyan      "#aeaed1")
      (magenta   "#bb9dbd")
      (aqua      "#b4d4cf")
      (lavender  "#90a0b5")
      (teal      "#9bb4bc")
      (blue      "#6e94b2")
      (iris      "#7e98e8")
      (green     "#7fa563")
      ;; --- diff ---
      (diff-add    "#293125")
      (diff-change "#41362a")
      (diff-delete "#3b242a")
      (diff-text   "#6d583e")
      ;; --- ansi brights/dims (used here and there) ---
      (br-red    "#e08398")
      (br-green  "#99b782")
      (br-yellow "#f5cb96")
      (br-blue   "#8ba9c1")
      (dim-black "#18181f"))

  (custom-theme-set-faces
   'vague

   ;; --- basics ---
   `(default                    ((,class (:background ,black :foreground ,white))))
   `(cursor                     ((,class (:background ,iris))))
   `(region                     ((,class (:background ,storm :extend t))))
   `(highlight                  ((,class (:background ,graphite))))
   `(hl-line                    ((,class (:background ,shadow :extend t))))
   `(fringe                     ((,class (:background ,black :foreground ,muted))))
   `(secondary-selection        ((,class (:background ,onyx))))
   `(shadow                     ((,class (:foreground ,muted))))
   `(link                       ((,class (:foreground ,blue :underline t))))
   `(link-visited               ((,class (:foreground ,magenta :underline t))))
   `(match                      ((,class (:background ,gold :foreground ,black))))
   `(error                      ((,class (:foreground ,red :weight bold))))
   `(warning                    ((,class (:foreground ,yellow :weight bold))))
   `(success                    ((,class (:foreground ,green :weight bold))))
   `(escape-glyph               ((,class (:foreground ,peach))))
   `(trailing-whitespace        ((,class (:background ,diff-delete))))
   `(vertical-border            ((,class (:foreground ,graphite))))
   `(window-divider             ((,class (:foreground ,graphite))))
   `(window-divider-first-pixel ((,class (:foreground ,graphite))))
   `(window-divider-last-pixel  ((,class (:foreground ,graphite))))
   `(minibuffer-prompt          ((,class (:foreground ,iris :weight bold))))

   ;; --- line numbers ---
   `(line-number              ((,class (:background ,black :foreground ,muted))))
   `(line-number-current-line ((,class (:background ,shadow :foreground ,white :weight bold))))

   ;; --- mode line ---
   `(mode-line          ((,class (:background ,graphite :foreground ,white :box (:line-width 1 :color ,onyx)))))
   `(mode-line-inactive ((,class (:background ,shadow :foreground ,muted :box (:line-width 1 :color ,graphite)))))
   `(mode-line-emphasis ((,class (:foreground ,iris :weight bold))))
   `(mode-line-highlight ((,class (:foreground ,gold))))
   `(header-line        ((,class (:background ,shadow :foreground ,lilac))))

   ;; --- font-lock (syntax) ---
   `(font-lock-builtin-face           ((,class (:foreground ,peach))))
   `(font-lock-comment-face           ((,class (:foreground ,muted :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,muted))))
   `(font-lock-constant-face          ((,class (:foreground ,amber))))
   `(font-lock-doc-face               ((,class (:foreground ,gray :slant italic))))
   `(font-lock-function-name-face     ((,class (:foreground ,blue))))
   `(font-lock-keyword-face           ((,class (:foreground ,magenta))))
   `(font-lock-negation-char-face     ((,class (:foreground ,red))))
   `(font-lock-preprocessor-face      ((,class (:foreground ,iris))))
   `(font-lock-string-face            ((,class (:foreground ,green))))
   `(font-lock-type-face              ((,class (:foreground ,yellow))))
   `(font-lock-variable-name-face     ((,class (:foreground ,lavender))))
   `(font-lock-warning-face           ((,class (:foreground ,red :weight bold))))
   ;; newer (Emacs 29+) faces
   `(font-lock-property-name-face     ((,class (:foreground ,teal))))
   `(font-lock-property-use-face      ((,class (:foreground ,teal))))
   `(font-lock-function-call-face     ((,class (:foreground ,blue))))
   `(font-lock-variable-use-face      ((,class (:foreground ,lavender))))
   `(font-lock-number-face            ((,class (:foreground ,gold))))
   `(font-lock-operator-face          ((,class (:foreground ,cyan))))
   `(font-lock-bracket-face           ((,class (:foreground ,gray))))
   `(font-lock-delimiter-face         ((,class (:foreground ,gray))))
   `(font-lock-punctuation-face       ((,class (:foreground ,gray))))

   ;; --- isearch / search ---
   `(isearch        ((,class (:background ,gold :foreground ,black :weight bold))))
   `(isearch-fail   ((,class (:background ,red :foreground ,black))))
   `(lazy-highlight ((,class (:background ,storm :foreground ,white))))

   ;; --- parens ---
   `(show-paren-match    ((,class (:background ,storm :foreground ,white :weight bold))))
   `(show-paren-mismatch ((,class (:background ,red :foreground ,black :weight bold))))

   ;; --- completion (vertico / corfu / orderless / company) ---
   `(completions-common-part      ((,class (:foreground ,iris :weight bold))))
   `(completions-first-difference ((,class (:foreground ,gold))))
   `(vertico-current              ((,class (:background ,graphite :extend t))))
   `(corfu-default                ((,class (:background ,shadow :foreground ,white))))
   `(corfu-current                ((,class (:background ,graphite :foreground ,white))))
   `(corfu-border                 ((,class (:background ,onyx))))
   `(orderless-match-face-0       ((,class (:foreground ,iris :weight bold))))
   `(orderless-match-face-1       ((,class (:foreground ,magenta :weight bold))))
   `(orderless-match-face-2       ((,class (:foreground ,green :weight bold))))
   `(orderless-match-face-3       ((,class (:foreground ,gold :weight bold))))
   `(company-tooltip                  ((,class (:background ,shadow :foreground ,white))))
   `(company-tooltip-selection        ((,class (:background ,graphite))))
   `(company-tooltip-common           ((,class (:foreground ,iris :weight bold))))
   `(company-scrollbar-bg             ((,class (:background ,shadow))))
   `(company-scrollbar-fg             ((,class (:background ,onyx))))

   ;; --- diff / magit ---
   `(diff-added            ((,class (:background ,diff-add :foreground ,green :extend t))))
   `(diff-removed          ((,class (:background ,diff-delete :foreground ,red :extend t))))
   `(diff-changed          ((,class (:background ,diff-change :foreground ,yellow :extend t))))
   `(diff-refine-added     ((,class (:background ,green :foreground ,black))))
   `(diff-refine-removed   ((,class (:background ,red :foreground ,black))))
   `(diff-refine-changed   ((,class (:background ,gold :foreground ,black))))
   `(diff-header           ((,class (:background ,shadow :foreground ,lilac))))
   `(diff-file-header      ((,class (:foreground ,iris :weight bold))))
   `(diff-hunk-header      ((,class (:background ,graphite :foreground ,gold))))
   `(magit-diff-added              ((,class (:background ,diff-add :foreground ,green :extend t))))
   `(magit-diff-added-highlight    ((,class (:background ,diff-add :foreground ,br-green :extend t))))
   `(magit-diff-removed            ((,class (:background ,diff-delete :foreground ,red :extend t))))
   `(magit-diff-removed-highlight  ((,class (:background ,diff-delete :foreground ,br-red :extend t))))
   `(magit-diff-context            ((,class (:foreground ,muted :extend t))))
   `(magit-diff-context-highlight  ((,class (:background ,shadow :foreground ,gray :extend t))))
   `(magit-diff-hunk-heading           ((,class (:background ,graphite :foreground ,lilac :extend t))))
   `(magit-diff-hunk-heading-highlight ((,class (:background ,onyx :foreground ,white :extend t))))
   `(magit-section-heading         ((,class (:foreground ,gold :weight bold))))
   `(magit-section-highlight       ((,class (:background ,shadow :extend t))))
   `(magit-branch-local            ((,class (:foreground ,blue))))
   `(magit-branch-remote           ((,class (:foreground ,green))))
   `(magit-hash                    ((,class (:foreground ,muted))))
   `(magit-tag                     ((,class (:foreground ,gold))))
   `(magit-log-author              ((,class (:foreground ,peach))))

   ;; --- git-gutter / diff-hl ---
   `(git-gutter:added      ((,class (:foreground ,green))))
   `(git-gutter:deleted    ((,class (:foreground ,red))))
   `(git-gutter:modified   ((,class (:foreground ,yellow))))
   `(diff-hl-insert        ((,class (:background ,diff-add :foreground ,green))))
   `(diff-hl-delete        ((,class (:background ,diff-delete :foreground ,red))))
   `(diff-hl-change        ((,class (:background ,diff-change :foreground ,yellow))))

   ;; --- org-mode ---
   `(org-level-1     ((,class (:foreground ,iris :weight bold :height 1.3))))
   `(org-level-2     ((,class (:foreground ,magenta :weight bold :height 1.2))))
   `(org-level-3     ((,class (:foreground ,blue :weight bold :height 1.1))))
   `(org-level-4     ((,class (:foreground ,teal :weight bold))))
   `(org-level-5     ((,class (:foreground ,green))))
   `(org-level-6     ((,class (:foreground ,gold))))
   `(org-level-7     ((,class (:foreground ,peach))))
   `(org-level-8     ((,class (:foreground ,lavender))))
   `(org-document-title ((,class (:foreground ,white :weight bold :height 1.4))))
   `(org-todo        ((,class (:foreground ,red :weight bold))))
   `(org-done        ((,class (:foreground ,green :weight bold))))
   `(org-headline-done ((,class (:foreground ,muted))))
   `(org-link        ((,class (:foreground ,blue :underline t))))
   `(org-code        ((,class (:foreground ,amber :background ,shadow))))
   `(org-verbatim    ((,class (:foreground ,aqua))))
   `(org-block       ((,class (:background ,shadow :extend t))))
   `(org-block-begin-line ((,class (:foreground ,muted :background ,shadow :extend t))))
   `(org-block-end-line   ((,class (:foreground ,muted :background ,shadow :extend t))))
   `(org-table       ((,class (:foreground ,lilac))))
   `(org-date        ((,class (:foreground ,teal :underline t))))
   `(org-special-keyword ((,class (:foreground ,muted))))
   `(org-drawer      ((,class (:foreground ,storm))))
   `(org-agenda-date ((,class (:foreground ,blue))))
   `(org-agenda-date-today ((,class (:foreground ,iris :weight bold))))
   `(org-agenda-structure ((,class (:foreground ,magenta :weight bold))))
   `(org-scheduled   ((,class (:foreground ,green))))
   `(org-scheduled-today ((,class (:foreground ,br-green))))
   `(org-warning     ((,class (:foreground ,red :weight bold))))

   ;; --- markdown ---
   `(markdown-header-face-1   ((,class (:foreground ,iris :weight bold))))
   `(markdown-header-face-2   ((,class (:foreground ,magenta :weight bold))))
   `(markdown-header-face-3   ((,class (:foreground ,blue :weight bold))))
   `(markdown-header-face-4   ((,class (:foreground ,teal :weight bold))))
   `(markdown-bold-face       ((,class (:foreground ,white :weight bold))))
   `(markdown-italic-face     ((,class (:foreground ,white :slant italic))))
   `(markdown-code-face       ((,class (:foreground ,amber :background ,shadow))))
   `(markdown-inline-code-face ((,class (:foreground ,amber :background ,shadow))))
   `(markdown-link-face       ((,class (:foreground ,blue))))
   `(markdown-url-face        ((,class (:foreground ,muted :underline t))))
   `(markdown-pre-face        ((,class (:foreground ,aqua :background ,shadow))))
   `(markdown-blockquote-face ((,class (:foreground ,gray :slant italic))))

   ;; --- flycheck / flymake ---
   `(flycheck-error   ((,class (:underline (:style wave :color ,red)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,yellow)))))
   `(flycheck-info    ((,class (:underline (:style wave :color ,blue)))))
   `(flymake-error    ((,class (:underline (:style wave :color ,red)))))
   `(flymake-warning  ((,class (:underline (:style wave :color ,yellow)))))
   `(flymake-note     ((,class (:underline (:style wave :color ,blue)))))

   ;; --- dired ---
   `(dired-directory ((,class (:foreground ,blue :weight bold))))
   `(dired-symlink   ((,class (:foreground ,aqua))))
   `(dired-flagged   ((,class (:foreground ,red))))
   `(dired-marked    ((,class (:foreground ,gold))))
   `(dired-header    ((,class (:foreground ,iris :weight bold))))
   `(dired-ignored   ((,class (:foreground ,muted))))

   ;; --- tab-bar / tab-line ---
   `(tab-bar             ((,class (:background ,shadow :foreground ,muted))))
   `(tab-bar-tab         ((,class (:background ,black :foreground ,white :weight bold))))
   `(tab-bar-tab-inactive ((,class (:background ,shadow :foreground ,muted))))

   ;; --- which-key ---
   `(which-key-key-face            ((,class (:foreground ,gold :weight bold))))
   `(which-key-group-description-face ((,class (:foreground ,magenta))))
   `(which-key-command-description-face ((,class (:foreground ,white))))

   ;; --- misc ---
   `(tooltip      ((,class (:background ,shadow :foreground ,white))))
   `(widget-field ((,class (:background ,graphite :foreground ,white))))
   `(custom-state ((,class (:foreground ,green))))
   `(highlight-numbers-number ((,class (:foreground ,gold))))
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,iris))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,magenta))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,blue))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,green))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,gold))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,teal))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,peach))))
   `(rainbow-delimiters-unmatched-face ((,class (:foreground ,red :weight bold)))))

  ;; --- terminal / ansi colors ---
  (custom-theme-set-variables
   'vague
   `(ansi-color-names-vector
     [,graphite ,red ,green ,yellow ,blue ,magenta ,cyan ,white])))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'vague)

;;; vague-theme.el ends here
