%option noyywrap
digit [0-9]
alp [a-z]
a [a]
b [b]
c [c]

%%

({a}+{b}+{c}+{digit}*+{alp}*) {printf("Valid.");}
({a}{digit}*+{alp}*) {printf("Not Valid.");}
({alp}*) {printf("Not Valid.");}
({digit}*) {printf("Not Valid.");}
({alp}*{digit}*+{a}+{b}+{c}) {printf("Not Valid.");}
. return 0;

%%

int main(){
    yylex();
    return 0;
}