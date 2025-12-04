let rec find_largest_palindrome x y =
  if x < 100 then 0
  else if y < 100 then find_largest_palindrome (x - 1) 999
  else
    let product = x * y in
    let largest_palindrome = find_largest_palindrome x (y - 1) in
    if Utils.is_palindrome product then max product largest_palindrome
    else largest_palindrome