(lang dune 3.1)

(generate_opam_files true)

(using directory-targets 0.1)

(name melange-opam-template)

(source
 (github melange-re/melange-opam-template))

(license MIT)

(authors "Antonio Nuno Monteiro <anmonteiro@gmail.com>")

(maintainers "Antonio Nuno Monteiro <anmonteiro@gmail.com>")

(package
 (allow_empty)
 (name melange-opam-template)
 (synopsis "Project template for melange")
 (description
  "Template for a minimal melange project"))
