(*
 e is the value to return in the base case
 f is a function taking one parameter
 g is a function that combines 'f (n-(x-1))' at step x the the value from a recursive call to reduce with n-1
 m is the value that triggers the base case
 n is the starting value that is decremented by 1 each step
 *)
val rec reduce = fn(g, e, m, n, f) =>
  let
    val finished = fn true => e
                    | false => g(reduce(g, e, m, n-1, f), f n)
  in finished (n < m)
  end

