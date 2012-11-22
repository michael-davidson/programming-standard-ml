(* e.g. filter ((fn x => x mod 2 = 0), [1,2,3,4,5,6,7,8,9] => [2,4,6,8] *)
fun filter (predicate, [])    = []
  | filter (predicate, x::xs) = if predicate x then x::(filter (predicate, xs)) else filter(predicate, xs)
