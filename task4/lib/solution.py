def is_palindrome(n):
    s = str(n)
    return s == s[::-1]

def find_largest_palindrome(x, y):
    """Находит наибольший палиндром от произведения двух чисел"""
    if x < 100:
        return 0
    elif y < 100:
        return find_largest_palindrome(x - 1, 999)
    else:
        product = x * y
        largest_palindrome = find_largest_palindrome(x, y - 1)
        
        if is_palindrome(product):
            return max(product, largest_palindrome)
        else:
            return largest_palindrome

result = find_largest_palindrome(999, 999)
print(f"Наибольший палиндром: {result}")