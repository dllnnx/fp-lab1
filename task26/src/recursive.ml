let rec find_longest_cycle_from d limit current_max current_d =
  if d >= limit then
    (current_d, current_max)
  else
    let cycle_length = Utils.find_cycle_length d in
    if cycle_length > current_max then
      find_longest_cycle_from (d + 1) limit cycle_length d
    else
      find_longest_cycle_from (d + 1) limit current_max current_d

let find_longest_cycle limit =
  find_longest_cycle_from 2 limit 0 0
  |> fst