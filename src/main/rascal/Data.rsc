module Data

extend Syntax;


data Exp
    = con(int val)
    | mul(Exp lhs, Exp rhs)
    | add(Exp lhs, Exp rhs)
    | \mod(Exp lhs, Exp rhs)
    | div(Exp lhs, Exp rhs)
    | sub(Exp lhs, Exp rhs)
    ;

int eval(con(int n)) = n;                         
int eval(mul(Exp lhs, Exp rhs)) = eval(lhs) * eval(rhs); 
int eval(add(Exp lhs, Exp rhs)) = eval(lhs) + eval(rhs); 
int eval(sub(Exp lhs, Exp rhs)) = eval(lhs) - eval(rhs);
int eval(div(Exp lhs, Exp rhs)) = eval(lhs) / eval(rhs);
int eval(\mod(Exp lhs, Exp rhs)) = eval(lhs) % eval(rhs);


// Exp parse(Tree t) = implode(#Exp,t);