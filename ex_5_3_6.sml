(* Write a permutations function that generates all permutations of a list, e.g.
   perm [1, 2] = [[1,2], [2,1]] *)

fun perm []      = [[]]
  | perm xs =
    let
      (* ys = list of ints; get all permutations of list with value at index removed and then prepend the value at index to all the returned lists *)

      fun perm' ys index = if index >= length ys then [] else (map (fn z => (List.nth (ys, index))::z) (perm ((List.take (ys, index)) @ (List.drop (ys, Int.min(index+1, length ys)))))) @ (perm' ys (index+1));
    in
      perm' xs 0
    end
