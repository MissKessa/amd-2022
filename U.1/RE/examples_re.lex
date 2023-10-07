import java.io.InputStreamReader;
import java.lang.System;

%%
%char
%public
%standalone
%full

LETTER=([a-zA-Z])
DIGIT=([0-9])

COMMENT=("#"[^;:\n#-]*)

UO=([Uu][Oo]{DIGIT}{DIGIT}{DIGIT}{DIGIT}{DIGIT}?{DIGIT}?)

USERNAME=({LETTER}(("."({DIGIT}|{LETTER}))|({DIGIT}|{LETTER}))*)
DOMAIN=(uniovi"."((com)|(es)))
EMAIL=({USERNAME}"@"{DOMAIN})

CODE=([AEIOU][AEIOU][AEIOU]+"-"{DIGIT}({DIGIT}{DIGIT})*"-"{LETTER}*[W]{LETTER})




%%
{COMMENT}		{System.out.println("SCANNER:: COMMENT("+yytext()+")");}
{UO}		 	{System.out.println("SCANNER:: UO("+yytext()+")");}
{EMAIL}		 	{System.out.println("SCANNER:: EMAIL("+yytext()+")");}
{CODE}		 	{System.out.println("SCANNER:: CODE("+yytext()+")");}


(\t|\n|" ")    {}
.*             {System.out.println("SCANNER:: LEXICAL ERROR("+yytext()+")");}
