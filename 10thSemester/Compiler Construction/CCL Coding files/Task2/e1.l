%option noyywrap
digit [0-9]
a [1]
b [2]

%%

({digit}*{a}+{b}+{a}) {printf("Valid.");}
({digit}*{a}+{b}) {printf("Not Valid.");}
({digit}*) {printf("Not Valid.");}
({a}{digit}*) {printf("Not Valid.");}
({b}+{a}+{digit}*) {printf("Not Valid.");}
({b}{digit}*) {printf("Not Valid.");}
. return 0;

%%

int main(){
    yylex();
    return 0;
}