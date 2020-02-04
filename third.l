/*Ques 1. Design a lex program to count the number of vowels and number of consonents in a string*/   


%{
#include<stdio.h>
#include<string.h>
int vc=0,cc=0;
%}
%%
[aeiouAEIOU] vc++;
[a-zA-Z] cc++;
. ;
%%
int main()
{
yylex();
printf("Number of vowels = %d\n",vc);
printf("Number of consonents = %d\n",cc);
}
