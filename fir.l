/*Ques 1. Design a lex program to count the number of lines*/   

%{
int l=0;
%}
%%
\n l++;
. ;
%%
int main()
{
yylex();
printf("Number of lines = %d\n",l);
}
