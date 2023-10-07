java -jar jflex-full-1.7.0.jar MiniLan.lex
java -jar java-cup-11b.jar MiniLan.cup
javac -cp "java-cup-11b-runtime;./*" *.java
