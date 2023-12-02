%{
#include<stdio.h>
#include "y.tab.h"
%}
%%
[a-zA-Z]+ {return (VARIABLE);}
[0-9] {return (NUMBER);}
[\t] {;}
[\n] {return 0;}
. {return yytext[0]; }
%%
int yywrap()
{
return 1;
}




// lex ari.l
// yacc -d ari.y
//gcc -o ari y.tab.c
//./ari
//Enter any arithmetic expression which can have operations addition,
//subtraction, multiplication, division, modulus and rounded brackets:
//A=b+c*d
