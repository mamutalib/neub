%option noyywrap
digit [0-9]
a [0]
b [1]
c [3]
d [5]
e [7]
f [8]
g [9]
%%

({a}+{b}+{c}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}) {printf("Valid.");}
({a}+{b}+{d}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}) {printf("Valid.");}
({a}+{b}+{e}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}) {printf("Valid.");}
({a}+{b}+{f}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}) {printf("Valid.");}
({a}+{b}+{g}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}) {printf("Valid.");}

({a}+{b}+{c}+{digit}*) {printf("Not Valid.");}
({a}+{b}+{d}+{digit}*) {printf("Not Valid.");}
({a}+{b}+{e}+{digit}*) {printf("Not Valid.");}
({a}+{b}+{f}+{digit}*) {printf("Not Valid.");}
({a}+{b}+{g}+{digit}*) {printf("Not Valid.");}

({a}+{b}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}+{digit}) {printf("Not Valid.");}
({digit}*) {printf("Not Valid.");}
. return 0;

%%

int main(){
    yylex();
    return 0;
}