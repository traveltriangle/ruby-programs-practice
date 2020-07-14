module Talk
    def display
        print 'Hello '
    end
end

class CommunicateUser
    include Talk
        attr_reader :name
    def initialize(name)
        @name = name
    end
end

# Creating object
object = CommunicateUser.new('Ruby')

# Calling object
object.display
puts object.name
