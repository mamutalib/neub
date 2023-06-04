%option noyywrap

%{
    #include "parser.tab.h"
%}

digit [0-9]
letter [a-zA-Z]
id (_|{letter})({letter}|{digit})*
number ({digit})+

%%
"int" {return INT;}
"float" {return FLOAT;}
"=" {return ASSIGN;}
";" {return SEMI;}
"+" {return PLUS;}
"-" {return SUB;}
{digit} {return DIGIT;}
{id} {return ID;}
{number} {return NUM;}
%%