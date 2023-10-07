// MiniLan.lex

import java.lang.System;

import java_cup.runtime.Symbol;
%%

%{
// This variable determines if the scanner prints
// messages on the screen (true) or if it only returns
// the token to the parser (false). You can change
// this value depending on whether you are interested
// in knowing what the scanner does or not. 
boolean output = true;
%}


%char
%public
%cup
%full
%type java_cup.runtime.Symbol


DIGIT=([0-9])
INTEGER=({DIGIT}+)

LETTER=([A-Za-z])
BLANK=(" "|\t)
COMMENT=("//"({LETTER}|{DIGIT}|{BLANK})*)
REAL=(({DIGIT}*"."{DIGIT}+)|({DIGIT}+"."{DIGIT}*))
IDENT=({LETTER}(({LETTER}|{DIGIT}|"_")*({LETTER}|{DIGIT}))?)

%%
begin			{if (output) System.out.println("SCANNER:: BEGIN");
                         return new Symbol(sym.BEGIN);}
end				{if (output) System.out.println("SCANNER:: END");
                         return new Symbol(sym.END);}
print			{if (output) System.out.println("SCANNER:: PRINT");
                         return new Symbol(sym.PRINT);}
;				{if (output) System.out.println("SCANNER:: EOS");
                         return new Symbol(sym.EOS);}
"("				{if (output) System.out.println("SCANNER:: LP");
                         return new Symbol(sym.LP);}
")"				{if (output) System.out.println("SCANNER:: RP");
                         return new Symbol(sym.RP);}
"+"      		{if (output) System.out.println("SCANNER:: PLUS");
						return new Symbol(sym.PLUS);}
"-"      		{if (output) System.out.println("SCANNER:: MINUS");
						return new Symbol(sym.MINUS);}
"/"      		{if (output) System.out.println("SCANNER:: DIV");
						return new Symbol(sym.DIV);}
\*      		{if (output) System.out.println("SCANNER:: MULT");
						return new Symbol(sym.MULT);}
{INTEGER}		{if (output) System.out.println("SCANNER:: NUMBER <"+yytext()+">");
						return new Symbol(sym.NUMBER);}
{REAL}			{if (output) System.out.println("SCANNER:: NUMBER <"+yytext()+">");
						return new Symbol(sym.NUMBER);}
{IDENT}			{if (output) System.out.println("SCANNER:: IDENT <"+yytext()+">");
						return new Symbol(sym.IDENT);}
{COMMENT}		{if (output) System.out.println("SCANNER:: COMMENT <"+yytext()+">");}
(" "|\t|\n|\r)+ {}
.      			{if (output) System.out.println("SCANNER:: Unmatched input "+ yytext());}
