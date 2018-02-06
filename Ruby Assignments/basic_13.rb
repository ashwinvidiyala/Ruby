# Print 1-255
# for num in 1..255
#   puts num
# end

# Print odd numbers between 0-255
# for num in 1..255
#   puts num if num.odd?
# end

# Print Sum from 0 to 255
# sum = 0
# for num in 0..255
#   puts "New Number: #{num} Sum: #{sum += num}"
# end

# Iterating through an array
# x = [1,3,5,7,9,13]
# for num in x
#   puts num
# end
# x.each {|x| puts x}

# Find max
# array = [-1,-3,-4, -1, -59, 0]
# def find_max array
#   puts array.max
# end
# find_max array

# Find average
# array = [3, 4, 5, 6, 4, 5, 3, 14]
# def average(array)
#   sum = 0.0
#   array.each {|x| sum = sum + x}
#   puts "Average of given array is #{sum/array.length}"
# end


# Array With Odd Numbers
# def odd_array(start, stop)
#   array = []
#   for x in start..stop
#     array << x if x.odd?
#   end
#   puts array
# end
# odd_array(1,255)

# Greater than Y
# array = [1, 3, 5, 7, 15, 40, 466, 874]
# def greater_than(array, num)
#   new_array = array.select { |x| x > num}
# end
# puts greater_than(array, 200)

# Square the values
# array = [1, 3, 5, 7, 9, 11]
# def square_array array
#   array.collect { |num| num*num }
# end
# puts square_array array

# Eliminate Negative Numbers
# array = [1, -3, 5, -7, 9, 11]
# puts array.reject! { |x| x < 0}

# Max, Min and Average
# x = [1, 5, 10, -2]
# def max_min_average array
#   sum = 0.0
#   array.each { |x| sum = sum + x }
#   max = array.max
#   min = array.min
#   average = sum/array.length
#   result = {
#     "max": max,
#     "min": min,
#     "average": average
#   }
# end
# puts max_min_average x

# Shifting Array Values
# array = [1, 5, 10, 7, -2]
# puts new_array = array[1..array.length] << 0

# Number to String
# x = [-1, -3, 2]
# puts new_array = x.collect { |num| num < 0 ? num = 'Dojo' : num = num}
