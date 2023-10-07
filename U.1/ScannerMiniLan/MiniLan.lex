import java.io.InputStreamReader;
import java.lang.System;

%%
%char
%public
%standalone
%full



DIGIT=([0-9])
INTEGER=({DIGIT}+)
LETTER=([A-Za-z])
BLANK=(" "|\t)
COMMENT=("//"({LETTER}|{DIGIT}|{BLANK})*)
REAL=({DIGIT}*"."{DIGIT}+) | ({DIGIT}+"."{DIGIT}*)
IDENT=({LETTER}(({LETTER}|{DIGIT}|"_")*({LETTER}|{DIGIT}))*)

%%
;				{System.out.println("SCANNER:: found punctuation symbol SEMICOLON");}
"+"				{System.out.println("SCANNER:: found Operator ADD");}
"-"				{System.out.println("SCANNER:: found Operator MINUS");}
"*"				{System.out.println("SCANNER:: found Operator MULT");}
"/"				{System.out.println("SCANNER:: found Operator DIV");}
"("				{System.out.println("SCANNER:: found symbol LP");}
")"				{System.out.println("SCANNER:: found symbol RP");}
"<"				{System.out.println("SCANNER:: found symbol LT");}
">"				{System.out.println("SCANNER:: found symbol GT");}
"=="			{System.out.println("SCANNER:: found symbol EQ");}
"="				{System.out.println("SCANNER:: found Operator SET");}
begin			{System.out.println("SCANNER:: found Reserved Word BEGIN");}
end				{System.out.println("SCANNER:: found Reserved Word END");}
print			{System.out.println("SCANNER:: found Reserved Word PRINT");}
{REAL}    	    {System.out.println("SCANNER:: found REAL <"+ yytext() +">");}
{INTEGER}    	{System.out.println("SCANNER:: found NUMBER <"+ yytext() +">");}
{COMMENT}    	{System.out.println("SCANNER:: comment line <"+ yytext() +">");}
{IDENT}    		{System.out.println("SCANNER:: found IDENT <"+ yytext() +">");}

(" "|\t|\n)+   	{}
. 	     		{System.out.println("SCANNER:: Unmatched input <"+ yytext() +">");}
