module Syntax

lexical IntegerLiteral = [0-9]+ !>> [0-9];
lexical Identifier = [a-zA-Z][a-zA-Z0-9]* !>> [a-zA-Z0-9];

start syntax Expression 
    = right let: "let" Expression "=" Expression ";"
    | condition: "if" "(" Expression ")" "{" Expression "}" "else" "{" Expression "}"
    | bracket "(" Expression ")"
    | variable: Identifier
    | literal: IntegerLiteral

;

layout Whitespace
    = [\ \t\n]*;