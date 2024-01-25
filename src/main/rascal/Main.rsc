module Main

import IO;
// import String;

import Syntax;

import vis::Text;
import Parser;
// import Data;

int main(int testArgument=0) {


    // str example1 = "function main() { return 0; }";
    // str example2 = "let foo = \"bar\";";
    // str example3 = "let foo = \"bar\"; function baz(str) { console.log(str); }; baz(foo);";
    str example4 = "let foo = 3;";
    tree = Parser::parseExp(example4);
    ast = Parser::load(tree);
    println(prettyTree(tree));
    // println(ast);
    return testArgument;
}
