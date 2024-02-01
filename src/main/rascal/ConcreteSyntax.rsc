module ConcreteSyntax

lexical IntegerLiteral = [0-9]+ !>> [0-9];
lexical Identifier = [a-zA-Z][a-zA-Z0-9]* !>> [a-zA-Z0-9];
lexical String =   "\"" ![\"]*  "\"" | "\'" ![\']* "\'"; 

// syntax Function = \function : "function" Identifier "(" { Identifier "," }* ")" "{" Expression "}";

start syntax Expression 
    = right let: "let" Identifier "=" Expression  ";"
    | right let: "let" Identifier "=" Expression
    | right \const: "const" Identifier "=" Expression
    | right \const: "const" Identifier "=" Expression ";"
    | condition: "if" "(" Expression ")" "{" Expression "}" "else" "{" Expression "}"
    | bracket "(" Expression ")"
    | variable: Identifier
    | literal: IntegerLiteral
    | string: String
    | \return: "return" Expression ";"
    | \function: "function" Identifier "(" { Identifier "," }* ")" "{" Expression "}"
    | arrowFunction: "(" { Identifier ","}* ")" "=" "\>" "{" Expression "}"
    > non-assoc (
        left mul: Expression "*" Expression
      | non-assoc div: Expression "/" Expression
    ) 
    > left (
        left add: Expression "+" Expression
      | left sub: Expression "-" Expression
    )
    >
    non-assoc (
        non-assoc gt: Expression "\>" Expression
      | non-assoc lt:  Expression "\<" Expression
      | non-assoc geq:  Expression "\>=" Expression
      | non-assoc leq:  Expression "\<=" Expression
    )
    > right sequence: Expression ";" Expression

;


layout Whitespace
    = [\ \t\n]*;