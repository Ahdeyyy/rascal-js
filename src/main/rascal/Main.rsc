module Main

import IO;
// import String;

import ConcreteSyntax;

import vis::Text;
import Parser;
// import Data;

int main(int testArgument=0) {


    // str example1 = "function main() { return 0; }";
    // str example2 = "let foo = \"bar\";";
    // str example3 = "let foo = \"bar\"; function baz(str) { console.log(str); }; baz(foo);";
    // str example4 = "let foo = \'bar\';";
    str example5 = "const add = (x, y) =\> { return x+y;}";
    // str example6 = "try { let foo = 4;} catch() { console.error(e); }";

    // println(example5);
    // str example5 = "let foo = 1 + 1;";
    tree = Parser::parseExp(example5);
    ast = Parser::load(tree);
    println(prettyTree(tree));
    // println(ast);
    return testArgument;
}
