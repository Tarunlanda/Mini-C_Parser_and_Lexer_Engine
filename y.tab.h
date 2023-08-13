/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    DEFINE = 258,
    INCLUDE = 259,
    LIBRARY = 260,
    INT = 261,
    MACRO = 262,
    ID = 263,
    MAIN = 264,
    INTEGER = 265,
    IF = 266,
    ELSE = 267,
    FOR = 268,
    PLUS = 269,
    MINUS = 270,
    MULT = 271,
    DIV = 272,
    MOD = 273,
    ASSIGN = 274,
    LT = 275,
    GT = 276,
    GE = 277,
    LE = 278,
    EQ = 279,
    SEMICOLON = 280,
    LPAREN = 281,
    RPAREN = 282,
    LBRACE = 283,
    RBRACE = 284
  };
#endif
/* Tokens.  */
#define DEFINE 258
#define INCLUDE 259
#define LIBRARY 260
#define INT 261
#define MACRO 262
#define ID 263
#define MAIN 264
#define INTEGER 265
#define IF 266
#define ELSE 267
#define FOR 268
#define PLUS 269
#define MINUS 270
#define MULT 271
#define DIV 272
#define MOD 273
#define ASSIGN 274
#define LT 275
#define GT 276
#define GE 277
#define LE 278
#define EQ 279
#define SEMICOLON 280
#define LPAREN 281
#define RPAREN 282
#define LBRACE 283
#define RBRACE 284

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
