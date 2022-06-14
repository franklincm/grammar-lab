%{
#include <stdio.h>
int yylex();
void yyerror();
%}

%token D
%token INT
%token LPAREN RPAREN
%token ADDOP MULOP RELOP
%token MINF MAXF COUNT
%token NEWLINE

%start program

%%
program: 
	program line
    | line
;

line: 
	NEWLINE 
	| expr NEWLINE
;

expr:
	simple_expr
;

simple_expr:
	term simple_expr_t
;

simple_expr_t:
	| ADDOP term simple_expr_t
;

term:
	factor term_t
;

term_t:
	  | MULOP factor term_t
;

factor: 
	  INT factor_t
	  | LPAREN simple_expr RPAREN
;

factor_t:
		|D INT { printf("dice\n"); }
;

%%
int main(int argc, char **argv) {
	yyparse();
}

void yyerror (char const *s) {
  	fprintf (stderr, "%s\n", s);
}

