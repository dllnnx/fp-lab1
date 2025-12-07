open Task4_lib

let recursive_res = Recursive.find_largest_palindrome 999 999
let () = Printf.printf "recursive result: %d\n" recursive_res

let tail_recursive_res = Tail_recursive.find_largest_palindrome 999 999 0
let () = Printf.printf "tail recursive result: %d\n" tail_recursive_res

let modular_res = Modular.find_largest_palindrome ()
let () = Printf.printf "modular result: %d\n" modular_res

let map_res = Map.find_largest_palindrome ()
let () = Printf.printf "map result: %d\n" map_res

let for_res = For.find_largest_palindrome ()
let () = Printf.printf "for result: %d\n" for_res

let lazy_res = Lazy.find_largest_palindrome ()
let () = Printf.printf "lazy result: %d\n" lazy_res
