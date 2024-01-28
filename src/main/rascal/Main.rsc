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
    // str example5 = "let foo = \'bar\';";
    str example5 = "function add(a,b) { return a + b;}";
    // str example5 = "let foo = 1 + 1;";
    tree = Parser::parseExp(example5);
    ast = Parser::load(tree);
    println(prettyTree(tree));
    // println(ast);
    return testArgument;
}
