/* just like Unix wc */
%{
int c=0;
%}
%%

[a-zA-Z_][a-zA-Z0-9_]* { c++; printf("it is valid identifier=%s   ",yytext);}
. ;
%%
main(int argc, char **argv)
{
 yylex();
printf("total number of identifier %d \n ",c);
}
