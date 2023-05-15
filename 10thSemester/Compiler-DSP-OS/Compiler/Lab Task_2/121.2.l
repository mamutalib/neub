%option noyywrap
digit[0-9]

%%
((01){digit}{digit}{digit}{digit}{digit}{digit}{digit}{digit}{digit}) {printf("valid token\n");}
{digit}*(01) {printf("Invalid token\n");}
{digit}* {printf("Invalid token\n");}
exit return 0;
%%

int main(){
    yylex();
    return 0;
}
