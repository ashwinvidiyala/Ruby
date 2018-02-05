# a = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
a = %w{a b c d e f g}

# puts a.at(0)
# puts a.at(-1)

# puts a.fetch(0)
# puts a.fetch(7, 'kitty')

# b = [1, 2, 3, 4]
# b.delete(1)
# puts b

# puts a.reverse
name = 'Ashwin'
# puts name.reverse

# puts a.length
# puts name.length

# puts a.sort

# puts a.slice(1)
# puts a.slice(1, 3)
# puts a.slice(4..6)

# puts a.shuffle.join('kitty')

# puts a.insert(-4, 45, 'chocolate', 'candy')

puts a.values_at(3, 5).join(' and ')
