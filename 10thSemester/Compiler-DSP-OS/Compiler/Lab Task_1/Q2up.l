%option noyywrap 
a [a-z]
A [A-Z] 

%%

({A}{a}*) {printf("Found a match. \n");}
({a}*) {printf("Not match. \n");}
({A}*{a}*) {printf("Not match. \n");}
({a}*{A}*) {printf("Not match. \n");}
. return 0;

%%

int main(){
    yylex();
    return 0;
}