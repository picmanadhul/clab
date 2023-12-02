%{
#include "y.tab.h"
%}
%%
[0-9] {return DIGIT;}
[a-zA-Z] {return LETTER;}
[\t] {;}
\n { return 0;}
. {return yytext[0];}
%%
int yywrap()
{
return 1;
}



// lex validvar.l
// yacc -d validvar.y
// cc -o validvar y.tab.c
// ./validvar
