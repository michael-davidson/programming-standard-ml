(* Define a function with type (('a -> 'a) * ('a -> 'a)) -> ('a -> 'a) without using a type constraint *)

fun ex (f, g) = fn x => hd(x::(f(hd (x::g(x)::[]))::[]))
