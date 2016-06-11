````
➜  ocamlbuild-o-wtf git:(master) ✗ make
ocamlbuild -use-ocamlfind -classic-display -j 2  src/libcppstubs.a
ocamlfind ocamlopt unix.cmxa -I /home/kakadu/.opam/4.02.3/lib/ocamlbuild /home/kakadu/.opam/4.02.3/lib/ocamlbuild/ocamlbuildlib.cmxa -linkpkg myocamlbuild.ml /home/kakadu/.opam/4.02.3/lib/ocamlbuild/ocamlbuild.cmx -o myocamlbuild
ocamlfind ocamlc -g -c -o src/asdf1.o src/asdf1.c
ocamlfind ocamlc -g -c -o src/asdf2.o src/asdf2.c
ocamlfind ocamlmklib -o src/cppstubs src/asdf1.o src/asdf2.o
+ ocamlfind ocamlmklib -o src/cppstubs src/asdf1.o src/asdf2.o
gcc: error: src/asdf1.o: No such file or directory
gcc: error: src/asdf2.o: No such file or directory
gcc: fatal error: no input files
compilation terminated.
Command exited with code 2.
Makefile:7: recipe for target 'all' failed
make: *** [all] Error 10
➜  ocamlbuild-o-wtf git:(master) ✗ ls _build
asdf1.o  asdf2.o  _digests  _log  myocamlbuild  myocamlbuild.cmi  myocamlbuild.cmx  myocamlbuild.ml  myocamlbuild.o  src
➜  ocamlbuild-o-wtf git:(master) ✗ opam list -a | grep -e ocamlbuild -e ocamlfind
70:base-metaocaml-ocamlfind                --  Findlib toolchain configuration for 
71:base-ocamlbuild                       base  OCamlbuild binary and libraries dist
636:mybuild                                 --  Collection of ocamlbuild plugins (ex
687:ocamlbuild                               0  Build system distributed with the OC
688:ocamlbuild-atdgen                       --  Atdgen plugin for OCamlbuild
689:ocamlbuild-pkg                          --  An ocamlbuild plugin that helps pack
690:ocamlbuild-protoc                       --  ocaml-protoc plugin for Ocamlbuild
697:ocamlfind                            1.6.2  A library manager for OCaml
698:ocamlfind-lint                          --  Simple tool performing checks on ins
➜  ocamlbuild-o-wtf git:(master) ✗ 

````

