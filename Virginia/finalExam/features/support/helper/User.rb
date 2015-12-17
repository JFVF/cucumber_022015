class Users
 
    def initialize
         $user_hash= Hash.new
         fillUserListHashMap()
    end

    def fillUserListHashMap()
         $user_hash['maria'] = "Control1"
         $user_hash['diego'] = "Control12"
         $user_hash['manuel'] = "Control123"
    end

    def getMessageAccordingUser(username, password)
        if $user_hash.has_key?(username)
            #passw = $user_hash[username]
            return getMessage(username)
        else
            return ""
        end   
    end

    def getMessage(username)
        case username
            when "maria"
             message = "Welcome"
            when "diego"
             message = "Have a nice day"
            when "manuel"
             message= "Good morning"
        end
        return message
    end

    def getUserHashMap()
        return $user_hash
    end
 end  

def users_instance
    $users_instance ||= Users.new
end
