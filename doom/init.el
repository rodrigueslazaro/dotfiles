;;; init.el -*- lexical-binding: t; -*-
(setq evil-respect-visual-line-mode t)
(doom! :completion
       company             ; the ultimate code completion backend
       vertico             ; the search engine of the future

       :ui
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       (emoji +unicode)  ; 🙂
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       indent-guides     ; highlighted indent columns
       ligatures         ; ligatures and symbols to make your code pretty again
       modeline          ; snazzy, Atom-inspired modeline, plus API
       ophints           ; highlight the region an operation acts on
       (popup +defaults)   ; tame sudden yet inevitable temporary windows
       (vc-gutter +pretty) ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       workspaces        ; tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       snippets          ; my elves. They type so I don't have to

       :emacs
       dired             ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       undo              ; persistent, smarter undo for your inevitable mistakes
       vc                ; version-control and Emacs, sitting in a tree

       :checkers
       syntax              ; tasing you for every semicolon you forget

       :tools
       biblio              ; Writes a PhD for you (citation needed)
       (eval +overlay)     ; run code, run (also, repls)
       lookup              ; navigate your code and its documentation
       lsp                 ; M-x vscode
       magit               ; a git porcelain for Emacs

       :lang
       (cc +lsp)         ; C > C++ == 1
       clojure           ; java with a lisp
       common-lisp       ; if you've seen one lisp, you've seen them all
       (csharp +dotnet)    ; unity, .NET, and mono shenanigans
       (dart +flutter)   ; paint ui and not much else
       elixir            ; erlang done right
       emacs-lisp        ; drown in parentheses
       fortran           ; in FORTRAN, GOD is REAL (unless declared INTEGER)
       (go +lsp)         ; the hipster dialect
       (graphql +lsp)    ; Give queries a REST
       (haskell +lsp)    ; a language that's lazier than I am
       json              ; At least it ain't XML
       (java +lsp)       ; the poster child for carpal tunnel syndrome
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
       julia             ; a better, faster MATLAB
       kotlin            ; a better, slicker Java(Script)
       latex            ; writing papers in Emacs has never been so fun
       lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       (org +dragndrop
            +roam2)        ; organize your plain life in plain text
       php               ; perl's insecure younger brother
       python            ; beautiful is better than ugly
       (ruby +rails)     ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       (rust +lsp)       ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       scala             ; java, but good
       (scheme +guile)   ; a fully conniving family of lisps
       sh                ; she sells {ba,z,fi}sh shells on the C xor
       web               ; the tubes
       yaml              ; JSON, but readable
       zig               ; C, but simpler

       :config
       (default +bindings +smartparens))

