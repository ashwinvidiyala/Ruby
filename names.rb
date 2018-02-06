a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

puts "You have #{names.length} names in the 'names' array."

# First way of doing it
for name in names
  puts "The name is '#{name[:first_name]} #{name[:last_name]}'"
end

# Second way (and possibly more of a "Ruby way") of doing it.
names.each do |name|
   puts "The name is '#{name[:first_name]} #{name[:last_name]}'"
end
