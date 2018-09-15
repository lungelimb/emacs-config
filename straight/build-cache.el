
:betab

gnu/bsd

"26.1"

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("org-elpa" ("2018-09-15 22:44:33+0300" nil (:local-repo nil :package "org-elpa" :type git)) "straight" ("2018-09-15 22:44:33+0300" ("emacs") (:type git :host github :repo "raxod502/straight.el" :files ("straight*.el") :branch "master" :package "straight" :local-repo "straight.el")) "org-plus-contrib" ("2018-08-18 13:09:50+0300" nil (:type git :repo "https://code.orgmode.org/bzg/org-mode.git" :local-repo "org" :files (:defaults "contrib/lisp/*.el") :package "org-plus-contrib")) "move-lines" ("2018-09-15 22:44:34+0300" nil (:type git :host github :repo "targzeta/move-lines" :package "move-lines" :local-repo "move-lines")) "point-im" ("2018-09-15 22:44:35+0300" ("emacs" "jabber") (:host github :repo "rayslava/emacs-point-el" :package "point-im" :type git :local-repo "emacs-point-el")) "melpa" ("2018-09-15 22:44:33+0300" nil (:type git :host github :repo "melpa/melpa" :no-build t :package "melpa" :local-repo "melpa")) "jabber" ("2018-09-15 22:44:35+0300" nil (:type git :files ("*.el" "*.texi" ("jabber-fallback-lib" "jabber-fallback-lib/hexrgb.el")) :repo "https://github.com/legoscia/emacs-jabber.git" :package "jabber" :local-repo "emacs-jabber"))))

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("straight" ((straight straight-x straight-compat straight-autoloads) (autoload (quote straight-get-recipe) "straight" "Interactively select a recipe from one of the recipe repositories.
All recipe repositories in `straight-recipe-repositories' will
first be cloned. After the recipe is selected, it will be copied
to the kill ring. With a prefix argument, first prompt for a
recipe repository to search. Only that repository will be
cloned.

From Lisp code, SOURCES should be a subset of the symbols in
`straight-recipe-repositories'. Only those recipe repositories
are cloned and searched. If it is nil or omitted, then the value
of `straight-recipe-repositories' is used. If SOURCES is the
symbol `interactive', then the user is prompted to select a
recipe repository, and a list containing that recipe repository
is used for the value of SOURCES. ACTION may be `copy' (copy
recipe to the kill ring), `insert' (insert at point), or nil (no
action, just return it).

(fn &optional SOURCES ACTION)" t nil) (autoload (quote straight-use-package) "straight" "Register, clone, build, and activate a package and its dependencies.
This is the main entry point to the functionality of straight.el.

MELPA-STYLE-RECIPE is either a symbol naming a package, or a list
whose car is a symbol naming a package and whose cdr is a
property list containing e.g. `:type', `:local-repo', `:files',
and VC backend specific keywords.

First, the package recipe is registered with straight.el. If
NO-CLONE is a function, then it is called with two arguments: the
package name as a string, and a boolean value indicating whether
the local repository for the package is available. In that case,
the return value of the function is used as the value of NO-CLONE
instead. In any case, if NO-CLONE is non-nil, then processing
stops here.

Otherwise, the repository is cloned, if it is missing. If
NO-BUILD is a function, then it is called with one argument: the
package name as a string. In that case, the return value of the
function is used as the value of NO-BUILD instead. In any case,
if NO-BUILD is non-nil, then processing halts here. Otherwise,
the package is built and activated. Note that if the package
recipe has a non-nil `:no-build' entry, then NO-BUILD is ignored
and processing always stops before building and activation
occurs.

CAUSE is a string explaining the reason why
`straight-use-package' has been called. It is for internal use
only, and is used to construct progress messages. INTERACTIVE is
non-nil if the function has been called interactively. It is for
internal use only, and is used to determine whether to show a
hint about how to install the package permanently.

Return non-nil if package was actually installed, and nil
otherwise (this can only happen if NO-CLONE is non-nil).

(fn MELPA-STYLE-RECIPE &optional NO-CLONE NO-BUILD CAUSE INTERACTIVE)" t nil) (autoload (quote straight-register-package) "straight" "Register a package without cloning, building, or activating it.
This function is equivalent to calling `straight-use-package'
with a non-nil argument for NO-CLONE. It is provided for
convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-package-no-build) "straight" "Register and clone a package without building it.
This function is equivalent to calling `straight-use-package'
with nil for NO-CLONE but a non-nil argument for NO-BUILD. It is
provided for convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-package-lazy) "straight" "Register, build, and activate a package if it is already cloned.
This function is equivalent to calling `straight-use-package'
with symbol `lazy' for NO-CLONE. It is provided for convenience.
MELPA-STYLE-RECIPE is as for `straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-recipes) "straight" "Register a recipe repository using MELPA-STYLE-RECIPE.
This registers the recipe and builds it if it is already cloned.
Note that you probably want the recipe for a recipe repository to
include a non-nil `:no-build' property, to unconditionally
inhibit the build phase.

This function also adds the recipe repository to
`straight-recipe-repositories', at the end of the list.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-override-recipe) "straight" "Register MELPA-STYLE-RECIPE as a recipe override.
This puts it in `straight-recipe-overrides', depending on the
value of `straight-current-profile'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-check-package) "straight" "Rebuild a PACKAGE if it has been modified.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. See also `straight-rebuild-package' and
`straight-check-all'.

(fn PACKAGE)" t nil) (autoload (quote straight-check-all) "straight" "Rebuild any packages that have been modified.
See also `straight-rebuild-all' and `straight-check-package'.
This function should not be called during init.

(fn)" t nil) (autoload (quote straight-rebuild-package) "straight" "Rebuild a PACKAGE.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument RECURSIVE, rebuild
all dependencies as well. See also `straight-check-package' and
`straight-rebuild-all'.

(fn PACKAGE &optional RECURSIVE)" t nil) (autoload (quote straight-rebuild-all) "straight" "Rebuild all packages.
See also `straight-check-all' and `straight-rebuild-package'.

(fn)" t nil) (autoload (quote straight-prune-build-cache) "straight" "Prune the build cache.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information and any cached
autoloads discarded.

(fn)" nil nil) (autoload (quote straight-prune-build-directory) "straight" "Prune the build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build directories deleted.

(fn)" nil nil) (autoload (quote straight-prune-build) "straight" "Prune the build cache and build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information discarded and
their build directories deleted.

(fn)" t nil) (autoload (quote straight-normalize-package) "straight" "Normalize a PACKAGE's local repository to its recipe's configuration.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload (quote straight-normalize-all) "straight" "Normalize all packages. See `straight-normalize-package'.
Return a list of recipes for packages that were not successfully
normalized. If multiple packages come from the same local
repository, only one is normalized.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload (quote straight-fetch-package) "straight" "Try to fetch a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from configured
upstream.

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-fetch-all) "straight" "Try to fetch all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, fetch not just from primary
remotes but also from configured upstreams.

Return a list of recipes for packages that were not successfully
fetched. If multiple packages come from the same local
repository, only one is fetched.

PREDICATE, if provided, filters the packages that are fetched. It
is called with the package name as a string, and should return
non-nil if the package should actually be fetched.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-merge-package) "straight" "Try to merge a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from configured
upstream.

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-merge-all) "straight" "Try to merge all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, merge not just from primary
remotes but also from configured upstreams.

Return a list of recipes for packages that were not successfully
merged. If multiple packages come from the same local
repository, only one is merged.

PREDICATE, if provided, filters the packages that are merged. It
is called with the package name as a string, and should return
non-nil if the package should actually be merged.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-pull-package) "straight" "Try to pull a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM, pull
not just from primary remote but also from configured upstream.

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-pull-all) "straight" "Try to pull all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, pull not just from primary
remotes but also from configured upstreams.

Return a list of recipes for packages that were not successfully
pulled. If multiple packages come from the same local repository,
only one is pulled.

PREDICATE, if provided, filters the packages that are pulled. It
is called with the package name as a string, and should return
non-nil if the package should actually be pulled.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-push-package) "straight" "Push a PACKAGE to its primary remote, if necessary.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload (quote straight-push-all) "straight" "Try to push all packages to their primary remotes.

Return a list of recipes for packages that were not successfully
pushed. If multiple packages come from the same local repository,
only one is pushed.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload (quote straight-freeze-versions) "straight" "Write version lockfiles for currently activated packages.
This implies first pushing all packages that have unpushed local
changes. If the package management system has been used since the
last time the init-file was reloaded, offer to fix the situation
by reloading the init-file again. If FORCE is
non-nil (interactively, if a prefix argument is provided), skip
all checks and write the lockfile anyway.

