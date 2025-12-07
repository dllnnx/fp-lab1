open Task26_lib

let tail_d = Tail_recursive.find_longest_cycle 1000
let () = Printf.printf "tail recursive result: %d\n" tail_d
let recursive_d = Recursive.find_longest_cycle 1000
let () = Printf.printf "recursive result: %d\n" recursive_d
let modular_d = Modular.solve ()
let () = Printf.printf "modular result: %d\n" modular_d
let map_d = Map_sol.find_longest_cycle ()
let () = Printf.printf "map result: %d\n" map_d
let for_d = For.find_longest_cycle ()
let () = Printf.printf "for result: %d\n" for_d
let lazy_d = Lazy.find_longest_cycle ()
let () = Printf.printf "lazy result: %d\n" lazy_d
