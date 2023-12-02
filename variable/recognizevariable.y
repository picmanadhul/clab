%{
#include<stdio.h>
#include<stdlib.h>
#include "lex.yy.c"
%}
%token DIGIT LETTER
%%
stmt:A
;
A:LETTER | B
;
B: LETTER B
| DIGIT B
| LETTER
| DIGIT
;
%%
void main(){
printf("enter string \n");
yyparse();
printf("valid");
exit(0);
}
void yyerror()
{
printf("invalid");
exit(0);
}
