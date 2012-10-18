(* The implementation of the function zeller can be slightly simplified if zeller is a recursive function.  Implement this simplification.  *)

local
  val floor = Real.floor
  val real = Real.fromInt
  val zc =
    fn (d, m, y, c) =>
      (floor (2.61 * real m - 0.2) + d + y + y div 4 + c div 4 - 2 * c) mod 7
in
  val rec zeller = fn (d, 1, y) => zeller (d, 13, y - 1)
                    | (d, 2, y) => zeller (d, 14, y - 1)
                    | (d, m, y) => zc (d, m - 2, y mod 100, y div 100)
end

