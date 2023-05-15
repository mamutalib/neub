%option noyywrap

digit [0-9]

%%

{digit}*(01){digit}* {printf("contained 01\n");}
({digit}*) {printf("not contained 01\n");}

.return 0;

%%

int main(){
	yylex();
return 0;
}