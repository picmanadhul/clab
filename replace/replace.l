%%
""* {printf("");}
"\t" {printf("");}
"\n" {printf("");}
%%
int main()
{
extern FILE *yyin;
yyin=fopen("nw","r");
yylex();
}
int yywrap()
{
return 1;
}

//lex replace.l
//gcc -o replace lex.yy.c
//./replace
