import java.io.InputStreamReader;
import java.lang.System;
%%
%char
%public
%standalone
%full





%%
;				{System.out.println("SCANNER:: SEMICOLON");}
"+"      	   	{System.out.println("SCANNER:: PLUS");}
begin			{System.out.println("SCANNER:: BEGIN");}
end			{System.out.println("SCANNER:: end");}
(" "|\t|\n)+   	{}
. 	     		{System.out.println("SCANNER:: Unmatched String");}
