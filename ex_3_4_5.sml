val rec iter = 
  fn 0 => (fn f => fn x => x)
   | n => (fn f => fn x => f(iter (n-1) f x))

(* auto-curries: val addtwo = iter' 2 (fn x => x+1)  *)
fun iter' 0 f x = x
  (* invoke f on the value returned from invoking f on x n-1 times *)
  | iter' n f x = f(iter' (n-1) f x)

