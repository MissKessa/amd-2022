java -jar jflex-full-1.7.0.jar %1.lex
javac Yylex.java
IF EXIST Yylex.java~ del Yylex.java~