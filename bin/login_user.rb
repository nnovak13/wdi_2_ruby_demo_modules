


print "Enter email: "
email = gets.chomp

print "Enter password: "
pass = gets.chomp

tom  = User.find_by_email(email)

tom.authenticate(pass)

puts 'Good you've logged in "
