def range(min, max)
    new_arr = []
    (min...max).each do |n|
        new_arr << n 
    end
    new_arr
end

def range_r(min, max)
    return [] if min >= max

    [min] + range_r(min + 1, max)
end

# p range_r(1, 5)

def expo1(b, n)
    return 1 if n == 0
    b * expo1(b, n-1)
end

def expo2(b, n)
    return 1 if n == 0
    if n.even?
        expo2(b, n/2) ** 2
    else
        b * (expo2(b, (n - 1) / 2) ** 2)
    end
end

p expo2(2, 3)

def deep_dup
end