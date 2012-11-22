fun drop (x, 0)     = x
  | drop ([], _)    = raise Subscript
  | drop (x::xs, n) = drop(xs, n - 1) handle Overflow => raise Subscript
