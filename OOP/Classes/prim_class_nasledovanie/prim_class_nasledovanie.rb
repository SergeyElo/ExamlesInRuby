class Vehicle
  attr_accessor :odometer
  attr_accessor :gas_used
  def accelerate
    puts "Floor it!"
  end
  def sound_horn
    puts "Beep! Beep!"
  end
  def steer
    puts "Turn front 2 wheels."
  end
  def mileage
    return @odometer / @gas_used
  end
end

class Car < Vehicle
end

class Truck < Vehicle
  attr_accessor :cardo
  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cardo = contents
  end
end

class Motorcycle < Vehicle
end


truck = Truck.new
truck.accelerate
truck.steer
truck.load_bed("25 bouncy balls")
puts "The truck is carrying #{truck.cardo}"

car = Car.new
#car.odometer = 11432
#car.gas_used = 366
#car.sound_horn


puts "Lifetime MPG:"
#puts car.mileage

puts "1: #{car.instance_variables}"
car.odometer = 99
puts "2: #{car.instance_variables}"
car.gas_used = 728
puts "3: #{car.instance_variables}"