class User
    attr_accessor :name, :email
    
    def initialize(name, email)
        @name = name
        @email = email
    end

    def run
        puts "Hey I'm running"
    end
    
    def self.identify_yourself
        puts "Hey I am your class method"
    end
end

# user = User.new("kenneth","email@ken.com")
# user.run

# My understating
# Static method in C#
User.identify_yourself