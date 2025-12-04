let is_palindrome n =
  let rec reverse num acc =
    if num = 0 then acc
    else reverse (num / 10) (acc * 10 + num mod 10)
  in 
  n = reverse n 0