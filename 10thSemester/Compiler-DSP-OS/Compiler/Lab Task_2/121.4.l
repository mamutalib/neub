%option noyywrap

%%

[a-z]+ {
    int count = 0;
    char* p = yytext;
    while (*p != '\0') {
        switch (*p) {
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u':
                count++;
                break;
        }
        p++;
    }
    printf("%d", count);
}


%%

int main() {
    yylex();
    return 0;
}
