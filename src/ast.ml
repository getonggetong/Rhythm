type op = Add | Sub | Mult | Div | Equal | Neq | Less | Leq | Greater | Geq

type expr =
    Literal of int
  | Note of string
  | Chord of expr
  | Id of string
  | Array of expr * expr
  | Binop of expr * op * expr
  | Assign of string * expr
  | Call of string * expr list
  | Noexpr

type stmt =
    Block of stmt list
  | Expr of expr
  | Return of expr
  | If of expr * stmt * stmt
  | While of expr * stmt
  | Loop of expr * expr * stmt

type func_decl = {
    fname : string;
    formals : string list;
    body : stmt list;
  }

type program = string list * func_decl list

