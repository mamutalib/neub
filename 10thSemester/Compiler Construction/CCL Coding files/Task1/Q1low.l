%option noyywrap 
a [a-z]
unscor [_]
%%

^({a}*) {printf("Not match. \n");}
^({unscor}{a}*{unscor}) {printf("Found a match. \n");}
^({unscor}*{a}*{unscor}*) {printf("Found a match. \n");}
^({unscor}{a}*{unscor}{a}*{unscor}) {printf("Found a match. \n");}
. return 0;

%%

int main(){
    yylex();
    return 0;
}