module Data

extend Syntax;

data Expression
    = let(Expression LeftHandSide, Expression RightHandSide)
    | condition(Expression condition, Expression then, Expression \else)
    | variable(str name)
    | literal(int literal)
    ;


data Binding = binding(str variable, Expression expression);