h = {:first_name => "Coding", :last_name => "Dojo"}
h.delete(:first_name)
puts h
puts h.empty?
puts h.has_key?(:last_name)
puts h.has_key?(:first_name)
puts h.has_value?("Coding")
puts h.has_value?("Dojo")

def user greeting = 'Welcome', first_name: "First name", last_name: "Last Name"
  puts "#{greeting}, #{first_name} #{last_name}"
end

current_user = {first_name: "Ashwin", last_name: "Vidiyala"}
user 'Hi', current_user
