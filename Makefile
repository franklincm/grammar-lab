.DEFAULT_GOAL := build

lex: dice.l
	lex dice.l

build: lex
	@mkdir -p bin
	gcc -o bin/dice lex.yy.c -ll

clean:
	$(RM) -rf bin
	$(RM) -rf lex.yy.c
.PHONY:clean
