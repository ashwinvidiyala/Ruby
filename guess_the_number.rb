def guess_number guess
  number = 25
  # if guess == number
  #   puts 'You got it!'
  # elsif guess > number
  #   puts 'Guess was too high!'
  # else
  #   puts 'Guess was too low!'
  # end
  puts 'You got it' unless guess != number
  puts 'Guess was too high' if guess > number
  puts 'Guess was too low' if guess < number
end

guess_number 25
