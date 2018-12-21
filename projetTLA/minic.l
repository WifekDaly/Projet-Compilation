%{
#include<stdlib.h>
#include "y.tab.h"
extern YYSTYPE yylval;
%}
lettre [a-zA-Z]
chiffre [0-9]
chaine \".*\"
id {lettre}({lettre}|{chiffre})*
etcom "&"
opinf "<"
opinfeg "<="
opdiff "<>"
opsupeg ">="
opsup ">"
opadd "+"
opsous "-"
opmul "*"
opdiv "/"
opaffect "="
opegal "=="

%%
[ \t \n]          ;
int {return ENTIER;}
float {return FLOAT;}
char {return CHAR;}
void {return VOID;}
double {return DOUBLE;}
main {return FMAIN;}
{chaine} {return CHAINE;}
define {return DEFINE;}
scanf {return LIRE;}
printf {return ECRIRE;}
if {return SI;}
else {return SINON;}
while {return TANTQUE;}
return {return RETURN;}


{chiffre}+ {return NUM;}
{etcom} {return ETCOM;}
\, {return VIRG;}
\; {return POINTVIRG;}
\( {return PAROUV;}
\) {return PARFER;}
\{ {return ACCOUV;}
\} {return ACCFER;}

  

{opaffect} {return AFFECT;}
{opadd} {return PLUS;}
{opsous} {return MOINS;}
{opmul} {return MULT;}
{opdiv} {return DIVI;}
{opegal} {return EGAL;}
{opinf} {return INF;}
{opinfeg} {return INFEGAL;}
{opdiff} {return DIFF;}
{opsupeg} {return SUPEGAL;}
{opsup} {return SUP;}
{id} {return IDENT;}
