package fr.usmb.m1isc.compilation.tp;
import java_cup.runtime.Symbol;

%%

// nom de la class a generer
%class LexicalAnalyzer
%unicode
%line
%column
%cup

%{

%}


num         = [0-9]
space       = \s
mod         = "%" | "mod"|"MOD"
let         = "let"|"LET"
while       = "while" | "WHILE"
do          = "do" | "DO"
if          = "if" | "IF"
then        = "then" | "THEN"
else        = "else" | "ELSE"
input       = "input" | "INPUT"
output      = "output" | "OUTPUT"
nil         = "nil" | "NIL"
not         = "not" | "NOT"
and         = "and" | "AND"
or          = "or" | "OR"
true        = "true" | "TRUE"
false       = "false" | "FALSE"

id       = [:letter:]\w*
commentOne    = "//".*                            
commentMult    = "/*"([^*]|("*"+[^/*]))*"*"+"/"
comment     = {commentOne}|{commentMult}    

%% 
/* ------------------------Section des Regles Lexicales----------------------*/

/* regles */

{let}       { return new Symbol(sym.LET, yyline, yycolumn) ;}
{while}     { return new Symbol(sym.WHILE, yyline, yycolumn) ;}
">"         { return new Symbol(sym.GT, yyline, yycolumn) ;}
">="        { return new Symbol(sym.GTE, yyline, yycolumn) ;}
{then}      { return new Symbol(sym.THEN, yyline, yycolumn) ;}
{else}      { return new Symbol(sym.ELSE, yyline, yycolumn) ;}
{nil}       { return new Symbol(sym.NIL, yyline, yycolumn) ;}
"="         { return new Symbol(sym.EGAL, yyline, yycolumn) ;}
{input}     { return new Symbol(sym.INPUT, yyline, yycolumn) ;}
{output}    { return new Symbol(sym.OUTPUT, yyline, yycolumn) ;}
")"         { return new Symbol(sym.DROITE, yyline, yycolumn) ;}
"<"         { return new Symbol(sym.LT, yyline, yycolumn) ;}
"<="        { return new Symbol(sym.LTE, yyline, yycolumn) ;}
"("         { return new Symbol(sym.GAUCHE, yyline, yycolumn) ;}
"*"         { return new Symbol(sym.MUL, yyline, yycolumn) ;}
";"         { return new Symbol(sym.SEMI, yyline, yycolumn) ;}
"+"         { return new Symbol(sym.PLUS, yyline, yycolumn) ;}
"-"         { return new Symbol(sym.MOINS, yyline, yycolumn) ;}
"/"         { return new Symbol(sym.DIV, yyline, yycolumn) ;}
{mod}       { return new Symbol(sym.MOD, yyline, yycolumn) ;}
{true}      { return new Symbol(sym.TRUE, yyline, yycolumn) ;}
{false}     { return new Symbol(sym.FALSE, yyline, yycolumn) ;}
{do}        { return new Symbol(sym.DO, yyline, yycolumn) ;}
{if}        { return new Symbol(sym.IF, yyline, yycolumn) ;}
"?"         { return new Symbol(sym.IFTERN, yyline, yycolumn) ;}
":"         { return new Symbol(sym.ELSETERN, yyline, yycolumn) ;}
{and}       { return new Symbol(sym.AND, yyline, yycolumn) ;}
{or}        { return new Symbol(sym.OR, yyline, yycolumn) ;}
{not}       { return new Symbol(sym.NOT, yyline, yycolumn) ;}
"."         { return new Symbol(sym.POINT, yyline, yycolumn) ;}
{num}+      { return new Symbol(sym.ENTIER, yyline, yycolumn, Integer.valueOf(yytext())) ;}
{id}        { return new Symbol(sym.ID, yyline, yycolumn, yytext()) ;}
{comment}   { /*no action*/ }
{space}     { /*no action*/ }
.           { return new Symbol(sym.ERROR, yyline, yycolumn) ;}
