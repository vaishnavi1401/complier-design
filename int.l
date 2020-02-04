/* just like Unix wc */
%{
int n=0,m=0;
%}
%%
[0-9]+ 			{m++;printf("\t integer =%s",yytext);}
[0-9]*"."[0-9]+	{n++;printf("\t float =%s",yytext);}
. ;
%%
main()
{
 yylex();
printf("total number of integers %d \n tabs %d\n",n,m);
}
