let seq_gen start =
  Seq.unfold
    (fun x -> Some (x, x + 1))
    start (* генерирует последовательность чисел от start *)

let generate_products () =
  seq_gen 100 |> Seq.take 900
  |> Seq.flat_map (fun x ->
      seq_gen x |> Seq.take (1000 - x) |> Seq.map (fun y -> x * y))

let find_largest_palindrome () =
  generate_products () |> Seq.filter Utils.is_palindrome |> Seq.fold_left max 0