Multiple lockfiles may be written (one for each profile),
according to the value of `straight-profiles'.

(fn &optional FORCE)" t nil) (autoload (quote straight-thaw-versions) "straight" "Read version lockfiles and restore package versions to those listed.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "straight" (quote ("straight-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "straight-x" (quote ("straight-x-")))) (provide (quote straight-autoloads))) "org-plus-contrib" ((ox ox-texinfo ox-taskjuggler ox-s5 ox-rss ox-publish ox-org ox-odt ox-md ox-man ox-latex ox-koma-letter ox-icalendar ox-html ox-groff ox-freemind ox-extra ox-deck ox-confluence ox-bibtex ox-beamer ox-ascii orgtbl-sqlinsert org org-wl org-wikinodes org-w3m org-vm org-velocity org-track org-toc org-timer org-tempo org-table org-sudoku org-static-mathjax org-src org-secretary org-screenshot org-screen org-rmail org-registry org-protocol org-plus-contrib-autoloads org-plot org-pcomplete org-passwords org-panel org-notmuch org-notify org-mouse org-mobile org-mhe org-mew org-man org-mairix org-macs org-macro org-mac-link org-mac-iCal org-loaddefs org-list org-lint org-link-edit org-license org-learn org-irc org-invoice org-interactive-query org-install org-inlinetask org-info org-indent org-id org-habit org-goto org-gnus org-git-link org-footnote org-feed org-faces org-expiry org-eww org-eval org-eval-light org-eshell org-entities org-elisp-symbol org-element org-eldoc org-effectiveness org-duration org-drill org-docview org-depend org-datetree org-ctags org-crypt org-contribdir org-contacts org-compat org-colview org-collector org-clock org-choose org-checklist org-capture org-bookmark org-bibtex org-bibtex-extras org-bbdb org-attach org-attach-embedded-images org-archive org-annotate-file org-agenda ob ob-vbnet ob-vala ob-tcl ob-tangle ob-table ob-stata ob-stan ob-sqlite ob-sql ob-spice ob-smiles ob-shen ob-shell ob-sed ob-screen ob-sclang ob-scheme ob-sass ob-ruby ob-ref ob-redis ob-R ob-python ob-processing ob-plantuml ob-picolisp ob-php ob-perl ob-oz ob-org ob-octave ob-ocaml ob-mscgen ob-maxima ob-matlab ob-mathomatic ob-mathematica ob-makefile ob-lua ob-lob ob-lisp ob-lilypond ob-ledger ob-latex ob-keys ob-julia ob-js ob-java ob-J ob-io ob-hledger ob-haskell ob-groovy ob-gnuplot ob-fortran ob-forth ob-fomus ob-exp ob-eval ob-eukleides ob-emacs-lisp ob-ebnf ob-dot ob-ditaa ob-css ob-csharp ob-core ob-coq ob-comint ob-clojure ob-clojure-literate ob-calc ob-C ob-awk ob-asymptote ob-arduino ob-abc) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-C" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-J" (quote ("obj-" "org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-R" (quote ("ob-R-" "org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-abc" (quote ("org-babel-")))) (autoload (quote org-babel-execute:arduino) "ob-arduino" "org-babel arduino hook.

(fn BODY PARAMS)" nil nil) (eval-after-load (quote org) (quote (add-to-list (quote org-src-lang-modes) (quote ("arduino" . arduino))))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-arduino" (quote ("ob-arduino:" "org-babel-default-header-args:sclang")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-asymptote" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-awk" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-calc" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-clojure" (quote ("org-babel-")))) (defvar ob-clojure-literate-auto-jackin-p nil "Auto jack in ob-clojure project.
Don't auto jack in by default for not rude.") (custom-autoload (quote ob-clojure-literate-auto-jackin-p) "ob-clojure-literate" t) (autoload (quote ob-clojure-literate-specify-session) "ob-clojure-literate" "Specify ob-clojure header argument :session with value selected from a list of available sessions.

(fn)" t nil) (autoload (quote ob-clojure-literate-auto-jackin) "ob-clojure-literate" "Auto setup ob-clojure-literate scaffold and jack-in Clojure project.

(fn)" t nil) (autoload (quote ob-clojure-literate-enable) "ob-clojure-literate" "Enable Org-mode buffer locally for `ob-clojure-literate'.

(fn)" nil nil) (autoload (quote ob-clojure-literate-disable) "ob-clojure-literate" "Disable Org-mode buffer locally for `ob-clojure-literate'.

(fn)" nil nil) (if ob-clojure-literate-auto-jackin-p (ob-clojure-literate-auto-jackin)) (autoload (quote ob-clojure-literate-mode) "ob-clojure-literate" "A minor mode to toggle `ob-clojure-literate'.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-clojure-literate" (quote ("org-babel-" "ob-clojure-literate-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-comint" (quote ("org-babel-comint-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-coq" (quote ("org-babel-" "coq-program-name")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-core" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-csharp" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-css" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ditaa" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-dot" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ebnf" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-emacs-lisp" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-eukleides" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-eval" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-exp" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-fomus" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-forth" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-fortran" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-gnuplot" (quote ("org-babel-" "*org-babel-gnuplot-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-groovy" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-haskell" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-hledger" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-io" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-java" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-js" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-julia" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-keys" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-latex" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ledger" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-lilypond" (quote ("org-babel-" "lilypond-mode")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-lisp" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-lob" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-lua" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-makefile" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-mathematica" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-mathomatic" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-maxima" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-mscgen" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ocaml" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-octave" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-org" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-oz" (quote ("oz-send-string-expression" "org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-perl" (quote ("org-babel-")))) (autoload (quote org-babel-execute:php) "ob-php" "Orgmode Babel PHP evaluate function for `BODY' with `PARAMS'.

(fn BODY PARAMS)" nil nil) (eval-after-load "org" (quote (add-to-list (quote org-src-lang-modes) (quote ("php" . php))))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-php" (quote ("ob-php:inf-php-buffer" "org-babel-default-header-args:php")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-picolisp" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-plantuml" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-processing" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-python" (quote ("org-babel-")))) (autoload (quote org-babel-execute:redis) "ob-redis" "org-babel redis hook.

(fn BODY PARAMS)" nil nil) (eval-after-load "org" (quote (add-to-list (quote org-src-lang-modes) (quote ("redis" . redis))))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-redis" (quote ("ob-redis:default-db")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ref" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-ruby" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-sass" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-scheme" (quote ("org-babel-")))) (autoload (quote org-babel-execute:sclang) "ob-sclang" "Org-mode Babel sclang hook for evaluate `BODY' with `PARAMS'.

