let find_longest_cycle () =
  let max_d = ref 0 in
  let max_len = ref 0 in
  for d = 2 to 999 do
    let cycle_len = Utils.find_cycle_length d in
    if cycle_len > !max_len then begin
      max_d := d;
      max_len := cycle_len
    end
  done;
  !max_d
