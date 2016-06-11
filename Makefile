OUT=qocamlbrowser
.PHONY: all clean install uninstall
OB=ocamlbuild -use-ocamlfind -classic-display -j 2


all: 
	$(OB)  src/libcppstubs.a


clean:
	rm -fr _build program.native

install:
	cp _build/src/program.native $(PREFIX)/bin/$(OUT)

uninstall:
	rm -fr $(PREFIX)/bin/$(OUT)

