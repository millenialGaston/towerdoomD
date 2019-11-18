;;; init.el -*- lexical-binding: t; -*-

;; Copy this file to ~/.doom.d/init.el or ~/.config/doom/init.el ('doom install'
;; willdo this for you). The `doom!' block below controls what modules are
;; enabled and in what order they will be loaded. Remember to run 'doom refresh'
;; after modifying it.
;;
;; More information about these modules (and what flags they support) can be
;; found in modules/README.org.

(doom! :input
       ;;chinese
       ;;japanese

       :completion
       helm              ; the *other* search engine for love and life
       ;;ido               ; the other *other* search engine...
       ivy               ; a search engine for love and life

       ui
       ;;detft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       doom-quit         ; DOOM quit-message prompts when you quit Emacs
       ;;fill-column       ; a `fill-column' indicator
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       hydra
       ;;indent-guides     ; highlighted indent columns
       modeline          ; snazzy, Atom-inspired modeline, plus API
       nav-flash         ; blink the current line after jumping
       neotree           ; a project drawer, like NERDTree for vim
       ophints           ; highlight the region an operation acts on
       (popup            ; tame sudden yet inevitable temporary windows
         +default)             ; catch all popups that start with an asterix
       ; )       ; default popup rules
       pretty-code       ; replace bits of code with pretty symbols
       ;;tabs              ; an tab bar for Emacs
       treemacs          ; a project drawer, like neotree but cooler
       unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       window-select     ; visually switch windows
       workspaces        ; tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       (format +onsave)  ; automated prettiness
       ;;lispy             ; vim for lisp, for people who dont like vim
       multiple-cursors  ; editing in many places at once
       ;;objed             ; text object editing for the innocent
       ;;parinfer          ; turn lisp into python, sort of
       rotate-text       ; cycle region at point between text candidates
       snippets          ; my elves. They type so I don't have to
       ;;word-wrap         ; soft wrapping with language-aware indent

       :emacs
       dired             ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       vc                ; version-control and Emacs, sitting in a tree

       :term
       eshell            ; a consistent, cross-platform shell (WIP)
       shell             ; a terminal REPL for Emacs
       term              ; terminals in Emacs
       vterm             ; another terminals in Emacs

       :tools
       ;;ansible
       ;;debugger          ; FIXME stepping through code, to help you add bugs
       ;;direnv
       ;;docker
       ;;editorconfig      ; let someone else argue about tabs vs spaces
       ;;ein               ; tame Jupyter notebooks with emacs
       eval              ; run code, run (also, repls)
       flycheck          ; tasing you for every semicolon you forget
       flyspell          ; tasing you for misspelling mispelling
       gist              ; interacting with github gists
       (lookup           ; helps you navigate your code and documentation
         +docsets)        ; ...or in Dash docsets locally
       lsp
       ;;macos             ; MacOS-specific commands
       magit             ; a git porcelain for Emacs
       ;;make              ; run make tasks from Emacs
       ;;pass              ; password manager for nerds
       pdf               ; pdf enhancements
       ;;prodigy           ; FIXME managing external services & code builders
       rgb               ; creating color strings
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       ;;upload            ; map local to remote projects via ssh/ftp
       ;;wakatime

       :lang
       ;;agda              ; types of types of types of types...
       assembly          ; assembly for fun or debugging
       cc                ; C/C++/Obj-C madness
       ;;clojure           ; java with a lisp
       common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       ;;csharp            ; unity, .NET, and mono shenanigans
       data              ; config/data formats
       ;;erlang            ; an elegant language for a more civilized age
       ;;elixir            ; erlang done right
       ;;elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       ess               ; emacs speaks statistics
       ;;fsharp           ; ML stands for Microsoft's Language
       go                ; the hipster dialect
       (haskell +intero) ; a language that's lazier than I am
       hy                ; readability of scheme w/ speed of python
       idris             ;
       ;;(java +meghanada) ; the poster child for carpal tunnel syndrome
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
       julia             ; a better, faster MATLAB
       ;;kotlin            ; a better, slicker Java(Script)
       latex             ; writing papers in Emacs has never been so fun
       ;;lean
       ;;ledger            ; an accounting system in Emacs
       ;;lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       ;;nim               ; python + lisp at the speed of c
       ;;nix               ; I hereby declare "nix geht mehr!"
       ocaml             ; an objective camel
       (org              ; organize your plain life in plain text
         +dragndrop       ; drag & drop files/images into org buffers
         +ipython         ; ipython/jupyter support for babel
         +pandoc          ; export-with-pandoc support
         +pomodoro        ; be fruitful with the tomato technique
         +present)
       ;;perl              ; write code no one else can comprehend
       ;;php               ; perl's insecure younger brother
       ;;plantuml          ; diagrams for confusing people more
       ;;purescript        ; javascript, but functional
       python            ; beautiful is better than ugly
       qt                ; the 'cutest' gui framework ever
       racket            ; a DSL for DSLs
       ;;rest              ; Emacs as a REST client
       ;;ruby              ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;;rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;;scala             ; java, but good
       scheme            ; a fully conniving family of lisps
       sh                ; she sells {ba,z,fi}sh shells on the C xor
       ;;solidity          ; do you need a blockchain? No.
       swift             ; who asked for emoji variables?
       ;;terra             ; Earth and Moon in alignment for performance.
       ;;web               ; the tubes
       ;;vala              ; GObjective-C

       :email
       ;;(mu4e +gmail)       ; WIP
       ;;notmuch             ; WIP
       ;;(wanderlust +gmail) ; WIP

       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
       ;;calendar
       ;;irc               ; how neckbeards socialize
       ;;(rss +org)        ; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought
       ;;(write            ; emacs for writers (fiction, notes, papers, etc.)
       ;; +wordnut         ; wordnet (wn) search
       ;; +langtool)       ; a proofreader (grammar/style check) for Emacs

       :config
       ;; For literate config users. This will tangle+compile a config.org
       ;; literate config in your `doom-private-dir' whenever it changes.
       ;;literate

       ;; The default module sets reasonable defaults for Emacs. It also
       ;; provides a Spacemacs-inspired keybinding scheme and a smartparens
       ;; config. Use it as a reference for your own modules.
       (default +bindings +smartparens))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(ansi-color-names-vector
     ["#282a36" "#ff5555" "#50fa7b" "#f1fa8c" "#61bfff" "#ff79c6" "#8be9fd" "#f8f8f2"])
  '(company-begin-commands (quote (self-insert-command)))
  '(company-idle-delay 0.2)
  '(company-minimum-prefix-length 2)
  '(company-show-numbers t)
  '(company-tooltip-align-annotations t)
  '(compilation-message-face (quote default))
  '(custom-safe-themes
     (quote
       ("7d4340a89c1f576d1b5dec57635ab93cdc006524bda486b66d01a6f70cffb08e" "11e0bc5e71825b88527e973b80a84483a2cfa1568592230a32aedac2a32426c1" "030346c2470ddfdaca479610c56a9c2aa3e93d5de3a9696f335fd46417d8d3e4" "51043b04c31d7a62ae10466da95a37725638310a38c471cc2e9772891146ee52" "53760e1863395dedf3823564cbd2356e9345e6c74458dcc8ba171c039c7144ed" "dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" "f738c3eb5cfc7e730fea413f9cd8ba0624bd8b4837451660fe169f13f77c7814" "70ed3a0f434c63206a23012d9cdfbe6c6d4bb4685ad64154f37f3c15c10f3b90" "a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" "886fe9a7e4f5194f1c9b1438955a9776ff849f9e2f2bbb4fa7ed8879cdca0631" "ff829b1ac22bbb7cee5274391bc5c9b3ddb478e0ca0b94d97e23e8ae1a3f0c3e" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "341b2570a9bbfc1817074e3fad96a7eff06a75d8e2362c76a2c348d0e0877f31" "c8f959fb1ea32ddfc0f50db85fea2e7d86b72bb4d106803018be1c3566fd6c72" "018c8326bced5102b4c1b84e1739ba3c7602019c645875459f5e6dfc6b9d9437" "f589e634c9ff738341823a5a58fc200341b440611aaa8e0189df85b44533692b" "d6f04b6c269500d8a38f3fabadc1caa3c8fdf46e7e63ee15605af75a09d5441e" "071f5702a5445970105be9456a48423a87b8b9cfa4b1f76d15699b29123fb7d8" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "f2b83b9388b1a57f6286153130ee704243870d40ae9ec931d0a1798a5a916e76" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "f8fb7488faa7a70aee20b63560c36b3773bd0e4c56230a97297ad54ff8263930" "97965ccdac20cae22c5658c282544892959dc541af3e9ef8857dbf22eb70e82b" "f951343d4bbe5a90dba0f058de8317ca58a6822faa65d8463b0e751a07ec887c" "f8067b7d0dbffb29a79e0843797efabdf5e1cf326639874d8b407e9b034136a4" "9129c2759b8ba8e8396fe92535449de3e7ba61fd34569a488dd64e80f5041c9f" default)))
  '(fci-rule-color "#dedede")
  '(global-company-mode t)
  '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
  '(highlight-tail-colors
     (quote
       (("#3C3D37" . 0)
        ("#679A01" . 20)
        ("#4BBEAE" . 30)
        ("#1DB4D0" . 50)
        ("#9A8F21" . 60)
        ("#A75B00" . 70)
        ("#F309DF" . 85)
        ("#3C3D37" . 100))))
  '(jdee-db-active-breakpoint-face-colors (cons "#1E2029" "#bd93f9"))
  '(jdee-db-requested-breakpoint-face-colors (cons "#1E2029" "#50fa7b"))
  '(jdee-db-spec-breakpoint-face-colors (cons "#1E2029" "#565761"))
  '(line-spacing 0.2)
  '(magit-diff-use-overlays nil)
  '(objed-cursor-color "#ff5555")
  '(org-contacts-files (quote ("~/.personal/org/contacts.org")))
  '(pos-tip-background-color "#FFFACE")
  '(pos-tip-foreground-color "#272822")
  '(server-mode t)
  '(vc-annotate-background "#282a36")
  '(vc-annotate-color-map
     (list
       (cons 20 "#50fa7b")
       (cons 40 "#85fa80")
       (cons 60 "#bbf986")
       (cons 80 "#f1fa8c")
       (cons 100 "#f5e381")
       (cons 120 "#face76")
       (cons 140 "#ffb86c")
       (cons 160 "#ffa38a")
       (cons 180 "#ff8ea8")
       (cons 200 "#ff79c6")
       (cons 220 "#ff6da0")
       (cons 240 "#ff617a")
       (cons 260 "#ff5555")
       (cons 280 "#d45558")
       (cons 300 "#aa565a")
       (cons 320 "#80565d")
       (cons 340 "#6272a4")
       (cons 360 "#6272a4")))
  '(vc-annotate-very-old-color nil)
  '(weechat-color-list
     (quote
       (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(org-document-title ((t (:inherit default :family "Iosevka Nerd" :height 2.0 :underline nil))))
  '(org-level-1 ((t (:inherit default :weight bold :family "Iosevka Nerd" :height 1.7))))
  '(org-level-2 ((t (:inherit default :weight bold :family "Iosevka Nerd" :height 1.5))))
  '(org-level-3 ((t (:inherit default :weight bold :family "Iosevka Nerd" :height 1.25))))
  '(org-level-4 ((t (:inherit default :weight bold :family "Iosevka Nerd" :height 1.1))))
  '(org-level-5 ((t (:inherit default :weight bold :family "Iosevka Nerd"))))
  '(org-level-6 ((t (:inherit default :weight bold :family "Iosevka Nerd"))))
  '(org-level-7 ((t (:inherit default :weight bold :family "Iosevka Nerd"))))
  '(org-level-8 ((t (:inherit default :weight bold :family "Iosevka Nerd")))))
