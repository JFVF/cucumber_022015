require 'json'

module JsonHandler

  #
  # This method set up a connection 
  #
  def JsonHandler.contains_an_element?(json, key, value)
    hash = JSON.parse(json)
    hash_key = hash.key(value)

    if hash_key == key
      return true
    else
      return false
    end
  end

end