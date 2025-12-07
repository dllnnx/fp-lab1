open Task26_lib

let expected_result = 983

let test_recursive () = 
  Alcotest.(check int) "Recursive solution" expected_result 
    (Recursive.find_longest_cycle 1000)

let test_tail_recursive () = 
  Alcotest.(check int) "Tail recursive solution" expected_result 
    (Tail_recursive.find_longest_cycle 1000)

let test_modular () = 
  Alcotest.(check int) "Modular solution" expected_result 
    (Modular.solve ())

let test_map () = 
  Alcotest.(check int) "Map solution" expected_result 
    (Map_sol.find_longest_cycle ())

let test_for () = 
  Alcotest.(check int) "For solution" expected_result 
    (For.find_longest_cycle ())

let test_lazy () = 
  Alcotest.(check int) "Lazy solution" expected_result 
    (Lazy.find_longest_cycle ())

let cycle_tests =
  [
    ("Recursive", `Quick, test_recursive);
    ("Tail Recursive", `Quick, test_tail_recursive);
    ("Modular", `Quick, test_modular);
    ("Map", `Quick, test_map);
    ("For", `Quick, test_for);
    ("Lazy", `Quick, test_lazy);
  ]

let () = Alcotest.run "Task26 tests" [ ("Cycle", cycle_tests) ]