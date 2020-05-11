.PHONY: build clean all

build:
	mkdir pkg
	ocamlc unix.cma -output-obj -o pkg/embed_out.c embed_me1.ml embed_me2.ml embed_me3.ml
	cp main.c pkg
	cp -r ocaml-4.10.0-runtime pkg
	cp -r unix pkg/ocaml-4.10.0-runtime
	cp Makefile.pkg pkg/Makefile

clean:
	rm -rf pkg *.cm*

all: build
