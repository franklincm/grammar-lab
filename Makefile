.DEFAULT_GOAL := build

lex: example.l
	lex example.l

build: lex
	@mkdir -p bin
	gcc -o bin/example lex.yy.c -ll

clean:
	$(RM) -rf bin
	$(RM) -rf lex.yy.c
.PHONY:clean
