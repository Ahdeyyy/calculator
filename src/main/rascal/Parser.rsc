module Parser

import Data;
import Syntax;
import ParseTree;

Data::Exp load(Tree t) = implode(#Data::Exp,t);
Tree parseExp(str txt) = parse(#Syntax::Exp, txt);