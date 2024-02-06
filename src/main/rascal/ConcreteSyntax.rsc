module ConcreteSyntax

lexical IntegerLiteral = [0-9]+ !>> [0-9];
lexical Identifier = [a-zA-Z][a-zA-Z0-9]* !>> [a-zA-Z0-9];
lexical String =   "\"" ![\"]*  "\"" | "\'" ![\']* "\'";


// syntax Function = \function : "function" Identifier "(" { Identifier "," }* ")" "{" Expression "}";



start syntax Expression 
  = 
    right let: "let" Expression "=" Expression  ";"
   |right let: "let" Expression "=" Expression
  | right \const: "const" Expression "=" Expression
  | right \const: "const" Expression "=" Expression ";"
  
    | condition: "if" "(" Expression ")" "{" Expression "}" "else" "{" Expression "}"
    | bracket "(" Expression ")"
    | variable: Identifier
    | literal: IntegerLiteral
    | string: String
    | \return: "return" Expression ";"
    > left memberAccess: Expression "." Expression
    > left memberAccess: Expression "." Expression ";"
    | \function: "function" Expression "(" { Expression "," }* ")" "{" Expression "}"
    | \function: "function" "(" { Expression "," }* ")" "{" Expression "}"
    | call: Expression "(" { Expression "," }* ")"
    | \list: "[" { Expression ","}* "]"
    | arrowFunction: "(" { Expression ","}* ")" "=" "\>" "{" Expression "}"
    | \for: "for" "(" Expression ";" Expression ";" Expression ")" "{" Expression "}"
    | \forIn: "for" "(" Expression "in" Expression ")" "{" Expression "}"
    | \forOf: "for" "(" Expression "of" Expression ")" "{" Expression "}"
    | \while: "while" "(" Expression ")" "{" Expression "}"
    | doWhile: "do" "{" Expression "}" "while" "(" Expression ")" ";"
    | blockExpression: "{" Expression "}"
    > non-assoc (
        left mul: Expression "*" Expression
      | left add: Expression "+" Expression
      | left sub: Expression "-" Expression
      | non-assoc div: Expression "/" Expression
    ) 
    
    >
    non-assoc (
        non-assoc gt: Expression "\>" Expression
      | non-assoc lt:  Expression "\<" Expression
      | non-assoc geq:  Expression "\>=" Expression
      | non-assoc leq:  Expression "\<=" Expression

    )
    > right sequence: Expression ";" Expression
    > right increment: Expression "++"
    > right decrement: Expression "--"
    > right (
        right assign: Expression "=" Expression
      | right addAssign: Expression "+=" Expression
      | right subAssign: Expression "-=" Expression
      | right mulAssign: Expression "*=" Expression
      | right divAssign: Expression "/=" Expression
      | right modAssign: Expression "%=" Expression
    )
    
    > left (
        left eq: Expression "==" Expression
      | left neq: Expression "!=" Expression
      | left strictEq: Expression "===" Expression
      | left strictNeq: Expression "!==" Expression

    )
    > left (
        left and: Expression "&&" Expression
      | left or: Expression "||" Expression
      | left ternary: Expression "?" Expression ":" Expression
      | left not: "!" Expression
    )

;


keyword Keywords
    = "let"
    | "const"
    | "if"
    | "else"
    | "return"
    | "function"
    | "switch"
    | "case"
    | "default"
    | "break"
    | "continue"
    | "for"
    | "while"
    | "do"
    | "in"
    | "of"
    | "true"
    | "false"
    | "null"
    | "undefined"
    | "import"
    | "export"
    | "from"
    | "as"
    | "try"
    | "catch"
    | "finally"
    | "throw"
    | "new"
    | "class"
    | "extends"
    | "super"
    | "this"
    | "typeof"
    | "instanceof"
    ;

layout Whitespace
    = [\ \t\n]*;