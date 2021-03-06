#!/usr/bin/env ocaml
#directory "pkg"
#use "topkg.ml"


let ocamlbuild =
  "ocamlbuild -use-ocamlfind -classic-display -plugin-tag 'package(cppo_ocamlbuild)'"

let () =
  Pkg.describe "ppx_deriving_morphism" ~builder:(`Other (ocamlbuild, "_build")) [
    Pkg.lib "pkg/META";
    Pkg.lib ~exts:Exts.library "src/ppx_deriving_morphism";
    Pkg.lib ~exts:Exts.library "src/ppx_deriving_folder";
    Pkg.lib ~exts:Exts.library "src/ppx_deriving_mapper";
    Pkg.doc "README.md";
    Pkg.doc "LICENSE";
    Pkg.doc "CHANGELOG.md"; ]
