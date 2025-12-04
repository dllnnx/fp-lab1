let rec find_largest_palindrome x y  max_palindrome =
  if x < 100 then max_palindrome
  else if y < 100 then find_largest_palindrome (x - 1) 999 max_palindrome
  else if Utils.is_palindrome(x * y) then find_largest_palindrome x (y - 1) (max max_palindrome (x * y))
  else find_largest_palindrome x (y - 1) max_palindrome