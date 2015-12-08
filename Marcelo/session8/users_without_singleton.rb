class Users
    attr_accessor :user, :message, :visitors, :users_hash

    def initialize
        @user = "Guest"
        @message = "Welcome to the city"
        @visitors = 0
        @users_hash = Hash.new
    end

    def add_user
        print "Enter user: "
        user = gets.chomp
        if  user.length > 0
            return user
        else
            return @user
        end            
    end

    def add_welcome_message
        print "Type welcome message: "
        message = gets.chomp
        if message.length > 0
            return message
        else
            return @message
        end
    end

    def increment_visitors_counter
        @visitors += 1
    end

    def save_user_and_message
        user = add_user
        message = add_welcome_message
        @users_hash.store user, message
    end

    def show_last_user
        users_array = @users_hash.to_a
        puts "User: #{ users_array.last[0] }"
        puts "Message: #{ users_array.last[1] }"
    end
end

users = Users.new

3.times do |i|
    puts "Enter user information [ #{ i + 1 } / 3]"
    users.save_user_and_message
    puts ""
end

puts "=========== Show last user =========== "
users.show_last_user

puts "show counters: #{ users.visitors }"