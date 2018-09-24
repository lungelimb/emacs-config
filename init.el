;;; init.el -- Bootstrapper -*- coding: utf-8 -*-
;; dont flash default colors on startup
;; also could hide toolbar etc so it dont flicker around
(when window-system
  (set-foreground-color "#ffffff")
  (set-background-color "#263238"))

;;; Efficient tangling
;; From http://www.holgerschurig.de/en/emacs-efficiently-untangling-elisp/
(defun my-tangle-section-canceled ()
  "Return t if the current section header was DISABLED, else nil."
  (save-excursion
    (if (re-search-backward "^\\*+\\s-+\\(.*?\\)?\\s-*$" nil t)
        (progn
                                        ;(message "FOUND '%s'" (match-string 1)) ; debug msg
          (string-prefix-p "DISABLED" (match-string 1)))
      nil)))

(defun my-tangle-config-org (orgfile elfile)
  "This function will write all source blocks from =config.org= into
=config.el= that are ...

- not marked as :tangle no
- have a source-code of =emacs-lisp=
- doesn't have the todo-marker DISABLED"
  (let* (;; list where we cobble together body parts
         (body-list ())
         ;; disable special file handlers when loading .org files
         (file-name-handler-alist nil)
         ;; monster-regexp to extract pieces out of an .org file
         (org-babel-src-block-regexp (concat
                                      ;; (1) indentation                 (2) lang
                                      "^\\([ \t]*\\)#\\+begin_src[ \t]+\\([^ \f\t\n\r\v]+\\)[ \t]*"
                                      ;; (3) switches
                                      "\\([^\":\n]*\"[^\"\n*]*\"[^\":\n]*\\|[^\":\n]*\\)"
                                      ;; (4) header arguments
                                      "\\([^\n]*\\)\n"
                                      ;; (5) body
                                      "\\([^\000]*?\n\\)??[ \t]*#\\+end_src")))
    (with-temp-buffer
      (insert-file-contents orgfile)
      (goto-char (point-min))
      (while (re-search-forward org-babel-src-block-regexp nil t)
        (let ((lang (match-string 2))
              (args (match-string 4))
              (body (match-string 5))
              (canc (my-tangle-section-canceled)))
          (when (and (string= lang "emacs-lisp")
                     (not (string-match-p ":tangle\\s-+no" args))
                     (not canc))
            (add-to-list 'body-list body)))))
    (with-temp-file elfile
      (insert (format ";;; %s -- Emacs config -*- coding: utf-8; lexical-binding: t; -*- \n" (file-name-nondirectory elfile)))
      (insert (format ";;; Don't edit this file, edit %s instead!\n\n" orgfile))
      (apply 'insert (reverse body-list))
      (insert (format "\n;;; %s ends here" (file-name-nondirectory elfile))))
    ))

(defun my-load-file (fname)
  "This loads an elisp configuration file. If an .org file exists,
it will be first untangled. If an byte-compiled file does NOT exist,
it will be created. After this, the normal loading logic happens."
  (let* (;; disable garbage collection while we do heavy string work
	 (gc-cons-threshold most-positive-fixnum)
         ;; fname with various extensions
         (sansfile (expand-file-name (file-name-sans-extension fname) user-emacs-directory))
         (orgfile (concat sansfile ".org"))
         (elfile  (concat sansfile ".el"))
         (elcfile (concat sansfile ".elc")))
    (when (file-exists-p orgfile)
      (when (or (not (file-exists-p elfile))
                (file-newer-than-file-p orgfile elfile))
        ;; (message "TANGLE %s to %s" orgfile elfile)
        (my-tangle-config-org orgfile elfile)))
    (when (or (not (file-exists-p elcfile))
              (file-newer-than-file-p elfile elcfile))
      ;; (message "BYTE-COMPILE %s to %s " elfile elcfile)
      (byte-compile-file elfile))
    ;; (message "LOADING %s" elfile)
    (load elfile nil 'nomessage)))

;; Silence byte-compiler warnings
(setq byte-compile-warnings '(not free-vars unresolved noruntime lexical make-local))
;; Tangle and load configuration
;; Restrictions:
;; -- compiled .elc file is basically unused/unusable
;; -- can't :tangle /to/file either
;; best way to actually reload config is to somehow diff it and call eval-last-sexp upon changes
;(require 'bug-hunter)
(my-load-file "config")

;;; Simpler logic
;; Let's start emacs up quietly.
;; (advice-add #'display-startup-echo-area-message :override #'ignore)
;; (setq inhibit-startup-message t
;;       inhibit-startup-echo-area-message user-login-name
;;       inhibit-default-init t
;;       initial-major-mode 'fundamental-mode
;;       initial-scratch-message nil
;;       mode-line-format nil)

;; Don't attempt to find/apply special file handlers to files loaded during startup.
;; (let ((file-name-handler-alist nil))
;;   ;; If config is pre-compiled, then load that
;;   (if (file-exists-p (expand-file-name "emacs.elc" user-emacs-directory))
;;       (load-file (expand-file-name "emacs.elc" user-emacs-directory))
;;     ;; Otherwise use org-babel to tangle and load the configuration
;;     (require 'org)
;;     (org-babel-load-file (expand-file-name "emacs.org" user-emacs-directory))))

;;; init.el ends here
