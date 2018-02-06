# array = [3,5,1,2,7,9,8,13,25,32]
# def greater_than(array, largest)
#   sum = 0
#   array.each { |num| sum+=num}
#   puts sum
#   array.select { |x| x > largest }
# end
# puts greater_than(array, 10)

# array = %w{John KB Oliver Cory Matthew Christopher}
# def shuffle_print(array, large)
#   array.shuffle.each { |x| puts x}
#   array.select { |y| y.length > large }
# end
# puts shuffle_print(array, 5)

# def alphabet
#   array = ('a'..'z').to_a.shuffle
#   puts array.first
#   puts "This one's a vowel!" if array.first.start_with?('a', 'e', 'i', 'o', 'u')
#   puts array.last
# end
# alphabet

# def random_number
#   array = []
#   10.times do
#     array << rand(55..100)
#   end
#   p array
# end
# random_number

# def random_number_sorted
#   array = []
#   10.times do
#     array << rand(55..100)
#   end
#   p array.sort
#   p array.min
#   p array.max
# end
# random_number_sorted

def random_string(x)
  random_string = ''
  x.times do
    random_string += (65+rand(26)).chr
  end
  return random_string
end
puts random_string(5)

array_of_words = []
10.times do
  array_of_words << random_string(5)
end
p array_of_words
