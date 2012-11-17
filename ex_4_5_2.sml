(* The function 'fn x => fn y => x' has type 'a -> ('b -> 'a).  Without giving an explicit type constraint,
   define a function with type 'a -> ('a -> 'a) *) 

fn x => fn y => hd (x::y::[]) 

