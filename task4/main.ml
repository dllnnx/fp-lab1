let result = 906609;;

(*tail_recursive check*)
assert (Tail_recursive.find_largest_palindrome 999 999 0 == result);
Printf.printf "tail recursive result: %d\n"
  (Tail_recursive.find_largest_palindrome 999 999 0);

(*recursive check*)
assert (Recursive.find_largest_palindrome 999 999 == result);
Printf.printf "recursive result: %d\n"
  (Recursive.find_largest_palindrome 999 999);

(*modular check*)
assert (Modular.find_largest_palindrome () == result);
Printf.printf "modular result: %d\n" (Modular.find_largest_palindrome ());

(*map check*)
assert (Map.find_largest_palindrome () == result);
Printf.printf "map result: %d\n" (Map.find_largest_palindrome ());

(*for check*)
assert (For.find_largest_palindrome () == result);
Printf.printf "for result: %d\n" (For.find_largest_palindrome ());

(*lazy check*)
assert (Lazy.find_largest_palindrome () == result);
Printf.printf "lazy result: %d\n" (Lazy.find_largest_palindrome ())
