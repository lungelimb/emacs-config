;;; move-lines-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "move-lines" "move-lines.el" (0 0 0 0))
;;; Generated autoloads from move-lines.el

(autoload 'move-lines-up "move-lines" "\
Moves the current line or, if region is actives, the lines surrounding
region, up by N lines, or 1 line if N is nil.

\(fn N)" t nil)

(autoload 'move-lines-down "move-lines" "\
Moves the current line or, if region is actives, the lines surrounding
region, down by N lines, or 1 line if N is nil.

\(fn N)" t nil)

(autoload 'move-lines-binding "move-lines" "\
Sets the default key binding for moving lines. M-p or M-<up> for moving up
and M-n or M-<down> for moving down.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "move-lines" '("move-lines--internal")))

;;;***

(provide 'move-lines-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; move-lines-autoloads.el ends here
