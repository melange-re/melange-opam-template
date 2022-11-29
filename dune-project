(lang dune 3.1)

(using directory-targets 0.1)

(generate_opam_files true)

(name melange-opam-template)

(license "MIT")

(package
 (allow_empty)
 (name melange-opam-template)
 (synopsis "Melange project")
 (description "Minimal melange project")
 (depends
  (ocaml
   (and
    (>= "4.14.0")
    (< "4.15.0")))
  mel
  melange
  (ocaml-lsp-server :dev)
  (dot-merlin-reader :dev)))
