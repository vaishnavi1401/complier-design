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
extern FILE *yyin;
yyin=fopen("input.txt","r");
yylex();
printf("line =%d \n word= %d char=%d",n,w,c);
}
