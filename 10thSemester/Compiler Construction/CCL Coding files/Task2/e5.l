%option noyywrap
digit [0-9]
a [a-z]
p [p]
q [q]

%%

({p}{a}*{q}) {printf("Found a match. \n");}
({a}*) {printf("Not match. \n");}
({p}{digit}*{q}) {printf("Not match. \n");}
({p}{digit}*{a}*{q}) {printf("Found a match. \n");}
({p}{a}*{digit}*{q}{digit}) {printf("Not match. \n");}
. return 0;

%%

int main(){
    yylex();
    return 0;
}