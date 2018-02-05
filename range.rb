x = (1..100)

# for x in x
#   puts x
# end

y = 72

puts "The range does include #{y}" if x.include?(y)

puts "#{x.to_a.shuffle.last} is the last value in the range"
puts "#{x.to_a.shuffle.first} is the first value in the range"
puts "#{x.max} is the max value in the range"
puts "#{x.min} is the min value in the range"
