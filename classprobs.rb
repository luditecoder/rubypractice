class MyCar
  attr_accessor :model, :year, :color
   def initialize(model, year, color)
     @model = model
     @year = year
     @color = color

   end

   def create_record
     puts "What is the model of your car?"
     m = $stdin.gets.chomp
     @model = m
     puts "What is the year of your car?"
     y = $stdin.gets.chomp
     @year = y
     puts "What is the color of your car"
     c = $stdin.gets.chomp
     @color = c
     @speed = 0
     car = [m, y, c]
     print car

   end

   def info
      puts "So your car is a #{@model} model of #{@year} year and #{@color} color. "
     puts "The speed is: #{@speed}"
   end

end

cars = MyCar.new("model", 'year', 'color')
cars.create_record
cars.info
cars.start
cars.brake
