let is_palindrome n =
  let s = string_of_int n in
  let len = String.length s in
  let flag = ref true in
  for i = 0 to (len / 2) - 1 do
    if s.[i] <> s.[len - 1 - i] then flag := false
  done;
  !flag

let find_largest_palindrome () =
  let max_palindrome = ref 0 in
  for x = 100 to 999 do
    for y = x to 999 do
      let product = x * y in
      if is_palindrome product then
        if product > !max_palindrome then max_palindrome := product
    done
  done;
  !max_palindrome
