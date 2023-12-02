%{
#include<stdio.h>
#include "lex.yy.c"
void yyerror();
%}
%token NUMBER
%token VARIABLE
%left '+''-'
%left '*''/''%'
%left '('')'
%%
S: VARIABLE'='E{
printf("\n Entered arithmetic expression is valid\n\n");
return 0;}
E:E'+'E
| E'-'E
| E'*'E
| E'/'E
| E'%'E
| '('E')'
| NUMBER
| VARIABLE
;
%%
int main()
{
printf ("\n Enter any arithmetic expression which can have operations addition, subtraction, multiplication, division, modulus and rounded brackets:\n");
yyparse();
}
void yyerror()
{
printf("\n Entered arithmetic expression is invalid\n\n");
}
