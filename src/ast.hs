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
--  | Window
  | List    Type
  | Linear  Type
--  | IO      Type
  | Func    Type Type
  | Pair    Type Type
--  | Sum     Type Type
  | Forall  String Type


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
  | Cons    Pattern Pattern
  | PairPat Pattern Pattern


instance Show Type where
  show (TVar s) = s
  show Unit     = "Unit"
  show Boolean  = "Bool"
  show Number   = "Num"
  show Chr      = "Char"
  show (List a) = "List " ++ wrapFunc a
  show (Linear a) = "Linear " ++ wrapFunc a
  show (Func a b) = wrapFunc a ++ " -> " ++ show b
  show (Forall s t) = "forall " ++ s ++ ". " ++ show t

wrapFunc :: Type -> String
wrapFunc f@(Func _ _) = "(" ++ show f ++ ")"
wrapFunc x            = show x


instance Show Term where
  show (Var s)     = s
  show UnitVal     = "unit"
  show Tru         = "true" 
  show Fls         = "false"
  show (NumVal n)  = show n
  show (ChrVal c)  = [c]
  show Nil         = "[]"
  show (PairVal p1 p2) = "(" ++ show p1 ++ ", " ++ show p2 ++ ")"
  
  show (Lambda pairs term) = "\\" ++ showPairs pairs ++ ". " ++ show term
    where
      showPairs [(s, mt)] = s ++ (case mt of Nothing -> ""; Just t -> " : " ++ show t)
      showPairs ((s, mt):ps) = showPairs [(s, mt)] ++ ", " ++ showPairs ps

  show (Case t patterns) = "case " ++ show t ++ " of " ++ showPatterns patterns
    where
      showPatterns [(p, e)] = show p ++ " -> " ++ show e
      showPatterns ((p, e):ps) = showPatterns [(p, e)] ++ "; " ++ showPatterns ps



instance Show Pattern where
  show (PVar  s) = s
  show (Const t) = show t
  show (Succ  p) = "succ (" ++ show p ++ ")"
  show (Cons p1 p2) = "cons (" ++ show p1 ++ ") (" ++ show p2 ++ ")"
  show (PairPat p1 p2) = "(" ++ show p1 ++ ", " ++ show p2 ++ ")"