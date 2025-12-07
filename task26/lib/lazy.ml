let seq_gen k =
  Seq.unfold
    (fun x -> Some (x, x + 1))
    k (* беск последовательность начиная с k *)

let has_cycle n = Utils.find_cycle_length n > 0
let to_cycle_pair n = (n, Utils.find_cycle_length n)

let find_max_cycle acc n =
  let cycle_len = Utils.find_cycle_length n in
  let _, max_len = acc in
  if cycle_len > max_len then (n, cycle_len) else acc

let find_longest_cycle () =
  seq_gen 2 |> Seq.take 998 |> List.of_seq |> List.filter has_cycle
  |> List.fold_left find_max_cycle (0, 0)
  |> fst
