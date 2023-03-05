# instance variables and class variables

The main difference between instance variables and class variables in Ruby is that instance variables are associated with a particular instance of a class, while class variables are associated with the entire class and all its instances. Here are some more specific differences:

1. Scope: Instance variables are scoped to an instance of a class and can only be accessed within the instance methods of that class or its subclasses. Class variables are scoped to the entire class and can be accessed from anywhere within the class or its subclasses.

2. Initialization: Instance variables are initialized in the initialize method of a class, which is called whenever a new instance of the class is created. Class variables can be initialized outside of any method in the class definition, and are shared by all instances of the class.

3. Access: Instance variables can only be accessed by the instance of the class to which they belong, while class variables can be accessed by any instance of the class or by the class itself.

4. Inheritance: Instance variables are not inherited by subclasses, while class variables are inherited by all subclasses of the class.

```ruby
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

```

In the code, @make and @model are instance variables that belong to each instance of the Car class, while @@total_cars is a class variable that is shared by all instances of the class. When we create new instances of the Car class, the @@total_cars variable is incremented each time.

The SportsCar class is a subclass of Car, and inherits the @@total_cars class variable. It also defines its own instance variable @top_speed. When we create a new instance of SportsCar and call the total_cars class method, the output will include the sports car instance along with the instances of the Car class.
