{
module DeclareParse where
import Data.Char
import Declare
import Lexer
}

%name parser
%tokentype { Token }

%token 
    var    { TokenKeyword "var" }
    ';'    { Symbol ";" }
    id     { TokenIdent $$ }
    digits { Digits $$ }
    '='    { Symbol "=" }
    '+'    { Symbol "+" }
    '-'    { Symbol "-" }
    '*'    { Symbol "*" }
    '/'    { Symbol "/" }
    '('    { Symbol "(" }
    ')'    { Symbol ")" }
    ','    { Symbol "," }

%%

Exp : Dec ';' Exp { Declare $1 $3 }
    | Dec ',' Exp { Declare $1 $3 }
    | Term      { $1 }

Dec : var id '=' Exp { [($2, $4)] }

Term : Term '+' Factor    { Add $1 $3 }
     | Term '-' Factor    { Subtract $1 $3 }
     | Factor             { $1 }

Factor : Factor '*' Primary    { Multiply $1 $3 }
       | Factor '/' Primary    { Divide $1 $3 }
       | Primary               { $1 }

Primary : digits            { Number $1 }
        | '-' digits        { Number (- $2) }
        | id                { Variable $1 }
        | '(' Exp ')'       { $2 }

{

symbols = ["+", "-", "*", "/", "(", ")", ";", "=", ","]
keywords = ["var"]
parseExp str = parser (lexer symbols keywords str)

parseInput = do
  input <- getContents
  print (parseExp input)

}
