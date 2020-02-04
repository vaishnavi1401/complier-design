/*Ques 1. Design a lex program to count the number of spaces*/   


%{
#include<stdio.h>
int sc=0;
%}
%%
[ ] sc++;
. ;
%%
int main()
{
yylex();
printf("Number of spaces = %d\n",sc);
}
