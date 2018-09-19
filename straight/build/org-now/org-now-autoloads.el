;;; org-now-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "org-now" "org-now.el" (0 0 0 0))
;;; Generated autoloads from org-now.el

(autoload 'org-now "org-now" "\
Display \"now\" buffer.

\(fn)" t nil)

(autoload 'org-now-refile-to-now "org-now" "\
Refile current entry to the `org-now' entry.

\(fn)" t nil)

(autoload 'org-now-refile-to-previous-location "org-now" "\
Refile current entry to its previous location.
Requires the entry to have a \"refiled_from\" property whose
value is a `read'able outline path list or an Org UUID.  The
property is removed after refiling.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-now" '("org-now-")))

;;;***

(provide 'org-now-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-now-autoloads.el ends here
