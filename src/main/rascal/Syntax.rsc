module Syntax

lexical IntegerLiteral = [0-9]+;

// define the syntax of the language

start syntax Exp        
  = con: IntegerLiteral      
  | bracket "(" Exp ")" 
  > left mul: Exp "*" Exp    
  > left add: Exp "+" Exp    
  > left \mod: Exp "%" Exp
  > left sub: Exp "-" Exp
  > left div: Exp "/" Exp

  ;


layout Whitespace
    = [\ \t\n]*;
    

