%{
#include<stdlib.h>
#include<stdio.h>
#define YYSTYPE int
int yyparse();
int yylex();
void yyerror(const char* const);
extern FILE *yyin;
%}
%error-verbose
%token ENTIER
%token FLOAT
%token CHAR
%token DOUBLE
%token VOID
%token FMAIN
%token CHAINE
%token ETCOM
%token DEFINE
%token RETURN
%token NUM
%token LIRE
%token ECRIRE
%token SI
%token SINON
%token TANTQUE
%left AFFECT
%left PLUS
%left MOINS
%left MULT
%left DIVI
%token VIRG
%token POINTVIRG
%token PAROUV
%token PARFER
%left EGAL
%left INF
%left INFEGAL
%left DIFF
%left SUP
%left SUPEGAL
%token ACCOUV
%token ACCFER
%token IDENT

%token END 0 "end of file" 

%start FICHIER

//regles de production
%%
FICHIER : PROGRAMME END ;
PROGRAMME : DECL_CONST PROGRAMME2 | DECL_VAR PROG | PROG;
PROGRAMME2 : DECL_VAR | PROG;
DECL_CONST : DEFINE IDENT NUM DECL_CONST2;
DECL_CONST2 : DECL_CONST | /*empty*/ ;
DECL_VAR : TYPE IDENT DECL_VAR2 ;
TYPE: ENTIER | VOID | FLOAT | DOUBLE | CHAR;
DECL_VAR2 : SUITE_VAR POINTVIRG DECL_VAR3 | POINTVIRG DECL_VAR |  POINTVIRG;
DECL_VAR3 : DECL_VAR | /*empty*/;
SUITE_VAR : VIRG IDENT SUITE_VAR2;
SUITE_VAR2 : SUITE_VAR | /*empty*/;
PROG : TYPE FMAIN PAROUV PARFER BLOC;
BLOC : ACCOUV BLOC1 ACCFER;
BLOC1 : BLOC2 BLOC3 | BLOC2;
BLOC2 : DECL_VAR | DECL_VAR AUTRES_INST | AUTRES_INST | /*empty*/ ;
BLOC3 : RETURN NUM_IDENT_RIEN POINTVIRG;
NUM_IDENT_RIEN : NUM | IDENT | /*empty*/;
AUTRES_INST : INSTRUCTION AUTRES_INST2;
AUTRES_INST2 : AUTRES_INST | /*empty*/;
INSTRUCTION : CONDITIONNELLE | ITERATION | AFFECTATION | LECTURE | ECRITURE;
CONDITIONNELLE : SI PAROUV EXP PARFER BLOC SUITE_COND;
SUITE_COND : /*empty*/ | SINON BLOC ;
ITERATION : TANTQUE PAROUV EXP PARFER BLOC ;
AFFECTATION : IDENT AFFECT EXP POINTVIRG ;
LECTURE : LIRE PAROUV LECTURE2 PARFER POINTVIRG ;
LECTURE2 : CHAINE VIRG ETCOM IDENT | ETCOM IDENT ;
ECRITURE : ECRIRE PAROUV ECRITURE2 ;
ECRITURE2 : EXP_OU_CH ECRITURE3 | PARFER POINTVIRG  ;
ECRITURE3 : AUTRES_ECRI PARFER POINTVIRG | PARFER POINTVIRG ;
AUTRES_ECRI : VIRG EXP_OU_CH AUTRES_ECRI2 ;
AUTRES_ECRI2 : AUTRES_ECRI | /*empty*/ ;
EXP_OU_CH : CHAINE  | EXP     ;
EXP : TERME EXP2 ;
EXP2 : OP_BIN EXP | OP_REL EXP | /*empty*/;
TERME : NUM | IDENT | PAROUV EXP PARFER | MOINS TERME ;
OP_BIN : PLUS | MOINS | MULT | DIVI;
OP_REL : EGAL | INF | INFEGAL | DIFF | SUPEGAL | SUP;
%%
void yyerror(const char* const s)
{
printf("yyerror : %s\n",s);
}

void main( int argc, char **argv )
//int main()
{
FILE *file = fopen(argv[1], "r");
//  yyin = fopen("fichier.txt", "r");  
if (!file) {
//if (!yyin) {
		printf("erreur fopen");
		exit -1;
	}
yyin = file;
if (yyparse()==0) printf("SUCCES : Le code est correct\n");
else printf("Le code est incorrect\n");

//return 0;
}
