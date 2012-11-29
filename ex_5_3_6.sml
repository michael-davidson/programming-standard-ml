(* Write a permutations function that generates all permutations of a list, e.g.
   perm [1, 2] = [[1,2], [2,1]] *)

fun perm [] = [[]]
  | perm xs =
    let
      fun perm_without_index ys index = perm ((List.take (ys, index)) @ (List.drop (ys, Int.min(index+1, length ys))));
      fun prepend_index_to_sub_permutations ys index = map (fn z => (List.nth (ys, index))::z) (perm_without_index ys index);
      fun perm' ys index = if index >= length ys then [] else (prepend_index_to_sub_permutations ys index) @ (perm' ys (index+1));
    in
      perm' xs 0
    end
