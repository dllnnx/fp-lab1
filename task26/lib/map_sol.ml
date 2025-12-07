let seq_gen k n = List.init (n - k + 1) (fun i -> k + i)

(* создает пару (число, длина цикла) *)
let to_cycle_pair n = (n, Utils.find_cycle_length n)

let compare_cycles (n1, len1) (n2, len2) =
  if len1 > len2 then (n1, len1) else (n2, len2)

let find_longest_cycle () =
  seq_gen 2 999 |> List.map to_cycle_pair
  |> List.filter (fun (_, len) -> len > 0)
  |> List.fold_left compare_cycles (0, 0)
  |> fst
