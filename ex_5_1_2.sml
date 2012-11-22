fun revAppend ([], l2) = l2
  | revAppend (x::xs, l2) = revAppend(xs, x::l2)

(* Provide a definition of a reverse function by using revAppend *)
fun rev [] = []
  | rev (x::xs) = revAppend(xs, [x])
