%{ 
%}

%% 
\/\/(.*) ; 
\/\*(.*\n)*.*\*\/  ; 

%% 

int main(int k,char **argcv) 
{ 
yyin=fopen("argcv[0]","r"); 
yyout=fopen("out.c","w"); 
yylex(); 
return 0; 
} 

