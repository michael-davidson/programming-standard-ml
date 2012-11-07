use "reduce.sml";

(* The semifactorial of a positive integer is 1×3×5×...×n if n is odd and
2×4×6×...×n if n is even. Use the reduce function to define a semifac function which
calculates semifactorials. *)
fun semifac n =
  let
    fun is_even x = x mod 2 = 0
    val m = if is_even(n) then 2 else 1
    fun g(x,y) = if is_even(n) = is_even(y)
      then x*y
      else x 
  in
    reduce' g 1 m n (fn x=>x)
  end

