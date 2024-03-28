module Main

import IO;
// import String;

// import ConcreteSyntax;

import vis::Text;
import Parser;
// import Data;

int main(int testArgument=0) {

    str declaration = ";";
    str expression = "foo + 3;";
    str statement = "console.log(foo);";
    str block = "{ let foo = 3; console.log(foo); }";
    str ifStatement = "if (foo) { console.log(foo); } else { console.log(foo); }";
    str whileStatement = "while (foo) { console.log(foo); }";
    str forStatement = "for (let i = 0; i \< 10; i++) { console.log(i); }";
    str returnStatement = "return foo;";
    str functionDeclaration = "let foo = function () { let bar = 4; return 4; }";
    str classDeclaration = "class foo { add() { return 4+3;} }";
    str tryStatement = "try { let foo = 3; } catch(e) { console.error(e); }";
    str throwStatement = "throw new Error(\"foo\");";
    str importStatement = "import foo from \"bar\";";
    // str exportStatement = "export default foo;";

    declarationTree = Parser::parseExp(declaration);
    expressionTree = Parser::parseExp(expression);
    statementTree = Parser::parseExp(statement);
    blockTree = Parser::parseExp(block);
    ifStatementTree = Parser::parseExp(ifStatement);
    whileStatementTree = Parser::parseExp(whileStatement);
    forStatementTree = Parser::parseExp(forStatement);
    returnStatementTree = Parser::parseExp(returnStatement);
    functionDeclarationTree = Parser::parseExp(functionDeclaration);
    tryStatementTree = Parser::parseExp(tryStatement);
    throwStatementTree = Parser::parseExp(throwStatement);
    importStatementTree = Parser::parseExp(importStatement);
    classDeclarationTree = Parser::parseExp(classDeclaration);

    // println("declaration tree:");
    // println(prettyTree(declarationTree));
    // println(Parser::load(declarationTree));

    // println("expression tree:");
    // println(prettyTree(expressionTree));
    // println(Parser::load(expressionTree));

    // println("statement tree:");
    // println(prettyTree(statementTree));
    // println(Parser::load(statementTree));

    // println("block tree:");
    // println(prettyTree(blockTree));
    // println(Parser::load(blockTree));

    // println("if statement tree:");
    // println(prettyTree(ifStatementTree));
    // println(Parser::load(ifStatementTree));

    // println("while statement tree:");
    // println(prettyTree(whileStatementTree));
    // println(Parser::load(whileStatementTree));

    // println("for statement tree:");
    // println(prettyTree(forStatementTree));
    // println(Parser::load(forStatementTree));

    // println("return statement tree:");
    // println(prettyTree(returnStatementTree));
    // println(Parser::load(returnStatementTree));

    // println("function declaration tree:");
    // println(prettyTree(functionDeclarationTree));
    // println(Parser::load(functionDeclarationTree));

    // println("class declaration tree:");
    // println(prettyTree(classDeclarationTree));
    // println(Parser::load(classDeclarationTree));

    // println("try statement tree:");
    // println(prettyTree(tryStatementTree));
    // println(Parser::load(tryStatementTree));

    // println("throw statement tree:");
    // println(prettyTree(throwStatementTree));
    // println(Parser::load(throwStatementTree));

    // println("import statement tree:");
    // println(prettyTree(importStatementTree));
    // println(Parser::load(importStatementTree));


    // println(example5);
    // str example5 = "let foo = 1 + 1;";
    // tree = Parser::parseExp(example5);
    // ast = Parser::load(tree);
    // println(prettyTree(tree));
    // println(ast);
    return testArgument;
}
