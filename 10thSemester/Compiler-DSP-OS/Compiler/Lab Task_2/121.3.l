%option noyywrap
digit[0-9]
alphnum[0-9a-z]

%%
((abc){alphnum}*) {printf("valid token\n");}
{digit}* {printf("Invalid token\n");}
{alphnum}* {printf("Invalid token\n");}
. {return 0;}
%%

int main(){
    yylex();
    return 0;
}