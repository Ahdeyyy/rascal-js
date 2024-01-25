module Parser

import Data;
import Syntax;
import ParseTree;

Data::Expression load(Tree t) = implode(#Data::Expression,t);
Tree parseExp(str txt) = parse(#Syntax::Expression, txt);