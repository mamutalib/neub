%option noyywrap
a [a-z]
digit [0-9]
p [p]
q [q]

%%
.return 0;
%%

int main(){
	yylex();
	return 0;
}