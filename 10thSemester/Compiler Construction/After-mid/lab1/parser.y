%{
    #include <stdio.h>
    extern int yylex();
    void yyerror(char *s);
    void yyright(char *s);
%}

%token DIGIT ID NUM INT FLOAT ASSIGN SEMI PLUS SUB
%start stmt

%%
stmt: stmt type ID ASSIGN NUM SEMI
    | type ID SEMI
    | type ID ASSIGN ID op ID SEMI
    ;

type: INT
    | FLOAT
    ;

op: PLUS
    | SUB
    ;

%%

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}


int main() {
    yyparse();
    printf("Parser is finished.\n");
    return 0;
}