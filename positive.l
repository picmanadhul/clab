%%
[0-9]+ {printf("+ve no");}
-[0-9]+ {printf("-ve no");}
[a-zA-Z]+[A-Z0-9]* {printf("identifier");}
%%
int main()
{
yylex();
}
int yywrap()
{
return 1;
}

//lex positivenegative.l
// cc lex.yy.c
//./a.out

