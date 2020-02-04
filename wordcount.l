/* just like Unix wc */
%{
int n,m,t,c;
%}
%%
\n n++;
\t m++;
[ ] t++;
. c++;

%%
main(int argc, char **argv)
{
 yylex();
printf("total number of lines %d \n tabs %d\n spaces %d \n chars %d",n,m,t,c);
}
