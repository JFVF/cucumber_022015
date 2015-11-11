#session 4  modules
#

#!/usr/bin/env ruby
require_relative "modules"
class Test
include Greet
include Bye

end

newTest = Test.new
newTest.hi
newTest.bye1
newTest.bye2
Greet.other

