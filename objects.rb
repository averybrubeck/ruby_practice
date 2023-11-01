=begin
class MyObject
    def initialize(names)
        @names = names
    end

    def speak
        "#{@names} says Arf!"
    end
    def names
        @names
    end
    def names=(n)
        @names = n
    end
end

ave = MyObject.new("ave")
puts ave.speak
puts ave.names
ave.names = "poonshredder"
puts ave.names

aids = MyObject.new("aids")
puts aids.speak
=end

#This is a refactor of the above code usingn attr_accessor to get and set the name attribute
class GoodDog
    attr_accessor :names, :height, :weight
    
    def initialize(n ,h, w)
        @names = n
        @height = h
        @weight  = w
    end

    def speak
        "#{names} says Arf!"
    end

    def change_info(n, h, w)
        self.names = n
        self.height = h
        self.weight  = w
    end

    def info
        "#{self.names} weighs #{self.weight} and is #{self.height} tall."
    end
end

molly = GoodDog.new("Molly", "1ft", "100lbs")
puts molly.info
molly.change_info("Turd", "1ft", "300lbs")
puts molly.info
