let seq_gen k n = List.init (n - k + 1) (fun i -> k + i)

let generate_all_products () =
  seq_gen 100 999 (* List.init 900 (fun i -> 100 + i) ===> [100; 101; 102; ...; 999] *)
  |> List.map (fun x -> seq_gen 100 999 |> List.map (fun y -> x * y))
  |> List.flatten

let find_largest_palindrome () =
  generate_all_products ()
  |> List.filter Utils.is_palindrome
  |> List.fold_left max 0