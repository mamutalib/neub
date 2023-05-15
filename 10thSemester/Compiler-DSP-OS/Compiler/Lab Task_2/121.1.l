%option noyywrap
digit[0-9]

%%
{digit}*(121) {printf("valid token\n");}
((121){digit}*) {printf("Invalid token\n");}
{digit}* {printf("invalid token\n");}
exit
%%

int main(){
    yylex();
    return 0;
}
