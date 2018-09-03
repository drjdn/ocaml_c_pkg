.PHONY: build clean all

build:
	mkdir pkg
	ocamlc -output-obj -o pkg/embed_out.c embed_me1.ml embed_me2.ml
	cp main.c pkg
	cp -r ocaml-4.06.1-runtime pkg
	cp Makefile.pkg pkg/Makefile

clean:
	rm -rf pkg *.cm*

all: build
