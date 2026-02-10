(lang dune 3.20)

(name coreutils)

(generate_opam_files true)

(source
 (github egriff89/ocaml-coreutils))

(authors "Eric Griffith <griffith.eric@pm.me>")

(maintainers "Eric Griffith <griffith.eric@pm.me>")

(license MIT)

(documentation https://url/to/documentation)

(package
 (name coreutils)
 (synopsis "GNU coreutils reimplemented in OCaml")
 (description "GNU coreutils reimplemented in OCaml as a learning exercise.")
 (depends ocaml clap core_unix)
 (tags
  ("gnu coreutils" ocaml utilities cli)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
