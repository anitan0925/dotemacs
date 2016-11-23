;;;; -*- mode: emacs-lisp; coding: utf-8 -*-
;;;;

;;; font-lockの設定

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(global-font-lock-mode t)

(setq default-frame-alist
      (append
       '((foreground-color . "gray")  ; 前景色
         (background-color . "black") ; 背景色
;;	 (font . "fontset-meirio") ; フォント
;;	 (font . "default") ; フォント
         (cursor-color     . "green") ; カーソル色
         (width            . 114)     ; フレーム幅(文字数)
         (height           . 44)      ; フレーム高(文字数)
         (top              . 50)      ; フレームの Y 位置(ピクセル数)
         (left             . 10)      ; フレームの X 位置(ピクセル数)
        )
 default-frame-alist))

(set-face-foreground 'font-lock-comment-face "LightSkyBlue2")
(set-face-foreground 'font-lock-comment-delimiter-face "LightSkyBlue2")
(set-face-foreground 'font-lock-string-face "LightSkyBlue2")

;; 選択領域の色
(set-face-background 'region "dark olive green")

(setq font-lock-support-mode 'jit-lock-mode)
(defface my-face-b-1 '((t (:background "gray"))) nil)
(defface my-face-b-2 '((t (:background "gray26"))) nil)
(defface my-face-u-1 '((t (:foreground "SteelBlue" :underline t))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)

(setq auto-mode-alist
      (append '(("\\.c$"    . c-mode)
  ("\\.py$"   . python-mode)
  ("\\.pyx$"  . python-mode)
  ("\\.cc$"   . c++-mode)
  ("\\.h$"    . c++-mode)
  ("\\.java$" . c++-mode)
  ("\\.smp$"  . c++-mode)
  ("\\.dat$"  . c++-mode)
  ("\\.vc$"   . makefile-mode)
  ("\\.misc$"   . makefile-mode)
  ("\\.bc$"   . makefile-mode)
  ("\\.el$"   . emacs-lisp-mode)
  ("\\.f$"    . fortran-mode)
  ("\\.F$"    . fortran-mode)
  ("\\.mss$"  . scribe-mode)
  ("\\.pl$"   . perl-mode)) auto-mode-alist))

;; リージョンに色を入れる
(setq transient-mark-mode t)

;; ツールバーを非表示
(tool-bar-mode -1)
;; メニューバーを非表示
(menu-bar-mode -1)

;; ssh
(require 'tramp)
(setq tramp-default-method "ssh")

;; load environment variables
(let ((envs '("PATH" "VIRTUAL_ENV" "GOROOT" "GOPATH")))
  (exec-path-from-shell-copy-envs envs))
