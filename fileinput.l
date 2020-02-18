%{
int c=0;
%}
%%
[^ \n]* ++c; fprintf(yyout,"%d %s",c,yytext);
%%
main(int *argc,char **argv)
{
extern FILE *yyin,*yyout;
yyin=fopen(argv[1],"r");
yyout=fopen(argv[2],"w");
yylex();
}
