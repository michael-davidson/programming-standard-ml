datatype int_exp = plus of int_term * int_term
    | minus of int_term * int_term
  and int_term = times of int_factor * int_factor
    | divide of int_factor * int_factor
    | modulo of int_factor * int_factor
  and int_factor = int_const of int
    | paren of int_exp

(* Define the functions:
   eval_int_exp: int_exp -> int
   eval_int_term: int_term -> int
   eval_int_factor: int_factor -> int *)

fun eval_int_factor (int_const x) = x
  | eval_int_factor (paren exp) = (eval_int_exp exp)

and eval_int_term (times (x,y)) = (eval_int_factor x) * (eval_int_factor y)
  | eval_int_term (divide (x,y)) = (eval_int_factor x) div (eval_int_factor y)
  | eval_int_term (modulo (x,y)) = (eval_int_factor x) mod (eval_int_factor y)

and eval_int_exp (plus (x,y)) = (eval_int_term x) + (eval_int_term y)
  | eval_int_exp (minus (x,y)) = (eval_int_term x) - (eval_int_term y)
(* It is necessary to use 'and' rather than declaring three independent functions
   because of the circular dependency between them.  Note how eval_int_exp would
   have to come after eval_int_term which would have to come after eval_int_factor
   but eval_int_factor depends on eval_int_exp and would need to come after it. *)

