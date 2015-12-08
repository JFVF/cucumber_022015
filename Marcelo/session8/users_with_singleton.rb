class Users
    attr_accessor :user, :message, :visitors, :users_hash

    class << self
        def instance
            @instance ||= new
        end

        private :new
    end

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

3.times do |i|
    puts "Enter user information [ #{ i + 1 } / 3]"
    Users.instance.save_user_and_message
    puts ""
end

puts "=========== Show last user =========== "
Users.instance.show_last_user

# differences between using singleton and without using this pattern

=begin

Every time an instance is created at least visitors counters reset to cero a we have different hashes for users. 
So for this case does not allow handle a single object with all the information=end
