/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

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
    END = 0,
    ENTIER = 258,
    FLOAT = 259,
    CHAR = 260,
    DOUBLE = 261,
    VOID = 262,
    FMAIN = 263,
    CHAINE = 264,
    ETCOM = 265,
    DEFINE = 266,
    RETURN = 267,
    NUM = 268,
    LIRE = 269,
    ECRIRE = 270,
    SI = 271,
    SINON = 272,
    TANTQUE = 273,
    AFFECT = 274,
    PLUS = 275,
    MOINS = 276,
    MULT = 277,
    DIVI = 278,
    VIRG = 279,
    POINTVIRG = 280,
    PAROUV = 281,
    PARFER = 282,
    EGAL = 283,
    INF = 284,
    INFEGAL = 285,
    DIFF = 286,
    SUP = 287,
    SUPEGAL = 288,
    ACCOUV = 289,
    ACCFER = 290,
    IDENT = 291
  };
#endif
/* Tokens.  */
#define END 0
#define ENTIER 258
#define FLOAT 259
#define CHAR 260
#define DOUBLE 261
#define VOID 262
#define FMAIN 263
#define CHAINE 264
#define ETCOM 265
#define DEFINE 266
#define RETURN 267
#define NUM 268
#define LIRE 269
#define ECRIRE 270
#define SI 271
#define SINON 272
#define TANTQUE 273
#define AFFECT 274
#define PLUS 275
#define MOINS 276
#define MULT 277
#define DIVI 278
#define VIRG 279
#define POINTVIRG 280
#define PAROUV 281
#define PARFER 282
#define EGAL 283
#define INF 284
#define INFEGAL 285
#define DIFF 286
#define SUP 287
#define SUPEGAL 288
#define ACCOUV 289
#define ACCFER 290
#define IDENT 291

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
