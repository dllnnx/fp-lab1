module RemainderMap = Map.Make (Int)

let find_cycle_length n =
  if n = 1 then 0
  else
    let rec find_cycle remainder position remainders_map =
      if remainder = 0 then
        (* дробь конечная, нет цикла *)
        0
      else if RemainderMap.mem remainder remainders_map then
        (* нашли повторяющийся остаток - возвращаем длину цикла *)
        position - RemainderMap.find remainder remainders_map
      else
        let new_remainders_map =
          RemainderMap.add remainder position remainders_map
        in
        let new_remainder = remainder * 10 mod n in
        find_cycle new_remainder (position + 1) new_remainders_map
    in
    find_cycle 1 0 RemainderMap.empty
