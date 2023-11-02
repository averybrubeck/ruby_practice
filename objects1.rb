=begin
Create a class called MyCar. 
When you initialize a new instance or object of the class, 
allow the user to define some instance variables that tell us the 
year, color, and model of the car. Create an instance variable that is set to 0 
during instantiation of the object to track the current speed of the car as well. 
Create instance methods that allow the car to speed up, brake, and shut the car off.
=end

class MyCar
    attr_accessor :speed, :year, :color, :make, :model
    def initialize(y, c, m, mo)
        @year = y
        @color = c
        @make = m 
        @model = mo
        @speed = 0
    end

    def speed_up(ammount)
        ammount = ammount.to_i
        @speed += ammount
    end

    def brake(ammount)
        ammount = ammount.to_i
        @speed -= ammount
    end

    def info
        "#{self.year}, #{color}, #{self.make}, #{model} #{speed}"
    end
end

car = MyCar.new("2006", "red", "Honda", "Civic")
puts car.info
car.speed_up(12)
puts car.info
car.brake(6)
puts car.info