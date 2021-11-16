class Car
  attr_accessor :color
  attr_reader :door_title, :number
  def initialize(number)
    @number = number
    @color = "white"
  end
  def beep
    puts "beep!"
  end
  def change_door_title(driver)
    @door_title = driver.name if driver.cars.include?(self)
  end
end

class Driver
  attr_reader :name, :cars
  def initialize(name)
    @name = name
    @cars = []
  end
  def buy_car(car)
    @cars << car
    car.change_door_title(self)
  end
end

car1 = Car.new 1111
car2 = Car.new 22
bill = Driver.new "Bill"
mark = Driver.new "Mark"

puts car1.door_title
puts bill.cars

bill.buy_car(car1)
puts bill.cars
puts car1.door_title

car1.change_door_title(mark)
puts car1.door_title
puts mark.cars
puts car2.door_title

mark.buy_car(car2)
puts mark.cars
puts car2.door_title
puts car2.color
car2.color = "red"
puts car2.color