(fn BODY PARAMS)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-sclang" (quote ("org-babel-default-header-args:sclang")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-screen" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-sed" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-shell" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-shen" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-smiles" (quote ("molecule-" "org-babel-execute:smiles")))) (autoload (quote org-babel-execute:spice) "ob-spice" "Execute a block of Spice code `BODY' with org-babel and `PARAMS'.

(fn BODY PARAMS)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-spice" (quote ("ob-spice-concat" "org-babel-expand-body:spice")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-sql" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-sqlite" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-stan" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-stata" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-table" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-tangle" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-tcl" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-vala" (quote ("org-babel-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ob-vbnet" (quote ("org-babel-")))) (autoload (quote org-babel-do-load-languages) "org" "Load the languages defined in `org-babel-load-languages'.

(fn SYM VALUE)" nil nil) (autoload (quote org-babel-load-file) "org" "Load Emacs Lisp source code blocks in the Org FILE.
This function exports the source code using `org-babel-tangle'
and then loads the resulting file using `load-file'.  With prefix
arg (noninteractively: 2nd arg) COMPILE the tangled Emacs Lisp
file to byte-code before it is loaded.

(fn FILE &optional COMPILE)" t nil) (autoload (quote org-version) "org" "Show the Org version.
Interactively, or when MESSAGE is non-nil, show it in echo area.
With prefix argument, or when HERE is non-nil, insert it at point.
In non-interactive uses, a reduced version string is output unless
FULL is given.

(fn &optional HERE FULL MESSAGE)" t nil) (autoload (quote turn-on-orgtbl) "org" "Unconditionally turn on `orgtbl-mode'.

(fn)" nil nil) (autoload (quote org-clock-persistence-insinuate) "org" "Set up hooks for clock persistence.

(fn)" nil nil) (autoload (quote org-mode) "org" "Outline-based notes management and organizer, alias
\"Carsten's outline-mode for keeping track of everything.\"

Org mode develops organizational tasks around a NOTES file which
contains information about projects as plain text.  Org mode is
implemented on top of Outline mode, which is ideal to keep the content
of large files well structured.  It supports ToDo items, deadlines and
time stamps, which magically appear in the diary listing of the Emacs
calendar.  Tables are easily created with a built-in table editor.
Plain text URL-like links connect to websites, emails (VM), Usenet
messages (Gnus), BBDB entries, and any files related to the project.
For printing and sharing of notes, an Org file (or a part of it)
can be exported as a structured ASCII or HTML file.

The following commands are available:

\\{org-mode-map}

(fn)" t nil) (autoload (quote org-cycle) "org" "TAB-action and visibility cycling for Org mode.

This is the command invoked in Org mode by the `TAB' key.  Its main
purpose is outline visibility cycling, but it also invokes other actions
in special contexts.

When this function is called with a `\\[universal-argument]' prefix, rotate the entire
buffer through 3 states (global cycling)
  1. OVERVIEW: Show only top-level headlines.
  2. CONTENTS: Show all headlines of all levels, but no body text.
  3. SHOW ALL: Show everything.

With a `\\[universal-argument] \\[universal-argument]' prefix argument, switch to the startup visibility,
determined by the variable `org-startup-folded', and by any VISIBILITY
properties in the buffer.

With a `\\[universal-argument] \\[universal-argument] \\[universal-argument]' prefix argument, show the entire buffer, including
any drawers.

When inside a table, re-align the table and move to the next field.

When point is at the beginning of a headline, rotate the subtree started
by this line through 3 different states (local cycling)
  1. FOLDED:   Only the main headline is shown.
  2. CHILDREN: The main headline and the direct children are shown.
               From this state, you can move to one of the children
               and zoom in further.
  3. SUBTREE:  Show the entire subtree, including body text.
If there is no subtree, switch directly from CHILDREN to FOLDED.

When point is at the beginning of an empty headline and the variable
`org-cycle-level-after-item/entry-creation' is set, cycle the level
of the headline by demoting and promoting it to likely levels.  This
speeds up creation document structure by pressing `TAB' once or several
times right after creating a new headline.

When there is a numeric prefix, go up to a heading with level ARG, do
a `show-subtree' and return to the previous cursor position.  If ARG
is negative, go up that many levels.

When point is not at the beginning of a headline, execute the global
binding for `TAB', which is re-indenting the line.  See the option
`org-cycle-emulate-tab' for details.

As a special case, if point is at the beginning of the buffer and there is
no headline in line 1, this function will act as if called with prefix arg
(`\\[universal-argument] TAB', same as `S-TAB') also when called without prefix arg, but only
if the variable `org-cycle-global-at-bob' is t.

(fn &optional ARG)" t nil) (autoload (quote org-global-cycle) "org" "Cycle the global visibility.  For details see `org-cycle'.
With `\\[universal-argument]' prefix ARG, switch to startup visibility.
With a numeric prefix, show all headlines up to that level.

(fn &optional ARG)" t nil) (autoload (quote org-run-like-in-org-mode) "org" "Run a command, pretending that the current buffer is in Org mode.
This will temporarily bind local variables that are typically bound in
Org mode to the values they have in Org mode, and then interactively
call CMD.

(fn CMD)" nil nil) (autoload (quote org-store-link) "org" "Store a link to the current location.
\\<org-mode-map>
This link is added to `org-stored-links' and can later be inserted
into an Org buffer with `org-insert-link' (`\\[org-insert-link]').

For some link types, a `\\[universal-argument]' prefix ARG is interpreted.  A single
`\\[universal-argument]' negates `org-context-in-file-links' for file links or
`org-gnus-prefer-web-links' for links to Usenet articles.

A `\\[universal-argument] \\[universal-argument]' prefix ARG forces skipping storing functions that are not
part of Org core.

A `\\[universal-argument] \\[universal-argument] \\[universal-argument]' prefix ARG forces storing a link for each line in the
active region.

Assume the function is called interactively if INTERACTIVE? is
non-nil.

(fn ARG &optional INTERACTIVE\\=\\?)" t nil) (autoload (quote org-insert-link-global) "org" "Insert a link like Org mode does.
This command can be called in any mode to insert a link in Org syntax.

(fn)" t nil) (autoload (quote org-open-at-point-global) "org" "Follow a link or a time-stamp like Org mode does.
Also follow links and emails as seen by `thing-at-point'.
This command can be called in any mode to follow an external
link or a time-stamp that has Org mode syntax.  Its behavior
is undefined when called on internal links like fuzzy links.
Raise a user error when there is nothing to follow.

(fn)" t nil) (autoload (quote org-open-link-from-string) "org" "Open a link in the string S, as if it was in Org mode.

(fn S &optional ARG REFERENCE-BUFFER)" t nil) (autoload (quote org-switchb) "org" "Switch between Org buffers.

With `\\[universal-argument]' prefix, restrict available buffers to files.

With `\\[universal-argument] \\[universal-argument]' prefix, restrict available buffers to agenda files.

(fn &optional ARG)" t nil) (autoload (quote org-cycle-agenda-files) "org" "Cycle through the files in `org-agenda-files'.
If the current buffer visits an agenda file, find the next one in the list.
If the current buffer does not, find the first agenda file.

(fn)" t nil) (autoload (quote org-submit-bug-report) "org" "Submit a bug report on Org via mail.

Don't hesitate to report any problems or inaccurate documentation.

If you don't have setup sending mail from (X)Emacs, please copy the
output buffer into your mail program, as it gives us important
information about your Org version and configuration.

(fn)" t nil) (autoload (quote org-reload) "org" "Reload all Org Lisp files.
With prefix arg UNCOMPILED, load the uncompiled versions.

(fn &optional UNCOMPILED)" t nil) (autoload (quote org-customize) "org" "Call the customize function with org as argument.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org" (quote ("org-" "turn-on-org-cdlatex")))) (autoload (quote org-toggle-sticky-agenda) "org-agenda" "Toggle `org-agenda-sticky'.

(fn &optional ARG)" t nil) (autoload (quote org-agenda) "org-agenda" "Dispatch agenda commands to collect entries to the agenda buffer.
Prompts for a command to execute.  Any prefix arg will be passed
on to the selected command.  The default selections are:

a     Call `org-agenda-list' to display the agenda for current day or week.
t     Call `org-todo-list' to display the global todo list.
T     Call `org-todo-list' to display the global todo list, select only
      entries with a specific TODO keyword (the user gets a prompt).
m     Call `org-tags-view' to display headlines with tags matching
      a condition  (the user is prompted for the condition).
M     Like `m', but select only TODO entries, no ordinary headlines.
e     Export views to associated files.
s     Search entries for keywords.
S     Search entries for keywords, only with TODO keywords.
/     Multi occur across all agenda files and also files listed
      in `org-agenda-text-search-extra-files'.
<     Restrict agenda commands to buffer, subtree, or region.
      Press several times to get the desired effect.
>     Remove a previous restriction.
#     List \"stuck\" projects.
!     Configure what \"stuck\" means.
C     Configure custom agenda commands.

More commands can be added by configuring the variable
`org-agenda-custom-commands'.  In particular, specific tags and TODO keyword
searches can be pre-defined in this way.

If the current buffer is in Org mode and visiting a file, you can also
first press `<' once to indicate that the agenda should be temporarily
(until the next use of `\\[org-agenda]') restricted to the current file.
Pressing `<' twice means to restrict to the current subtree or region
(if active).

(fn &optional ARG ORG-KEYS RESTRICTION)" t nil) (autoload (quote org-batch-agenda) "org-agenda" "Run an agenda command in batch mode and send the result to STDOUT.
If CMD-KEY is a string of length 1, it is used as a key in
`org-agenda-custom-commands' and triggers this command.  If it is a
longer string it is used as a tags/todo match string.
Parameters are alternating variable names and values that will be bound
before running the agenda command.

(fn CMD-KEY &rest PARAMETERS)" nil t) (autoload (quote org-batch-agenda-csv) "org-agenda" "Run an agenda command in batch mode and send the result to STDOUT.
If CMD-KEY is a string of length 1, it is used as a key in
`org-agenda-custom-commands' and triggers this command.  If it is a
longer string it is used as a tags/todo match string.
Parameters are alternating variable names and values that will be bound
before running the agenda command.

The output gives a line for each selected agenda item.  Each
item is a list of comma-separated values, like this:

category,head,type,todo,tags,date,time,extra,priority-l,priority-n

category     The category of the item
head         The headline, without TODO kwd, TAGS and PRIORITY
type         The type of the agenda entry, can be
                todo               selected in TODO match
                tagsmatch          selected in tags match
                diary              imported from diary
                deadline           a deadline on given date
                scheduled          scheduled on given date
                timestamp          entry has timestamp on given date
                closed             entry was closed on given date
                upcoming-deadline  warning about deadline
                past-scheduled     forwarded scheduled item
                block              entry has date block including g. date
todo         The todo keyword, if any
tags         All tags including inherited ones, separated by colons
date         The relevant date, like 2007-2-14
time         The time, like 15:00-16:50
extra        Sting with extra planning info
priority-l   The priority letter if any was given
priority-n   The computed numerical priority
agenda-day   The day in the agenda where this is listed

(fn CMD-KEY &rest PARAMETERS)" nil t) (autoload (quote org-store-agenda-views) "org-agenda" "Store agenda views.

(fn &rest PARAMETERS)" t nil) (autoload (quote org-batch-store-agenda-views) "org-agenda" "Run all custom agenda commands that have a file argument.

(fn &rest PARAMETERS)" nil t) (autoload (quote org-agenda-list) "org-agenda" "Produce a daily/weekly view from all files in variable `org-agenda-files'.
The view will be for the current day or week, but from the overview buffer
you will be able to go to other days/weeks.

With a numeric prefix argument in an interactive call, the agenda will
span ARG days.  Lisp programs should instead specify SPAN to change
the number of days.  SPAN defaults to `org-agenda-span'.

START-DAY defaults to TODAY, or to the most recent match for the weekday
given in `org-agenda-start-on-weekday'.

When WITH-HOUR is non-nil, only include scheduled and deadline
items if they have an hour specification like [h]h:mm.

(fn &optional ARG START-DAY SPAN WITH-HOUR)" t nil) (autoload (quote org-search-view) "org-agenda" "Show all entries that contain a phrase or words or regular expressions.

With optional prefix argument TODO-ONLY, only consider entries that are
TODO entries.  The argument STRING can be used to pass a default search
string into this function.  If EDIT-AT is non-nil, it means that the
user should get a chance to edit this string, with cursor at position
EDIT-AT.

The search string can be viewed either as a phrase that should be found as
is, or it can be broken into a number of snippets, each of which must match
in a Boolean way to select an entry.  The default depends on the variable
`org-agenda-search-view-always-boolean'.
Even if this is turned off (the default) you can always switch to
Boolean search dynamically by preceding the first word with  \"+\" or \"-\".

The default is a direct search of the whole phrase, where each space in
the search string can expand to an arbitrary amount of whitespace,
including newlines.

If using a Boolean search, the search string is split on whitespace and
each snippet is searched separately, with logical AND to select an entry.
Words prefixed with a minus must *not* occur in the entry.  Words without
a prefix or prefixed with a plus must occur in the entry.  Matching is
case-insensitive.  Words are enclosed by word delimiters (i.e. they must
match whole words, not parts of a word) if
`org-agenda-search-view-force-full-words' is set (default is nil).

Boolean search snippets enclosed by curly braces are interpreted as
regular expressions that must or (when preceded with \"-\") must not
match in the entry.  Snippets enclosed into double quotes will be taken
as a whole, to include whitespace.

- If the search string starts with an asterisk, search only in headlines.
- If (possibly after the leading star) the search string starts with an
  exclamation mark, this also means to look at TODO entries only, an effect
  that can also be achieved with a prefix argument.
- If (possibly after star and exclamation mark) the search string starts
  with a colon, this will mean that the (non-regexp) snippets of the
  Boolean search must match as full words.

This command searches the agenda files, and in addition the files
listed in `org-agenda-text-search-extra-files' unless a restriction lock
is active.

(fn &optional TODO-ONLY STRING EDIT-AT)" t nil) (autoload (quote org-todo-list) "org-agenda" "Show all (not done) TODO entries from all agenda file in a single list.
The prefix arg can be used to select a specific TODO keyword and limit
the list to these.  When using `\\[universal-argument]', you will be prompted
for a keyword.  A numeric prefix directly selects the Nth keyword in
`org-todo-keywords-1'.

(fn &optional ARG)" t nil) (autoload (quote org-tags-view) "org-agenda" "Show all headlines for all `org-agenda-files' matching a TAGS criterion.
The prefix arg TODO-ONLY limits the search to TODO entries.

(fn &optional TODO-ONLY MATCH)" t nil) (autoload (quote org-agenda-list-stuck-projects) "org-agenda" "Create agenda view for projects that are stuck.
Stuck projects are project that have no next actions.  For the definitions
of what a project is and how to check if it stuck, customize the variable
`org-stuck-projects'.

(fn &rest IGNORE)" t nil) (autoload (quote org-diary) "org-agenda" "Return diary information from org files.
This function can be used in a \"sexp\" diary entry in the Emacs calendar.
It accesses org files and extracts information from those files to be
listed in the diary.  The function accepts arguments specifying what
items should be listed.  For a list of arguments allowed here, see the
variable `org-agenda-entry-types'.

The call in the diary file should look like this:

   &%%(org-diary) ~/path/to/some/orgfile.org

Use a separate line for each org file to check.  Or, if you omit the file name,
all files listed in `org-agenda-files' will be checked automatically:

   &%%(org-diary)

If you don't give any arguments (as in the example above), the default value
of `org-agenda-entry-types' is used: (:deadline :scheduled :timestamp :sexp).
So the example above may also be written as

   &%%(org-diary :deadline :timestamp :sexp :scheduled)

The function expects the lisp variables `entry' and `date' to be provided
by the caller, because this is how the calendar works.  Don't use this
function from a program - use `org-agenda-get-day-entries' instead.

(fn &rest ARGS)" nil nil) (autoload (quote org-agenda-check-for-timestamp-as-reason-to-ignore-todo-item) "org-agenda" "Do we have a reason to ignore this TODO entry because it has a time stamp?

(fn &optional END)" nil nil) (autoload (quote org-agenda-set-restriction-lock) "org-agenda" "Set restriction lock for agenda to current subtree or file.
When in a restricted subtree, remove it.

The restriction will span over the entire file if TYPE is `file',
or if type is '(4), or if the cursor is before the first headline
in the file. Otherwise, only apply the restriction to the current
subtree.

(fn &optional TYPE)" t nil) (autoload (quote org-calendar-goto-agenda) "org-agenda" "Compute the Org agenda for the calendar date displayed at the cursor.
This is a command that has to be installed in `calendar-mode-map'.

(fn)" t nil) (autoload (quote org-agenda-to-appt) "org-agenda" "Activate appointments found in `org-agenda-files'.

With a `\\[universal-argument]' prefix, refresh the list of appointments.

If FILTER is t, interactively prompt the user for a regular
expression, and filter out entries that don't match it.

If FILTER is a string, use this string as a regular expression
for filtering entries out.

If FILTER is a function, filter out entries against which
calling the function returns nil.  This function takes one
argument: an entry from `org-agenda-get-day-entries'.

FILTER can also be an alist with the car of each cell being
either `headline' or `category'.  For example:

  \\='((headline \"IMPORTANT\")
    (category \"Work\"))

will only add headlines containing IMPORTANT or headlines
belonging to the \"Work\" category.

ARGS are symbols indicating what kind of entries to consider.
By default `org-agenda-to-appt' will use :deadline*, :scheduled*
(i.e., deadlines and scheduled items with a hh:mm specification)
and :timestamp entries.  See the docstring of `org-diary' for
details and examples.

If an entry has a APPT_WARNTIME property, its value will be used
to override `appt-message-warning-time'.

(fn &optional REFRESH FILTER &rest ARGS)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-agenda" (quote ("org-")))) (autoload (quote org-annotate-file) "org-annotate-file" "Visit `org-annotate-file-storage-file` and add a new annotation section.
The annotation is opened at the new section which will be referencing
the point in the current file.

(fn)" t nil) (autoload (quote org-annotate-file-show-section) "org-annotate-file" "Add or show annotation entry in STORAGE-FILE and return the buffer.
The annotation will link to ANNOTATED-BUFFER if specified,
  otherwise the current buffer is used.

(fn STORAGE-FILE &optional ANNOTATED-BUFFER)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-annotate-file" (quote ("org-annotate-file-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-archive" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-attach" (quote ("org-attach-")))) (autoload (quote org-attach-embedded-images-in-subtree) "org-attach-embedded-images" "Save the displayed images as attachments and insert links to them.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-attach-embedded-images" (quote ("org-attach-embedded-images--")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-bbdb" (quote ("org-bbdb-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-bibtex" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-bibtex-extras" (quote ("obe-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-bookmark" (quote ("org-bookmark-")))) (autoload (quote org-capture-string) "org-capture" "Capture STRING with the template selected by KEYS.

(fn STRING &optional KEYS)" t nil) (autoload (quote org-capture) "org-capture" "Capture something.
\\<org-capture-mode-map>
This will let you select a template from `org-capture-templates', and
then file the newly captured information.  The text is immediately
inserted at the target location, and an indirect buffer is shown where
you can edit it.  Pressing `\\[org-capture-finalize]' brings you back to the previous
state of Emacs, so that you can continue your work.

When called interactively with a `\\[universal-argument]' prefix argument GOTO, don't
capture anything, just go to the file/headline where the selected
template stores its notes.

With a `\\[universal-argument] \\[universal-argument]' prefix argument, go to the last note stored.

When called with a `C-0' (zero) prefix, insert a template at point.

When called with a `C-1' (one) prefix, force prompting for a date when
a datetree entry is made.

ELisp programs can set KEYS to a string associated with a template
in `org-capture-templates'.  In this case, interactive selection
will be bypassed.

If `org-capture-use-agenda-date' is non-nil, capturing from the
agenda will use the date at point as the default date.  Then, a
`C-1' prefix will tell the capture process to use the HH:MM time
of the day at point (if any) or the current HH:MM time.

(fn &optional GOTO KEYS)" t nil) (autoload (quote org-capture-import-remember-templates) "org-capture" "Set `org-capture-templates' to be similar to `org-remember-templates'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-capture" (quote ("org-capture-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-checklist" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-choose" (quote ("org-choose-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-clock" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-collector" (quote ("org-" "and-rest")))) (autoload (quote org-columns-remove-overlays) "org-colview" "Remove all currently active column overlays.

(fn)" t nil) (autoload (quote org-columns-get-format-and-top-level) "org-colview" "

(fn)" nil nil) (autoload (quote org-columns) "org-colview" "Turn on column view on an Org mode file.

Column view applies to the whole buffer if point is before the
first headline.  Otherwise, it applies to the first ancestor
setting \"COLUMNS\" property.  If there is none, it defaults to
the current headline.  With a `\\[universal-argument]' prefix argument, turn on column
view for the whole buffer unconditionally.

When COLUMNS-FMT-STRING is non-nil, use it as the column format.

(fn &optional GLOBAL COLUMNS-FMT-STRING)" t nil) (autoload (quote org-columns-compute) "org-colview" "Summarize the values of PROPERTY hierarchically.
Also update existing values for PROPERTY according to the first
column specification.

(fn PROPERTY)" t nil) (autoload (quote org-dblock-write:columnview) "org-colview" "Write the column view table.
PARAMS is a property list of parameters:

:id       the :ID: property of the entry where the columns view
	  should be built.  When the symbol `local', call locally.
	  When `global' call column view with the cursor at the beginning
	  of the buffer (usually this means that the whole buffer switches
	  to column view).  When \"file:path/to/file.org\", invoke column
	  view at the start of that file.  Otherwise, the ID is located
	  using `org-id-find'.
:hlines   When t, insert a hline before each item.  When a number, insert
	  a hline before each level <= that number.
:indent   When non-nil, indent each ITEM field according to its level.
:vlines   When t, make each column a colgroup to enforce vertical lines.
:maxlevel When set to a number, don't capture headlines below this level.
:match    When set to a string, use this as a tags/property match filter.
:skip-empty-rows
	  When t, skip rows where all specifiers other than ITEM are empty.
:format   When non-nil, specify the column view format to use.

(fn PARAMS)" nil nil) (autoload (quote org-columns-insert-dblock) "org-colview" "Create a dynamic block capturing a column view table.

(fn)" t nil) (autoload (quote org-agenda-columns) "org-colview" "Turn on or update column view in the agenda.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-colview" (quote ("org-")))) (autoload (quote org-check-version) "org-compat" "Try very hard to provide sensible version strings.

(fn)" nil t) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-compat" (quote ("org-")))) (autoload (quote org-contacts) "org-contacts" "Create agenda view for contacts matching NAME.

(fn NAME)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-contacts" (quote ("org-co" "erc-nicknames-list")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-crypt" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-ctags" (quote ("org-ctags-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-datetree" (quote ("org-datetree-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-depend" (quote ("org-depend-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-docview" (quote ("org-docview-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-drill" (quote ("org-" "shuffle-list" "spelln-integer-in-language" "*org-drill-" "with-" "drill-answer" "determine-next-interval-s" "initial-optimal-factor-sm5" "inter-repetition-interval-sm5" "get-optimal-factor-sm5" "pop-random" "push-end" "pseudonormal" "time-to-" "command-keybinding-to-string" "round-float" "free-marker")))) (autoload (quote org-duration-set-regexps) "org-duration" "Set duration related regexps.

(fn)" t nil) (autoload (quote org-duration-p) "org-duration" "Non-nil when string S is a time duration.

(fn S)" nil nil) (autoload (quote org-duration-to-minutes) "org-duration" "Return number of minutes of DURATION string.

When optional argument CANONICAL is non-nil, ignore
`org-duration-units' and use standard time units value.

A bare number is translated into minutes.  The empty string is
translated into 0.0.

Return value as a float.  Raise an error if duration format is
not recognized.

(fn DURATION &optional CANONICAL)" nil nil) (autoload (quote org-duration-from-minutes) "org-duration" "Return duration string for a given number of MINUTES.

Format duration according to `org-duration-format' or FMT, when
non-nil.

When optional argument CANONICAL is non-nil, ignore
`org-duration-units' and use standard time units value.

Raise an error if expected format is unknown.

(fn MINUTES &optional FMT CANONICAL)" nil nil) (autoload (quote org-duration-h:mm-only-p) "org-duration" "Non-nil when every duration in TIMES has \"H:MM\" or \"H:MM:SS\" format.

TIMES is a list of duration strings.

Return nil if any duration is expressed with units, as defined in
`org-duration-units'.  Otherwise, if any duration is expressed
with \"H:MM:SS\" format, return `h:mm:ss'.  Otherwise, return
`h:mm'.

(fn TIMES)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-duration" (quote ("org-duration-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-effectiveness" (quote ("org-effectiveness-")))) (autoload (quote org-eldoc-load) "org-eldoc" "Set up org-eldoc documentation function.

(fn)" t nil) (add-hook (quote org-mode-hook) (function org-eldoc-load)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-eldoc" (quote ("org-eldoc-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-element" (quote ("org-element-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-elisp-symbol" (quote ("org-elisp-symbol-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-entities" (quote ("org-entit")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-eshell" (quote ("org-eshell-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-eval" (quote ("org-eval-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-eval-light" (quote ("org-eval-light-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-eww" (quote ("org-eww-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-expiry" (quote ("org-expiry-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-faces" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-feed" (quote ("org-feed-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-footnote" (quote ("org-footnote-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-git-link" (quote ("org-git")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-gnus" (quote ("org-gnus-")))) (autoload (quote org-goto-location) "org-goto" "Let the user select a location in current buffer.
This function uses a recursive edit.  It returns the selected
position or nil.

(fn &optional BUF HELP)" nil nil) (autoload (quote org-goto) "org-goto" "Look up a different location in the current file, keeping current visibility.

When you want look-up or go to a different location in a
document, the fastest way is often to fold the entire buffer and
then dive into the tree.  This method has the disadvantage, that
the previous location will be folded, which may not be what you
want.

This command works around this by showing a copy of the current
buffer in an indirect buffer, in overview mode.  You can dive
into the tree in that copy, use org-occur and incremental search
to find a location.  When pressing RET or `Q', the command
returns to the original buffer in which the visibility is still
unchanged.  After RET it will also jump to the location selected
in the indirect buffer and expose the headline hierarchy above.

With a prefix argument, use the alternative interface: e.g., if
`org-goto-interface' is `outline' use `outline-path-completion'.

(fn &optional ALTERNATIVE-INTERFACE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-goto" (quote ("org-goto-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-habit" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-id" (quote ("org-id-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-indent" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-info" (quote ("org-info-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-inlinetask" (quote ("org-inlinetask-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-interactive-query" (quote ("org-agenda-query-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-invoice" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-irc" (quote ("org-irc-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-learn" (quote ("org-" "determine-next-interval" "inter-repetition-interval" "initial-" "calculate-new-optimal-factor" "modify-" "set-optimal-factor" "get-optimal-factor")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-license" (quote ("org-license-")))) (autoload (quote org-link-edit-forward-slurp) "org-link-edit" "Slurp N trailing blobs into link's description.

  The [[https://orgmode.org/][Org mode]] site

                        |
                        v

  The [[https://orgmode.org/][Org mode site]]

A blob is a block of non-whitespace characters.  When slurping
forward, trailing punctuation characters are not considered part
of a blob.

After slurping, return the slurped text and move point to the
beginning of the link.

If N is negative, slurp leading blobs instead of trailing blobs.

(fn &optional N)" t nil) (autoload (quote org-link-edit-backward-slurp) "org-link-edit" "Slurp N leading blobs into link's description.

  The [[https://orgmode.org/][Org mode]] site

                        |
                        v

  [[https://orgmode.org/][The Org mode]] site

A blob is a block of non-whitespace characters.

After slurping, return the slurped text and move point to the
beginning of the link.

If N is negative, slurp trailing blobs instead of leading blobs.

(fn &optional N)" t nil) (autoload (quote org-link-edit-forward-barf) "org-link-edit" "Barf N trailing blobs from link's description.

  The [[https://orgmode.org/][Org mode]] site

                        |
                        v

  The [[https://orgmode.org/][Org]] mode site

A blob is a block of non-whitespace characters.

After barfing, return the barfed text and move point to the
beginning of the link.

If N is negative, barf leading blobs instead of trailing blobs.

(fn &optional N)" t nil) (autoload (quote org-link-edit-backward-barf) "org-link-edit" "Barf N leading blobs from link's description.

  The [[https://orgmode.org/][Org mode]] site

                        |
                        v

  The Org [[https://orgmode.org/][mode]] site

A blob is a block of non-whitespace characters.

After barfing, return the barfed text and move point to the
beginning of the link.

If N is negative, barf trailing blobs instead of leading blobs.

(fn &optional N)" t nil) (autoload (quote org-link-edit-transport-next-link) "org-link-edit" "Move the next link to point.

If the region is active, use the selected text as the link's
description.  Otherwise, use the word at point.

With prefix argument PREVIOUS, move the previous link instead of
the next link.

Non-interactively, use the text between BEG and END as the
description, moving the next (or previous) link relative BEG and
END.

(fn &optional PREVIOUS BEG END)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-link-edit" (quote ("org-link-edit--")))) (autoload (quote org-lint) "org-lint" "Check current Org buffer for syntax mistakes.

By default, run all checkers.  With a `\\[universal-argument]' prefix ARG, select one
category of checkers only.  With a `\\[universal-argument] \\[universal-argument]' prefix, run one precise
checker by its name.

ARG can also be a list of checker names, as symbols, to run.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-lint" (quote ("org-lint-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-list" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-mac-iCal" (quote ("org-mac-iCal" "omi-")))) (autoload (quote org-mac-grab-link) "org-mac-link" "Prompt for an application to grab a link from.
When done, go grab the link, and insert it at point.

(fn)" t nil) (autoload (quote org-mac-firefox-get-frontmost-url) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-firefox-insert-frontmost-url) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-vimperator-get-frontmost-url) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-vimperator-insert-frontmost-url) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-chrome-get-frontmost-url) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-chrome-insert-frontmost-url) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-safari-get-frontmost-url) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-safari-insert-frontmost-url) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-together-get-selected) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-together-insert-selected) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-finder-item-get-selected) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-finder-insert-selected) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-addressbook-item-get-selected) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-addressbook-insert-selected) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-skim-get-page) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-skim-insert-page) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-acrobat-get-page) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-acrobat-insert-page) "org-mac-link" "

(fn)" t nil) (autoload (quote org-mac-outlook-message-get-links) "org-mac-link" "Create links to the messages currently selected or flagged in Microsoft Outlook.app.
This will use AppleScript to get the message-id and the subject of the
messages in Microsoft Outlook.app and make a link out of it.
When SELECT-OR-FLAG is \"s\", get the selected messages (this is also
the default).  When SELECT-OR-FLAG is \"f\", get the flagged messages.
The Org-syntax text will be pushed to the kill ring, and also returned.

(fn &optional SELECT-OR-FLAG)" t nil) (autoload (quote org-mac-outlook-message-insert-selected) "org-mac-link" "Insert a link to the messages currently selected in Microsoft Outlook.app.
This will use AppleScript to get the message-id and the subject
of the active mail in Microsoft Outlook.app and make a link out
of it.

(fn)" t nil) (autoload (quote org-mac-outlook-message-insert-flagged) "org-mac-link" "Asks for an org buffer and a heading within it, and replace message links.
If heading exists, delete all mac-outlook:// links within
heading's first level.  If heading doesn't exist, create it at
point-max.  Insert list of mac-outlook:// links to flagged mail
after heading.

(fn ORG-BUFFER ORG-HEADING)" t nil) (autoload (quote org-mac-evernote-note-insert-selected) "org-mac-link" "Insert a link to the notes currently selected in Evernote.app.
This will use AppleScript to get the note id and the title of the
note(s) in Evernote.app and make a link out of it/them.

(fn)" t nil) (autoload (quote org-mac-devonthink-item-insert-selected) "org-mac-link" "Insert a link to the item(s) currently selected in DEVONthink Pro Office.
This will use AppleScript to get the `uuid'(s) and the name(s) of the
selected items in DEVONthink Pro Office and make link(s) out of it/them.

(fn)" t nil) (autoload (quote org-mac-message-get-links) "org-mac-link" "Create links to the messages currently selected or flagged in Mail.app.
This will use AppleScript to get the message-id and the subject of the
messages in Mail.app and make a link out of it.
When SELECT-OR-FLAG is \"s\", get the selected messages (this is also
the default).  When SELECT-OR-FLAG is \"f\", get the flagged messages.
The Org-syntax text will be pushed to the kill ring, and also returned.

(fn &optional SELECT-OR-FLAG)" t nil) (autoload (quote org-mac-message-insert-selected) "org-mac-link" "Insert a link to the messages currently selected in Mail.app.
This will use AppleScript to get the message-id and the subject of the
active mail in Mail.app and make a link out of it.

(fn)" t nil) (autoload (quote org-mac-message-insert-flagged) "org-mac-link" "Asks for an org buffer and a heading within it, and replace message links.
If heading exists, delete all message:// links within heading's first
level.  If heading doesn't exist, create it at point-max.  Insert
list of message:// links to flagged mail after heading.

(fn ORG-BUFFER ORG-HEADING)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-mac-link" (quote ("org-" "as-get-s")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-macro" (quote ("org-macro-")))) (autoload (quote org-load-noerror-mustsuffix) "org-macs" "Load FILE with optional arguments NOERROR and MUSTSUFFIX.

(fn FILE)" nil t) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-macs" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-mairix" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-man" (quote ("org-man-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-mew" (quote ("org-mew-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-mhe" (quote ("org-mhe-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-mobile" (quote ("org-mobile-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-mouse" (quote ("org-mouse-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-notify" (quote ("org-notify-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-notmuch" (quote ("org-notmuch-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-panel" (quote ("orgpan-")))) (autoload (quote org-passwords-mode) "org-passwords" "Mode for storing passwords

(fn)" t nil) (autoload (quote org-passwords) "org-passwords" "Open the password file. Open the password file defined by the
variable `org-password-file' in read-only mode and kill that
buffer later according to the value of the variable
`org-passwords-time-opened'. It also adds the `org-password-file'
to the auto-mode-alist so that it is opened with its mode being
`org-passwords-mode'.

With prefix arg ARG, the command does not set up a timer to kill the buffer.

With a double prefix arg \\[universal-argument] \\[universal-argument], open the file for editing.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-passwords" (quote ("org-passwords-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-pcomplete" (quote ("org-" "pcomplete/org-mode/")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-plot" (quote ("org-plot")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-protocol" (quote ("org-protocol-")))) (autoload (quote org-registry-show) "org-registry" "Show Org files where there are links pointing to the current
buffer.

(fn &optional VISIT)" t nil) (autoload (quote org-registry-visit) "org-registry" "If an Org file contains a link to the current location, visit
this file.

(fn)" t nil) (autoload (quote org-registry-initialize) "org-registry" "Initialize `org-registry-alist'.
If FROM-SCRATCH is non-nil or the registry does not exist yet,
create a new registry from scratch and eval it. If the registry
exists, eval `org-registry-file' and make it the new value for
`org-registry-alist'.

(fn &optional FROM-SCRATCH)" t nil) (autoload (quote org-registry-insinuate) "org-registry" "Call `org-registry-update' after saving in Org-mode.
Use with caution.  This could slow down things a bit.

(fn)" t nil) (autoload (quote org-registry-update) "org-registry" "Update the registry for the current Org file.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-registry" (quote ("org-registry-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-rmail" (quote ("org-rmail-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-screen" (quote ("org-screen")))) (autoload (quote org-screenshot-take) "org-screenshot" "Take a screenshot and insert link to it at point, if image
display is already on (see \\[org-toggle-inline-images])
screenshot will be displayed as an image

Screen area for the screenshot is selected with the mouse, left
click on a window screenshots that window, while left click and
drag selects a region. Pressing any key cancels the screen shot

With `C-u' universal argument waits one second after target is
selected before taking the screenshot. With double `C-u' wait two
seconds.

With triple `C-u' wait 3 seconds, and also rings the bell when
screenshot is done, any more `C-u' after that increases delay by
2 seconds

(fn &optional DELAY)" t nil) (autoload (quote org-screenshot-rotate-prev) "org-screenshot" "Rotate last screenshot with one of the previously taken
screenshots from the same directory. If DIR is negative, rotate
in the other direction

(fn DIR)" t nil) (autoload (quote org-screenshot-rotate-next) "org-screenshot" "Rotate last screenshot with one of the previously taken
screenshots from the same directory. If DIR is negative, rotate
in the other direction

(fn DIR)" t nil) (autoload (quote org-screenshot-show-unused) "org-screenshot" "Open A Dired buffer with unused screenshots marked

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-screenshot" (quote ("org-screenshot-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-secretary" (quote ("org-sec-" "join")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-src" (quote ("org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-static-mathjax" (quote ("org-static-mathjax-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-sudoku" (quote ("org-sudoku-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-table" (quote ("org")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-tempo" (quote ("org-tempo-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-timer" (quote ("org-timer-")))) (autoload (quote org-toc-show) "org-toc" "Show the table of contents of the current Org-mode buffer.

(fn &optional DEPTH POSITION)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-toc" (quote ("org-")))) (autoload (quote org-track-fetch-package) "org-track" "Fetch Org package depending on `org-track-fetch-package-extension'.
If DIRECTORY is defined, unpack the package there, i.e. add the
subdirectory org-mode/ to DIRECTORY.

(fn &optional DIRECTORY)" t nil) (autoload (quote org-track-compile-org) "org-track" "Compile all *.el files that come with org-mode.
Generate the autoloads file `org-loaddefs.el'.

DIRECTORY is where the directory org-mode/ lives (i.e. the
          parent directory of your local repo.

(fn &optional DIRECTORY)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-track" (quote ("org-track-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-velocity" (quote ("org-velocity")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-vm" (quote ("org-vm-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-w3m" (quote ("org-w3m-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-wikinodes" (quote ("org-wikinodes-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "org-wl" (quote ("org-wl-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "orgtbl-sqlinsert" (quote ("orgtbl-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox" (quote ("org-export-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-ascii" (quote ("org-ascii-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-beamer" (quote ("org-beamer-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-bibtex" (quote ("org-bibtex-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-confluence" (quote ("org-confluence-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-deck" (quote ("org-deck-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-extra" (quote ("org-" "ox-extras")))) (autoload (quote org-freemind-export-to-freemind) "ox-freemind" "Export current buffer to a Freemind Mindmap file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"<body>\" and \"</body>\" tags.

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return output file's name.

(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-freemind" (quote ("org-freemind-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-groff" (quote ("org-groff-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-html" (quote ("org-html-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-icalendar" (quote ("org-icalendar-")))) (autoload (quote org-koma-letter-export-as-latex) "ox-koma-letter" "Export current buffer as a KOMA Scrlttr2 letter.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a proeprty list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Export is done in a buffer named \"*Org KOMA-LETTER Export*\".  It
will be displayed if `org-export-show-temporary-export-buffer' is
non-nil.

(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil) (autoload (quote org-koma-letter-export-to-latex) "ox-koma-letter" "Export current buffer as a KOMA Scrlttr2 letter (tex).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

When optional argument PUB-DIR is set, use it as the publishing
directory.

Return output file's name.

(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil) (autoload (quote org-koma-letter-export-to-pdf) "ox-koma-letter" "Export current buffer as a KOMA Scrlttr2 letter (pdf).

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

When optional argument BODY-ONLY is non-nil, only write code
between \"\\begin{letter}\" and \"\\end{letter}\".

EXT-PLIST, when provided, is a property list with external
parameters overriding Org default settings, but still inferior to
file-local settings.

Return PDF file's name.

(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-koma-letter" (quote ("org-koma-letter-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-latex" (quote ("org-latex-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-man" (quote ("org-man-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-md" (quote ("org-md-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-odt" (quote ("org-odt-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-org" (quote ("org-org-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-publish" (quote ("org-publish-")))) (autoload (quote org-rss-export-as-rss) "ox-rss" "Export current buffer to a RSS buffer.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting buffer should be accessible
through the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Export is done in a buffer named \"*Org RSS Export*\", which will
be displayed when `org-export-show-temporary-export-buffer' is
non-nil.

(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil) (autoload (quote org-rss-export-to-rss) "ox-rss" "Export current buffer to a RSS file.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil) (autoload (quote org-rss-publish-to-rss) "ox-rss" "Publish an org file to RSS.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

(fn PLIST FILENAME PUB-DIR)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-rss" (quote ("org-rss-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-s5" (quote ("org-s5-")))) (autoload (quote org-taskjuggler-export) "ox-taskjuggler" "Export current buffer to a TaskJuggler file.

The exporter looks for a tree with tag that matches
`org-taskjuggler-project-tag' and takes this as the tasks for
this project.  The first node of this tree defines the project
properties such as project name and project period.

If there is a tree with tag that matches
`org-taskjuggler-resource-tag' this tree is taken as resources
for the project.  If no resources are specified, a default
resource is created and allocated to the project.

Also the TaskJuggler project will be created with default reports
as defined in `org-taskjuggler-default-reports'.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

A non-nil optional argument ASYNC means the process should happen
asynchronously.  The resulting file should be accessible through
the `org-export-stack' interface.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return output file's name.

(fn &optional ASYNC SUBTREEP VISIBLE-ONLY)" t nil) (autoload (quote org-taskjuggler-export-and-process) "ox-taskjuggler" "Export current buffer to a TaskJuggler file and process it.

The exporter looks for a tree with tag that matches
`org-taskjuggler-project-tag' and takes this as the tasks for
this project.  The first node of this tree defines the project
properties such as project name and project period.

If there is a tree with tag that matches
`org-taskjuggler-resource-tag' this tree is taken as resources
for the project.  If no resources are specified, a default
resource is created and allocated to the project.

Also the TaskJuggler project will be created with default reports
as defined in `org-taskjuggler-default-reports'.

If narrowing is active in the current buffer, only export its
narrowed part.

If a region is active, export that region.

When optional argument SUBTREEP is non-nil, export the sub-tree
at point, extracting information from the headline properties
first.

When optional argument VISIBLE-ONLY is non-nil, don't export
contents of hidden elements.

Return a list of reports.

(fn &optional SUBTREEP VISIBLE-ONLY)" t nil) (autoload (quote org-taskjuggler-export-process-and-open) "ox-taskjuggler" "Export current buffer to a TaskJuggler file, process and open it.

Export and process the file using
`org-taskjuggler-export-and-process' and open the generated
reports with a browser.

If you are targeting TaskJuggler 2.4 (see
`org-taskjuggler-target-version') the processing and display of
the reports is done using the TaskJuggler GUI.

(fn &optional SUBTREEP VISIBLE-ONLY)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-taskjuggler" (quote ("org-taskjuggler-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "ox-texinfo" (quote ("org-texinfo-")))) (provide (quote org-plus-contrib-autoloads))) "move-lines" ((move-lines move-lines-autoloads) (autoload (quote move-lines-up) "move-lines" "Moves the current line or, if region is actives, the lines surrounding
region, up by N lines, or 1 line if N is nil.

(fn N)" t nil) (autoload (quote move-lines-down) "move-lines" "Moves the current line or, if region is actives, the lines surrounding
region, down by N lines, or 1 line if N is nil.

(fn N)" t nil) (autoload (quote move-lines-binding) "move-lines" "Sets the default key binding for moving lines. M-p or M-<up> for moving up
and M-n or M-<down> for moving down.

(fn)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "move-lines" (quote ("move-lines--internal")))) (provide (quote move-lines-autoloads))) "jabber" ((srv jabber jabber-xml jabber-xmessage jabber-wmii jabber-widget jabber-watch jabber-version jabber-vcard jabber-vcard-avatars jabber-util jabber-truncate jabber-tmux jabber-time jabber-socks5 jabber-si-server jabber-si-common jabber-si-client jabber-search jabber-screen jabber-sawfish jabber-sasl jabber-rtt jabber-roster jabber-register jabber-ratpoison jabber-private jabber-presence jabber-ping jabber-ourversion jabber-osd jabber-notifications jabber-muc jabber-muc-nick-completion jabber-muc-nick-coloring jabber-modeline jabber-menu jabber-logon jabber-libnotify jabber-keymap jabber-keepalive jabber-iq jabber-history jabber-gmail jabber-ft-server jabber-ft-common jabber-ft-client jabber-festival jabber-feature-neg jabber-export jabber-events jabber-disco jabber-core jabber-console jabber-conn jabber-compose jabber-chatstates jabber-chatbuffer jabber-chat jabber-browse jabber-bookmarks jabber-awesome jabber-avatar jabber-autoloads jabber-autoaway jabber-alert jabber-ahc jabber-ahc-presence jabber-activity) (defvar jabber-account-list nil "List of Jabber accounts.
Each element of the list is a cons cell describing a Jabber account,
where the car is a JID and the CDR is an alist.

JID is a full Jabber ID string (e.g. foo@bar.tld). You can also
specify the resource (e.g. foo@bar.tld/emacs).
The following keys can be present in the alist:

  :password is a string to authenticate ourself against the server.
  It can be empty.  If you don't want to store your password in your
  Emacs configuration, try auth-source (info node `(auth)Top').

  :network-server is a string identifying the address to connect to,
  if it's different from the server part of the JID.

  :port is the port to use (default depends on connection type).

  :connection-type is a symbol. Valid symbols are `starttls',
  `network' and `ssl'.

Only JID is mandatory.  The rest can be guessed at run-time.

Examples:

Two accounts without any special configuration:
((\"foo@example.com\") (\"bar@example.net\"))

One disabled account with a non-standard port:
((\"romeo@montague.net\" (:port . 5242) (:disabled . t)))

If you don't have SRV and STARTTLS capabilities in your Emacs,
configure a Google Talk account like this:
((\"username@gmail.com\" 
  (:network-server . \"talk.google.com\")
  (:connection-type . ssl)))") (custom-autoload (quote jabber-account-list) "jabber" t) (defvar *jabber-current-status* nil "the users current presence status") (defvar *jabber-current-show* nil "the users current presence show") (defvar *jabber-current-priority* nil "the user's current priority") (defconst jabber-presence-faces (quote (("" . jabber-roster-user-online) ("away" . jabber-roster-user-away) ("xa" . jabber-roster-user-xa) ("dnd" . jabber-roster-user-dnd) ("chat" . jabber-roster-user-chatty) ("error" . jabber-roster-user-error) (nil . jabber-roster-user-offline))) "Mapping from presence types to faces") (autoload (quote jabber-customize) "jabber" "customize jabber options

(fn)" t nil) (autoload (quote jabber-info) "jabber" "open jabber.el manual

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber" (quote ("jabber-" "*jabber-status-history*")))) (defvar jabber-activity-mode t "Non-nil if Jabber-Activity mode is enabled.
See the `jabber-activity-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `jabber-activity-mode'.") (custom-autoload (quote jabber-activity-mode) "jabber-activity" nil) (autoload (quote jabber-activity-mode) "jabber-activity" "Toggle display of activity in hidden jabber buffers in the mode line.

With a numeric arg, enable this display if arg is positive.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-activity" (quote ("jabber-activity-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-ahc" (quote ("jabber-ahc-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-ahc-presence" (quote ("jabber-ahc-presence")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-alert" (quote ("jabber-" "define-" "beep" "echo")))) (autoload (quote jabber-autoaway-start) "jabber-autoaway" "Start autoaway timer.
The IGNORED argument is there so you can put this function in
`jabber-post-connect-hooks'.

(fn &optional IGNORED)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-autoaway" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-avatar" (quote ("jabber-" "avatar")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-awesome" (quote ("awesome" "jabber-awesome-")))) (autoload (quote jabber-get-conference-data) "jabber-bookmarks" "Get bookmark data for CONFERENCE-JID.
KEY may be nil or one of :name, :autojoin, :nick and :password.
If KEY is nil, a plist containing the above keys is returned.
CONT is called when the result is available, with JC and the
result as arguments.  If CONT is nil, return the requested data
immediately, and return nil if it is not in the cache.

(fn JC CONFERENCE-JID CONT &optional KEY)" nil nil) (autoload (quote jabber-parse-conference-bookmark) "jabber-bookmarks" "Convert a <conference/> tag into a plist.
The plist may contain the keys :jid, :name, :autojoin,
:nick and :password.

(fn NODE)" nil nil) (autoload (quote jabber-get-bookmarks) "jabber-bookmarks" "Retrieve bookmarks (if needed) and call CONT.
Arguments to CONT are JC and the bookmark list.  CONT will be
called as the result of a filter function or a timer.
If REFRESH is non-nil, always fetch bookmarks.

(fn JC CONT &optional REFRESH)" nil nil) (autoload (quote jabber-get-bookmarks-from-cache) "jabber-bookmarks" "Return cached bookmarks for JC.
If bookmarks have not yet been fetched by `jabber-get-bookmarks',
return nil.

(fn JC)" nil nil) (autoload (quote jabber-edit-bookmarks) "jabber-bookmarks" "Create a buffer for editing bookmarks interactively.

(fn JC)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-bookmarks" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-browse" (quote ("jabber-")))) (defvar jabber-chatting-with nil "JID of the person you are chatting with") (autoload (quote jabber-chat-get-buffer) "jabber-chat" "Return the chat buffer for chatting with CHAT-WITH (bare or full JID).
Either a string or a buffer is returned, so use `get-buffer' or
`get-buffer-create'.

(fn CHAT-WITH)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-chat" (quote ("jabber-")))) (defvar jabber-buffer-connection nil "The connection used by this buffer.") (make-variable-buffer-local (quote jabber-buffer-connection)) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-chatbuffer" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-chatstates" (quote ("jabber-")))) (autoload (quote jabber-compose) "jabber-compose" "Create a buffer for composing a Jabber message.

(fn JC &optional RECIPIENT)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-compose" (quote ("jabber-compose-send")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-conn" (quote ("jabber-" "*jabber-virtual-server-function*")))) (autoload (quote jabber-process-console) "jabber-console" "Log XML-DATA i/o as XML in \"*-jabber-console-JID-*\" buffer

(fn JC DIRECTION XML-DATA)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-console" (quote ("jabber-")))) (autoload (quote jabber-connect-all) "jabber" "Connect to all configured Jabber accounts.
See `jabber-account-list'.
If no accounts are configured (or ARG supplied), call `jabber-connect' interactively." t) (autoload (quote jabber-connect) "jabber" "Connect to the Jabber server and start a Jabber XML stream.
With prefix argument, register a new account.
With double prefix argument, specify more connection details." t) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-core" (quote ("jabber-" "*jabber-")))) (eval-after-load "jabber-core" (quote (add-to-list (quote jabber-presence-chain) (function jabber-process-caps)))) (autoload (quote jabber-process-caps) "jabber-disco" "Look for entity capabilities in presence stanzas.

(fn JC XML-DATA)" nil nil) (autoload (quote jabber-disco-advertise-feature) "jabber-disco" "

(fn FEATURE)" nil nil) (autoload (quote jabber-caps-presence-element) "jabber-disco" "

(fn JC)" nil nil) (eval-after-load "jabber-presence" (quote (add-to-list (quote jabber-presence-element-functions) (function jabber-caps-presence-element)))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-disco" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-events" (quote ("jabber-")))) (autoload (quote jabber-export-roster) "jabber-export" "Export roster for connection JC.

(fn JC)" t nil) (autoload (quote jabber-import-roster) "jabber-export" "Create buffer for roster import for connection JC from FILE.

(fn JC FILE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-export" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-feature-neg" (quote ("jabber-fn-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-ft-client" (quote ("jabber-ft-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-ft-common" (quote ("jabber-ft-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-ft-server" (quote ("jabber-ft-")))) (autoload (quote jabber-gmail-subscribe) "jabber-gmail" "Subscribe to gmail notifications.
See http://code.google.com/apis/talk/jep_extensions/usersettings.html#4

(fn JC)" t nil) (autoload (quote jabber-gmail-query) "jabber-gmail" "Request mail information from the Google Talk server (a.k.a. one shot query).
See http://code.google.com/apis/talk/jep_extensions/gmail.html#requestmail

(fn JC)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-gmail" (quote ("jabber-gmail-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-history" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-iq" (quote ("jabber-" "*jabber-open-info-queries*")))) (let ((loads (get (quote jabber-keepalive) (quote custom-loads)))) (if (member (quote "jabber-keepalive") loads) nil (put (quote jabber-keepalive) (quote custom-loads) (cons (quote "jabber-keepalive") loads)))) (autoload (quote jabber-keepalive-start) "jabber-keepalive" "Activate keepalive.
That is, regularly send a ping request to the server, and
disconnect if it doesn't answer.  See `jabber-keepalive-interval'
and `jabber-keepalive-timeout'.

The JC argument makes it possible to add this function to
`jabber-post-connect-hooks'; it is ignored.  Keepalive is activated
for all accounts regardless of the argument.

(fn &optional JC)" t nil) (autoload (quote jabber-whitespace-ping-start) "jabber-keepalive" "Start sending whitespace pings at regular intervals.
See `jabber-whitespace-ping-interval'.

The JC argument is ignored; whitespace pings are enabled for all
accounts.

(fn &optional JC)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-keepalive" (quote ("jabber-")))) (defvar jabber-global-keymap (let ((map (make-sparse-keymap))) (define-key map "" (quote jabber-connect-all)) (define-key map "" (quote jabber-disconnect)) (define-key map "" (quote jabber-switch-to-roster-buffer)) (define-key map "
" (quote jabber-chat-with)) (define-key map "" (quote jabber-activity-switch-to)) (define-key map "" (quote jabber-send-away-presence)) (define-key map "" (quote jabber-send-default-presence)) (define-key map "" (quote jabber-send-xa-presence)) (define-key map "" (quote jabber-send-presence)) map) "Global Jabber keymap (usually under C-x C-j)") (define-key ctl-x-map "
" jabber-global-keymap) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-keymap" (quote ("jabber-common-keymap")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-libnotify" (quote ("libnotify" "jabber-libnotify-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-logon" (quote ("jabber-")))) (defvar jabber-menu (let ((map (make-sparse-keymap "jabber-menu"))) (define-key-after map [jabber-menu-connect] (quote ("Connect" . jabber-connect-all))) (define-key-after map [jabber-menu-disconnect] (quote (menu-item "Disconnect" jabber-disconnect :enable (bound-and-true-p jabber-connections)))) (define-key-after map [jabber-menu-status] (\` (menu-item "Set Status" (\, (make-sparse-keymap "set-status")) :enable (bound-and-true-p jabber-connections)))) (define-key map [jabber-menu-status jabber-menu-status-chat] (quote (menu-item "Chatty" (lambda nil (interactive) (jabber-send-presence "chat" (jabber-read-with-input-method "status message: " *jabber-current-status* (quote *jabber-status-history*)) *jabber-current-priority*)) :button (:radio and (boundp (quote *jabber-current-show*)) (equal *jabber-current-show* "chat"))))) (define-key map [jabber-menu-status jabber-menu-status-dnd] (quote (menu-item "Do not Disturb" (lambda nil (interactive) (jabber-send-presence "dnd" (jabber-read-with-input-method "status message: " *jabber-current-status* (quote *jabber-status-history*)) *jabber-current-priority*)) :button (:radio and (boundp (quote *jabber-current-show*)) (equal *jabber-current-show* "dnd"))))) (define-key map [jabber-menu-status jabber-menu-status-xa] (quote (menu-item "Extended Away" jabber-send-xa-presence :button (:radio and (boundp (quote *jabber-current-show*)) (equal *jabber-current-show* "xa"))))) (define-key map [jabber-menu-status jabber-menu-status-away] (quote (menu-item "Away" jabber-send-away-presence :button (:radio and (boundp (quote *jabber-current-show*)) (equal *jabber-current-show* "away"))))) (define-key map [jabber-menu-status jabber-menu-status-online] (quote (menu-item "Online" jabber-send-default-presence :button (:radio and (boundp (quote *jabber-current-show*)) (equal *jabber-current-show* ""))))) (define-key-after map [separator] (quote (menu-item "--"))) (define-key-after map [jabber-menu-chat-with] (quote (menu-item "Chat with..." jabber-chat-with :enable (bound-and-true-p jabber-connections)))) (define-key-after map [jabber-menu-nextmsg] (quote (menu-item "Next unread message" jabber-activity-switch-to :enable (bound-and-true-p jabber-activity-jids)))) (define-key-after map [jabber-menu-send-subscription-request] (quote (menu-item "Send subscription request" jabber-send-subscription-request :enable (bound-and-true-p jabber-connections)))) (define-key-after map [jabber-menu-roster] (quote ("Switch to roster" . jabber-switch-to-roster-buffer))) (define-key-after map [separator2] (quote (menu-item "--"))) (define-key-after map [jabber-menu-customize] (quote ("Customize" . jabber-customize))) (define-key-after map [jabber-menu-info] (quote ("Help" . jabber-info))) map)) (defvar jabber-display-menu (quote maybe) "Decide whether the \"Jabber\" menu is displayed in the menu bar.
If t, always display.
If nil, never display.
If maybe, display if jabber.el is installed under `package-user-dir', or
if any of `jabber-account-list' or `jabber-connections' is non-nil.") (custom-autoload (quote jabber-display-menu) "jabber-menu" t) (define-key-after (lookup-key global-map [menu-bar]) [jabber-menu] (list (quote menu-item) "Jabber" jabber-menu :visible (quote (or (eq jabber-display-menu t) (and (eq jabber-display-menu (quote maybe)) (or (bound-and-true-p jabber-account-list) (bound-and-true-p jabber-connections))))))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-menu" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-modeline" (quote ("jabber-mode-line-")))) (defvar *jabber-active-groupchats* nil "alist of groupchats and nicknames
Keys are strings, the bare JID of the room.
Values are strings.") (defvar jabber-muc-printers (quote nil) "List of functions that may be able to print part of a MUC message.
This gets prepended to `jabber-chat-printers', which see.") (autoload (quote jabber-muc-get-buffer) "jabber-muc" "Return the chat buffer for chatroom GROUP.
Either a string or a buffer is returned, so use `get-buffer' or
`get-buffer-create'.

(fn GROUP)" nil nil) (autoload (quote jabber-muc-private-get-buffer) "jabber-muc" "Return the chat buffer for private chat with NICKNAME in GROUP.
Either a string or a buffer is returned, so use `get-buffer' or
`get-buffer-create'.

(fn GROUP NICKNAME)" nil nil) (autoload (quote jabber-muc-vcard-get) "jabber-muc" "Request vcard from chat with NICKNAME in GROUP.

(fn JC GROUP NICKNAME)" t nil) (autoload (quote jabber-muc-message-p) "jabber-muc" "Return non-nil if MESSAGE is a groupchat message.
That does not include private messages in a groupchat, but does
include groupchat invites.

(fn MESSAGE)" nil nil) (autoload (quote jabber-muc-sender-p) "jabber-muc" "Return non-nil if JID is a full JID of an MUC participant.

(fn JID)" nil nil) (autoload (quote jabber-muc-private-message-p) "jabber-muc" "Return non-nil if MESSAGE is a private message in a groupchat.

(fn MESSAGE)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-muc" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-muc-nick-coloring" (quote ("jabber-muc-")))) (autoload (quote jabber-muc-looks-like-personal-p) "jabber-muc-nick-completion" "Return non-nil if jabber MESSAGE is addresed to me.
Optional argument GROUP to look.

(fn MESSAGE &optional GROUP)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-muc-nick-completion" (quote ("try-expand-jabber-muc" "jabber-" "*jabber-muc-participant-last-speaking*")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-ourversion" (quote ("jabber-version")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-ping" (quote ("jabber-p")))) (autoload (quote jabber-send-presence) "jabber-presence" "Set presence for all accounts.

(fn SHOW STATUS PRIORITY)" t nil) (autoload (quote jabber-send-default-presence) "jabber-presence" "Send default presence.
Default presence is specified by `jabber-default-show',
`jabber-default-status', and `jabber-default-priority'.

(fn &optional IGNORE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-presence" (quote ("jabber-")))) (autoload (quote jabber-private-get) "jabber-private" "Retrieve an item from private XML storage.
The item to retrieve is identified by NODE-NAME (a symbol) and
NAMESPACE (a string).

On success, SUCCESS-CALLBACK is called with JC and the retrieved
XML fragment.

On error, ERROR-CALLBACK is called with JC and the entire IQ
result.

(fn JC NODE-NAME NAMESPACE SUCCESS-CALLBACK ERROR-CALLBACK)" nil nil) (autoload (quote jabber-private-set) "jabber-private" "Store FRAGMENT in private XML storage.
SUCCESS-CALLBACK, SUCCESS-CLOSURE-DATA, ERROR-CALLBACK and
ERROR-CLOSURE-DATA are used as in `jabber-send-iq'.

(fn JC FRAGMENT &optional SUCCESS-CALLBACK SUCCESS-CLOSURE-DATA ERROR-CALLBACK ERROR-CLOSURE-DATA)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-private" (quote ("jabber-private-get-1")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-ratpoison" (quote ("ratpoison" "jabber-ratpoison-message")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-register" (quote ("jabber-")))) (autoload (quote jabber-switch-to-roster-buffer) "jabber-roster" "Switch to roster buffer.
Optional JC argument is ignored; it's there so this function can
be used in `jabber-post-connection-hooks'.

(fn &optional JC)" t nil) (autoload (quote jabber-roster-update) "jabber-roster" "Update roster, in memory and on display.
Add NEW-ITEMS, update CHANGED-ITEMS and remove DELETED-ITEMS, all
three being lists of JID symbols.

(fn JC NEW-ITEMS CHANGED-ITEMS DELETED-ITEMS)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-roster" (quote ("jabber-")))) (eval-after-load "jabber-disco" (quote (jabber-disco-advertise-feature "urn:xmpp:rtt:0"))) (eval-after-load "jabber-core" (quote (add-to-list (quote jabber-message-chain) (function jabber-rtt-handle-message) t))) (autoload (quote jabber-rtt-handle-message) "jabber-rtt" "

(fn JC XML-DATA)" nil nil) (autoload (quote jabber-rtt-send-mode) "jabber-rtt" "Show text to recipient as it is being typed.
This lets the recipient see every change made to the message up
until it's sent.  The recipient's client needs to implement
XEP-0301, In-Band Real Time Text.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-rtt" (quote ("jabber-rtt-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-sasl" (quote ("jabber-sasl-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-sawfish" (quote ("sawfish" "jabber-sawfish-display-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-screen" (quote ("screen" "jabber-screen-message")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-search" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-si-client" (quote ("jabber-si-initiate")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-si-common" (quote ("jabber-si-stream-methods")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-si-server" (quote ("jabber-si-pro")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-socks5" (quote ("jabber-socks5")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-time" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-tmux" (quote ("tmux" "jabber-tmux-message")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-truncate" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-util" (quote ("jabber-" "string>-numerical" "url-xmpp")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-vcard" (quote ("jabber-vcard-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-vcard-avatars" (quote ("jabber-vcard-avatars-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-version" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-watch" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-widget" (quote ("jid-complete" "jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-wmii" (quote ("wmii" "jabber-wmii-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-xmessage" (quote ("xmessage" "jabber-xmessage-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "jabber-xml" (quote ("jabber-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "srv" (quote ("srv-")))) (provide (quote jabber-autoloads))) "point-im" ((point-im point-im-autoloads) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "point-im" (quote ("point-im-" "def-")))) (provide (quote point-im-autoloads)))))

#s(hash-table size 65 test eq rehash-size 1.5 rehash-threshold 0.8125 data (org-elpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 1 "org-plus-contrib" (org-plus-contrib :type git :repo "https://code.orgmode.org/bzg/org-mode.git" :local-repo "org" :files (:defaults "contrib/lisp/*.el")) "jabber" nil)) melpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 1 "jabber" (jabber :type git :files ("*.el" "*.texi" ("jabber-fallback-lib" "jabber-fallback-lib/hexrgb.el")) :repo "https://github.com/legoscia/emacs-jabber.git")))))

("org-elpa" "melpa" "gnu-elpa" "emacsmirror" "straight" "emacs" "move-lines" "point-im" "jabber")

t
