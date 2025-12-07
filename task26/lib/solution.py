def find_cycle_length(d):
    if d == 1:
        return 0
    
    remainder = 1
    position = 0
    remainders = {}
    
    while remainder != 0:
        if remainder in remainders:
            # Нашли повторяющийся остаток - это начало цикла
            return position - remainders[remainder]
        
        remainders[remainder] = position
        remainder = (remainder * 10) % d
        position += 1
    
    return 0  # Нет цикла (конечная десятичная дробь)

def find_longest_cycle_from(d, limit, current_max, current_d):
    if d >= limit:
        return (current_d, current_max)
    else:
        cycle_length = find_cycle_length(d)
        if cycle_length > current_max:
            return find_longest_cycle_from(d + 1, limit, cycle_length, d)
        else:
            return find_longest_cycle_from(d + 1, limit, current_max, current_d)

def find_longest_cycle(limit):
    result_d, result_max = find_longest_cycle_from(2, limit, 0, 0)
    return result_d

result = find_longest_cycle(1000)
print(f"Число с наибольшей длиной цикла: {result}")