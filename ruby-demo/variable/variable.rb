class Car
  @@total_cars = 0

  def initialize(make, model)
    @make = make # instance variable
    @model = model # instance variable
    @@total_cars += 1 # class variable
  end

  def self.total_cars
    @@total_cars
  end

  def make
    @make
  end
end

class SportsCar < Car
  def initialize(make, model, top_speed)
    super(make, model)
    @top_speed = top_speed # instance variable
  end

  def top_speed
    @top_speed
  end
end

car1 = Car.new("Toyota", "Corolla")
car2 = Car.new("Honda", "Civic")
puts "Total number of cars: #{Car.total_cars}" # prints "Total number of cars: 2"

sports_car1 = SportsCar.new("Ferrari", "488", 330)
puts "Total number of cars: #{SportsCar.total_cars}" # prints "Total number of cars: 3"
puts "Make of sports car: #{sports_car1.make}" # prints "Make of sports car: Ferrari"
puts "Top speed of sports car: #{sports_car1.top_speed}" # prints "Top speed of sports car: 330"

