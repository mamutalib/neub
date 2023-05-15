%option noyywrap

a [a-z]
undscor [_]

%%
({a}*) {printf("Not Matched \n");}
({undscor}{a}*{undscor}) {printf("Found Matched \n");}
({undscor}{a}*{undscor}{a}*{undscor}) {printf("Found Matched \n");}
({undscor}*{a}*{undscor}{a}*{undscor}*) {printf("Found a matched \n");}
. return 0;

%%

int main() {
	yylex();
	return 0;

}


