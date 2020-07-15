class Car
    #easy way alternative to getter/setter for direct access
    attr_reader :brand_name # give read access to variable outside class
    attr_writer :car_name   # give write access to variable outside class
    attr_reader :car_name

    $global_variable = 'xyz'  # $ for global scope variable
    @@counter = 0 # @@ for class variables
    def initialize(car_name, brand_name)
        @car_name = car_name      # @ for instance variable
        @brand_name = brand_name
        @@counter += 1;
    end
    def return_name  # act as getter method as variable cannot be accessed outside
        return @car_name
    end
    def return_brand
        return @brand_name
    end
    #private # by default methods have public scope
    def return_counter
        @@counter    # return keyword is optional....last result will be returned
    end
end

class Suv < Car  #inheritence    #default constructor
    def size   # overidden method
        puts 'This is a big car'
    end
end
car1obj = Car.new('beetel','volkswagen')
puts $global_variable
puts car1obj.return_counter # access by getter
puts car1obj.return_name+" "+car1obj.return_brand
puts car1obj.return_brand # access directly using easy alternative
suvobj = Suv.new('abc','efg')
puts suvobj.size
