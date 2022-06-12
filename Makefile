.DEFAULT_GOAL := build

parser: dice.y
	bison -d dice.y

lexer: parser dice.l
	flex dice.l

build: lexer
	@mkdir -p bin
	gcc -o bin/dice dice.tab.c lex.yy.c -lfl

clean:
	$(RM) -rf bin
	$(RM) -rf lex.yy.c
	$(RM) -rf dice.tab.c
	$(RM) -rf dice.tab.h
.PHONY:clean
