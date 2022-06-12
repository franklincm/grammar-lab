%{
#include <stdio.h>
#include "dice.tab.h"
%}

%%

[ \t ]			;
\n				return NEWLINE;
[d|D]			return D;
[0-9]+			return INT;
"("				return LPAREN;
")"				return RPAREN;
[\+|-]			return ADDOP;
[\*|/]			return MULOP;
(=|<|>|>=|<=)	return RELOP;
min				return MINF;
max				return MAXF;
count			return COUNT;

%%
