let rec find_longest_cycle_from d limit current_max current_d =
  if d >= limit then (current_d, current_max)
  else
    let cycle_length = Utils.find_cycle_length d in
    let (best_d, best_max) = find_longest_cycle_from (d + 1) limit current_max current_d in
    if cycle_length > best_max then (d, cycle_length)
    else (best_d, best_max)

let find_longest_cycle limit = find_longest_cycle_from 2 limit 0 0 |> fst
