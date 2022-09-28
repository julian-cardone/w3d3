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



    def deep_dup(arr)
        return  []if !arr.is_a? (Array)
    
        new_array=[]
        arr.each do |ele|
            if !ele.is_a?(Array)
                new_array<<ele
            else
            new_array<< deep_dup(ele)
            end
        end
        new_array
    
    end
    
    robot_parts = [
        ["nuts", "bolts", "washers"],
        ["capacitors", "resistors", "inductors"]
      ]
      p deep_dup(robot_parts)

p deep_dup(robot_parts = [
    ["nuts", "bolts", "washers"],
    ["capacitors", "resistors", "inductors"]
  ])

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


  def binary(arr, n)
    return nil if arr.empty?
    
    
    middle_indx= arr.length/2

    if arr[middle_indx]==n
        return middle_indx
    
    elsif arr[middle_indx]>n
        binary(arr.take(middle_indx),n)
    
    elsif arr[middle_indx]<n
        binary(arr[middle_indx..-1],n)
    end
  end

#   p binary([2, 3, 4, 5], 3)

# def merge_sort(arr)



# end


# def subset(arr)
#     (0...@arr.length).each do |idx|
#         (idx...@arr.length).each do |idx2|
#             arr[idx..idx2]
# end