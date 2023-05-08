%option noyywrap
digit [0-9]
dot [.]

%%

{digit}+{dot}{digit}+{dot}{digit}+{dot}{digit}+ {printf("IP Address. \n");}
{digit}+{dot}{digit}+{dot}{digit}+{dot} {printf("Not valid Address. \n");}
{digit}* {printf("Not valid Address. \n");}

. return 0;

%%

int main(){
    yylex();
    return 0;
}
