open Task4_lib

let expected_result = 906609

let test_recursive () =
  Alcotest.(check int)
    "Recursive solution" expected_result
    (Recursive.find_largest_palindrome 999 999)

let test_tail_recursive () =
  Alcotest.(check int)
    "Tail recursive solution" expected_result
    (Tail_recursive.find_largest_palindrome 999 999 0)

let test_modular () =
  Alcotest.(check int)
    "Modular solution" expected_result
    (Modular.find_largest_palindrome ())

let test_map () =
  Alcotest.(check int)
    "Map solution" expected_result
    (Map.find_largest_palindrome ())

let test_for () =
  Alcotest.(check int)
    "For solution" expected_result
    (For.find_largest_palindrome ())

let test_lazy () =
  Alcotest.(check int)
    "Lazy solution" expected_result
    (Lazy.find_largest_palindrome ())

let palindrome_tests =
  [
    ("Recursive", `Quick, test_recursive);
    ("Tail Recursive", `Quick, test_tail_recursive);
    ("Modular", `Quick, test_modular);
    ("Map", `Quick, test_map);
    ("For", `Quick, test_for);
    ("Lazy", `Quick, test_lazy);
  ]

let () = Alcotest.run "Task4 tests" [ ("Palindrome", palindrome_tests) ]
