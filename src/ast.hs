-- LambdaPy abstract syntax tree

module AST

where



data Defs
  = TermDefs
  | Anns        -- Annotations
  | Import String


data Type
  = TVar    String
  | Unit
  | Boolean
  | Number
  | Chr
  | Window
  | List    Type
  | Linear  Type
  | IO      Type
  | Func    Type Type
  | Pair    Type Type
  | Sum     Type Type


data Term
  -- Primitive Values
  = Var     String
  | UnitVal
  | Tru
  | Fls
  | NumVal  Int
  | ChrVal  Char
  | Nil
  | PairVal Term Term

  | Lambda  [(String, Maybe Type)] Term
  | Let     Pattern Term Term
  | Case    Term [(Pattern, Term)]


data Pattern
  = PVar    String
  | Const   Term
  | Succ    Pattern
  | Cons    Pattern
  | PairPat Pattern Pattern