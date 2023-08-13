%{
#include <stdio.h>
#include <stdlib.h>
void noerr();
void yyerror(const char *s);
// extern int yylineno;
// extern int yyleng;
// extern FILE * yyin;
int count=0;
#include "parser.h"

%}

%token DEFINE INCLUDE LIBRARY
%token INT
%token MACRO ID MAIN 
%token INTEGER
%token IF ELSE FOR
%token PLUS MINUS MULT DIV MOD ASSIGN
%token LT GT GE LE EQ SEMICOLON
%token LPAREN RPAREN LBRACE RBRACE

%left PLUS MINUS
%left MULT DIV MOD
%left LT GT LE GE EQ
%right ASSIGN

%nonassoc ELSE

%%
start:
	preproccesor start 
	| macro start 
	| main 
	| 
;

preproccesor:
	INCLUDE LIBRARY 
;

macro:
	DEFINE MACRO INTEGER 
	| DEFINE ID INTEGER 
;

main:
	INT MAIN LPAREN RPAREN LBRACE statement_list RBRACE   
;

statement_list:
	statement statement_list
	| statement 
	| LPAREN statement RPAREN 
	| 
;

statement:
	IF LPAREN expression RPAREN LBRACE statement_list RBRACE 
	| IF LPAREN expression RPAREN LBRACE statement_list RBRACE ELSE LBRACE statement_list RBRACE 
	| FOR LPAREN expression SEMICOLON expression SEMICOLON expression RPAREN LBRACE statement_list RBRACE 
	| expression SEMICOLON 
	|
;

expression:
	expression PLUS expression %prec PLUS
	| expression MINUS expression %prec MINUS
	| expression MULT expression %prec MULT
	| expression DIV expression %prec DIV
	| expression MOD expression %prec MOD
	| expression LT expression %prec LT
	| expression GT expression %prec GT
	| expression GE expression %prec GE
	| expression LE expression %prec LE
	| expression EQ expression %prec EQ
	| expression ASSIGN expression %prec ASSIGN
	| LPAREN expression RPAREN 
	| INTEGER 
	| ID 
	| INT 
	| expression expression 
;


%%
void yyerror(const char *s) 
{
    printf("Syntax error at line %d , character at %d %s\n", count, yyleng, s);
}

// void noerr()
// {
//     printf("OK at line %d, length %d \n", count, yyleng);
// }

int main(int argc, char *argv[])
{
	if (argc < 2) 
	{
        printf("Error: no input file specified\n");
        return 1;
    }
	FILE *fp = fopen(argv[1], "r");
    if (!fp) {
        printf("Error: could not open input file '%s'\n", argv[1]);
        return 1;
    }
    fclose(fp);

	yyin = fopen(argv[1], "r");
	if(!yyparse())
	{
		printf("\nParsing complete\n");
		printf("Parsing sucessful\n");
	}
	else
	{
		printf("\nParsing failed\n");
	}
	fclose(yyin);
    return 0;
} 