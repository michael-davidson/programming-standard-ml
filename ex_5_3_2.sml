(* e.g. 'dropwhile ((fn x => x mod 2 = 0), [2,4,6,7,8,9,10]) => [7,8,9,10] *)
fun dropwhile (predicate, [])    = []
  | dropwhile (predicate, x::xs) = if predicate x then dropwhile(predicate, xs) else x::xs
