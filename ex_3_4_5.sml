val rec iter = 
  fn 0 => (fn f => fn x => x)
   | n => (fn f => fn x => f(iter (n-1) f x))

fun iter' n f x =
  if n = 0 then x
  else f(iter' (n-1) f x)

