module AbstractSyntax

extend ConcreteSyntax;

// data \function = \function(str functionName, list[str] functionArguments, Expression FunctionBody);

data KeyValuePairs = keyValue(Expression name, Expression val);

data Expression
    = let(Expression lhs, Expression rhs)
    | \const(Expression lhs, Expression rhs)
    // | this()
    // | empty()
    | condition(Expression condition, Expression then, Expression \else)
    | blockExpression(Expression blockBody)
    | variable(str name)
    | literal(int literal)
    | string(str string)
    | \list(list[Expression] items)
    | object(list[KeyValuePairs] pairs)
    | property(Expression variable, Expression prop)
    | member(Expression variable, Expression mem)
    | \return(Expression expression)
    | \function(Expression functionName, list[Expression] functionArguments, Expression FunctionBody)
    | \function(list[Expression] functionArguments, Expression FunctionBody)
    | arrowFunction(list[Expression] arrowFunctionArguments, Expression arrowFunctionBody)
    | \for(Expression forInitializer, Expression forCondition, Expression forIncrement, Expression forBody)
    | \while(Expression whileCondition, Expression whileBody)
    | doWhile(Expression doBody, Expression doCondition)
    | \forIn(Expression forInVariable, Expression forInObject, Expression forInBody)
    | \forOf(Expression forOfVariable, Expression forOfObject, Expression forOfBody)
    | mul(Expression lhs, Expression rhs)
    | div(Expression lhs, Expression rhs)
    | add(Expression lhs, Expression rhs)
    | sub(Expression lhs, Expression rhs)
    | gt(Expression lhs, Expression rhs)
    | lt(Expression lhs, Expression rhs)
    | geq(Expression lhs, Expression rhs)
    | leq(Expression lhs, Expression rhs)
    | eq(Expression lhs, Expression rhs)
    | neq(Expression lhs, Expression rhs)
    | and(Expression lhs, Expression rhs)
    | or(Expression lhs, Expression rhs)
    | not(Expression expression)
    | assign(Expression lhs, Expression rhs)
    | addAssign(Expression lhs, Expression rhs)
    | subAssign(Expression lhs, Expression rhs)
    | mulAssign(Expression lhs, Expression rhs)
    | divAssign(Expression lhs, Expression rhs)
    | modAssign(Expression lhs, Expression rhs)
    
    | sequence(Expression first, Expression second)
    | increment(Expression expression)
    | decrement(Expression expression)
    | call(Expression function, list[Expression] arguments) 

    ;




data Binding = binding(str variable, Expression expression);