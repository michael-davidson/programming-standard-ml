use "ex_5_3_3.sml";

fun quicksort []      = []
  | quicksort (x::xs) =
    (quicksort (filter (fn y => y <= x, xs))) @ x::(quicksort (filter (fn y => y > x, xs)))
