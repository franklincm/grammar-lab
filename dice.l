%{
#include <stdio.h>
%}
%%
" "				;
[0-9]+			printf("Integer\n");
"("				printf("LParen\n");
")"				printf("RParen\n");
[\+|-]			printf("AddOp");
[\*|/]			printf("MulOp\n");
(=|<|>|>=|<=)	printf("RelOp\n");
min				printf("MinF\n");
max				printf("MaxF\n");
count			printf("countf\n");
%%
