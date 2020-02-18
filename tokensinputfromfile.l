%{
int n=0;
%}
%%
"while"|"if"|"else" {n++; printf(" keywords: %s", yytext);}
"int"|"float"|"char" {n++; printf("\n keywords: %s", yytext);}
[A-Za-z_][a-zA-Z0-9_]* {n++; printf("\n identifiers: %s",yytext);}
"<="|"=="|"="|"++"|"+"|"-" {n++; printf("\n operators: %s",yytext);}
[0-9]*"."[0-9]+ {n++; printf("\n float: %s",yytext);}
[0-9]+ {n++; printf("\n integer: %s",yytext);}
. ;
%%
int main()
{
extern FILE *yyin ,*yyout;
yyin=fopen("inputcprogram.txt","r");
yylex();
printf("total no of tokens= %d", n);
}
