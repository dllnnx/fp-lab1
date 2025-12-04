let result = 983;;

(*tail recursive check*)
let tail_d = Tail_recursive.find_longest_cycle 1000 in
assert (tail_d == result);
Printf.printf "tail recursive result: %d\n" tail_d;

(*recursive check*)
let recursive_d = Recursive.find_longest_cycle 1000 in
assert (recursive_d == result);
Printf.printf "recursive result: %d\n" recursive_d;

(*modular check*)
let modular_d = Modular.solve () in
assert (modular_d == result);
Printf.printf "modular result: %d\n" modular_d;

(*map check*)
let map_d = Map.find_largest_palindrome () in
assert (map_d == result);
Printf.printf "map result: %d\n" map_d;

(*for check*)
let for_d = For.find_largest_palindrome () in
assert (map_d == result);
Printf.printf "for result: %d\n" for_d;

(*lazy seq check*)
let lazy_d = Lazy.find_largest_palindrome () in
assert (lazy_d == result);
Printf.printf "lazy result: %d\n" lazy_d
