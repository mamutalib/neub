%option noyywrap
a [a-z]
A [A-Z]

%%
({A}{a}*) {printf("Found Matched\n");}
({a}*) {printf("Not matched\n");}
({a}*{A}{a}*) {printf("Not matched\n");}
({a}*{A}*) {printf("Not match. \n");}
({A}*{a}*) {printf("Not match. \n");}

.return 0;
%%

int main() {
	yylex();
	return 0;
}