let find_longest_cycle limit =
  let rec search d max_cycle_length result_d = (* d - текущий знаменатель, result_d - знаменатель с макс длиной цикла *)
    if d >= limit then
      (result_d, max_cycle_length)
    else
      let cycle_length = Utils.find_cycle_length d in
      if cycle_length > max_cycle_length then
        search (d + 1) cycle_length d
      else
        search (d + 1) max_cycle_length result_d
  in
  search 2 0 0
  |> fst