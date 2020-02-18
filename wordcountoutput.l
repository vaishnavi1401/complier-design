%{
int n,w,c;
%}
%%
\n 		n++;
[^\n\t]+ 	{ w++ ; c=c+yyleng ;}
. 		c++;
%%
int main()
{
extern FILE *yyin ,*yyout;
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
fprintf(yyout," number of lines =%d \n number of words= %d\n number of characters=%d",n,w,c);
fclose(yyout);
return 0;

}
