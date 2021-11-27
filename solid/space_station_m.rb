class SpaceStation
  attr_reader :sensors, :supply_hold, :fuel_tank, :thrusters

  def initialize
    @supply_hold = SupplyHold.new
    @sensors = Sensors.new
    @fuel_tank = FuelTank.new
    @thrusters = Thrusters.new(@fuel_tank)
  end
end

class Sensors
  def run_sensors
    puts "----- Sensor Action -----"
    puts "Running sensors!"
  end
end

class SupplyHold
  attr_accessor :supplies

  def initialize
    @supplies = {}
  end

  def load_supplies(type, quantity)
    puts "----- Supply Action -----"
    puts "Loading #{quantity} units of #{type} in the supply hold."

    if @supplies[type]
      @supplies[type] += quantity
    else
      @supplies[type] = quantity
    end
  end

  def use_supplies(type, quantity)
    puts "----- Supply Action -----"
    if @supplies[type] != nil && @supplies[type] > quantity
      puts "Using #{quantity} of #{type} from the supply hold."
      @supplies[type] -= quantity
    else
      puts "Supply Error: Insufficient #{type} in the supply hold."
    end
  end

  def report_supplies
    puts "----- Supply Report -----"
    if @supplies.keys.length > 0
      @supplies.each do |type, quantity|
        puts "#{type} avalilable: #{quantity} units"
      end
    else
      puts "Supply hold is empty."
    end
  end
end

class FuelTank
  attr_accessor :fuel

  def initialize
    @fuel = 0
  end

  def get_fuel_levels
    @fuel
  end

  def load_fuel(quantity)
    puts "----- Fuel Action -----"
    puts "Loading #{quantity} units of fuel in the tank."
    @fuel += quantity
  end

  def use_fuel(quantity)
    puts "----- Fuel Action -----"
    puts "Using #{quantity} units of fuel from the tank."
    @fuel -= quantity
  end

  def report_fuel
    puts "----- Fuel Report -----"
    puts "#{@fuel} units of fuel available."
  end
end

class Thrusters
  def initialize(fuel_tank)
    @linked_fuel_tank = fuel_tank
  end

  def activate_thrusters
    puts "----- Thruster Action -----"
    if @linked_fuel_tank.get_fuel_levels >= 10
      puts "Thrusting action successful."
      @linked_fuel_tank.use_fuel(10)
    else
      puts "Thruster Error: Insufficient fuel available."
    end
  end
end

