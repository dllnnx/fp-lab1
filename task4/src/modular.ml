let rec generate_products x y acc = 
  match (x, y) with
  | (x, _) when x < 100 -> acc
  | (x, y) when y < 100 -> generate_products (x - 1) 999 acc
  | (x, y) -> generate_products x (y - 1) ((x * y) :: acc)

let find_largest_palindrome () =
  generate_products 999 999 []
  |> List.filter Utils.is_palindrome
  |> List.fold_left max 0