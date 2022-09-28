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

#p expo2(2, 3)

# class Array

#     def deep_dup(new_word)
#         return [] if !self.is_a? (Array)
    
#         new_array=[]
#         self.each do |ele|
#             new_array<< deep_dup(ele)
#         end
#         new_array
    
#     end

# end

# p deep_dup(robot_parts = [
#     ["nuts", "bolts", "washers"],
#     ["capacitors", "resistors", "inductors"]
#   ])

  def fib_i(n)

    new_arr = []
    new_arr << 1 if n >= 1
    new_arr << 1 if n >= 2

    (2...n).each do |i|
        new_arr << (new_arr[i-1] + new_arr[i-2])
    end

    new_arr

  end

  # p fib_i(4)

  def fib_r(n)

    return [1] if n == 1
    return [1,1] if n == 2
    fib_r(n-1) << fib_r(n-1)[-1] +  fib_r(n-1)[-2]

  end

  # p fib_r(4)