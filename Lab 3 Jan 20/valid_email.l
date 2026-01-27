%{
#include<stdio.h>
%}

%%

[a-z]+[0-9]*@gmail.com  { printf("\t %s is a valid email \n",yytext); }
.*          { printf("\t %s is not a valid email\n",yytext); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("\t Input a string \n");
    yylex();
    return 0;
}
