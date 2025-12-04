let generate_range start end_val =
  let rec gen acc n = if n > end_val then acc else gen (n :: acc) (n + 1) in
  List.rev (gen [] start)

let has_cycle n = Utils.find_cycle_length n > 0

let find_longest_cycle acc n =
  (* acc = (best_d, max_len) *)
  let cycle_len = Utils.find_cycle_length n in
  let _, max_len = acc in
  if cycle_len > max_len then (n, cycle_len) else acc

let solve () =
  generate_range 2 999 |> List.filter has_cycle
  |> List.fold_left find_longest_cycle (0, 0)
  |> fst
