require 'bcrypt'

my_password = BCrypt::Password.create("my password")
my_password2 = BCrypt::Password.create("my password")

puts my_password
puts my_password2