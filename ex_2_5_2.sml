val rec sum' = fn 1 => 1
                | n => sum'(n - 1) + n

(* Unfortunately, there doesn't seem to be any difference.  I thought sum'' would be better because it leverages tail recursion, so I expected stack overflows to happen for sum' that wouldn't affect sum''.  But sum' and sum'' both seem to run into Overflow exceptions, though this seems to be an integer overflow of the return value, which seems impossible to avoid, rather than a stack overflow.  *)
val sum'' = fn n =>
  let
    val rec sum''' = fn (1, acc) => 1 + acc
                      | (n, acc) => sum'''(n - 1, acc + n)
  in
    sum'''(n, 0)
  end

