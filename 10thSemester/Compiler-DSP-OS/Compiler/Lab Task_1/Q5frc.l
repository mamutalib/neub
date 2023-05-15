%option noyywrap
digit [0-9]
dot [.]

%%

({digit}*{dot}{digit}+) {printf("Fractional Number. \n");}
({digit}*{dot}) {printf("Invalid Number. \n");}
({digit}*) {printf("Integer. \n");}
. return 0;

%%

int main(){
    yylex();
    return 0;
}