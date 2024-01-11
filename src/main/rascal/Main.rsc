module Main

import IO;

import Syntax;

import vis::Text;
import Parser;
import Data;



int main(int testArgument=0) {
    
    // parse the expression and get the parse tree
    tree = Parser::parseExp("1*2+3*3");
    ast = Parser::load(tree);
    // res = Data::eval(ast);
    
    res = Data::eval(ast);
    // println(ast);
    println(res);
    return testArgument;
}


