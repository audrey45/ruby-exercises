user_list =[{username:"kenneth",password:"123"},
            {username:"audrey", password:"456"},
            {username:"arcenio",password:"789"}]

def validate_user(username,password,user_li)
    user_li.each do |user|
        if(user[:username] == username && user[:password] == password)
                return puts "correct password"
            end
    end
    puts "incorrect password"
end

index = 1
while index <=4
    puts "Enter username:"
    username = gets.chomp
    
    puts "Enter password:"
    password= gets.chomp

    validate_user(username,password,user_list)

    puts "Do you want to continue?(y/n):"
    user_answer = gets.chomp
    
    if(user_answer.upcase == "N")
        break
    end
    index += 1
end
