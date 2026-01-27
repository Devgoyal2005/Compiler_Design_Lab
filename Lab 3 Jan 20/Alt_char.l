%{
#include<stdio.h>
int alt =1;
%}

%%
. {if(alt%2==0)
{
    printf(" %s",yytext);
}
alt+=1;}



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
