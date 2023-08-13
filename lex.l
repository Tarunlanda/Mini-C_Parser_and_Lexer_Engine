%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    #include "y.tab.h"
    extern int count;
    int state = 0;
%}

%option header="parser.h"

%%

#define {
    return DEFINE;
    state = 1;
}

#include {
    return INCLUDE;
}

((<[a-zA-Z0-9\.]+>)|(\"[a-zA-Z0-9\.]+\")) {
    return LIBRARY;}

int {
    return INT;
}

main {
    return MAIN;
}

if {
    return IF;
}

else {
    return ELSE;
}

for {
    return FOR;
}

"+" {
    return PLUS;
}

"-" {
    return MINUS;
}

"*" {
    return MULT;
}

"/" {
    return DIV;
}

"%" {
    return MOD;
}

"=" {
    return ASSIGN;
}

"<" {
    return LT;
}

"<=" {
    return LE;
}

">" {
    return GT;
}

">=" {
    return GE;
}

"==" {
    return EQ;
}

\/\/.* {
    //ignore comments
}

\/\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+\/ {
    //ignore comments
}

[0-9]+ {
    return INTEGER;
}

[_a-zA-Z]+[_a-zA-Z0-9]{0,30} {
    if(state == 1)
    {
        return MACRO;
        state = 0;
    }
    else
    {
        return ID;
    }
}

";" {
    return SEMICOLON;
}

"(" {
    return LPAREN;
}

")" {
    return RPAREN;
}

"{" {
    return LBRACE;
}

"}" {
    return RBRACE;
}

[\t] {
    //ignore tabs
}

[ \n] {
    count++;
}

%%

int yywrap(void)
{
    return 1;
}
