dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
  }


def get_city_names(somehash)
     somehash.keys
end


def get_are_code(somehash,key)
    somehash[key]
end



loop do

    puts "Do you want to lookup an area code based on a city name?(y/n)"
    user_answer = gets.chop
    
    # not validating for other letter input
    break if(user_answer.upcase != "Y")
   
    puts get_city_names(dial_book)
    puts "Which city do you want to lookup areacode?"
    user_city = gets.chop
    

    if(dial_book.include?(user_city))
        user_area_code = get_are_code(dial_book,user_city)
        puts "The area code for #{user_city} is #{user_area_code}."
    else
        puts "Invalid city name."
    end

   

end

