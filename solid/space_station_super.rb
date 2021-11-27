class SpaceStation
  attr_reader :sensors, :supply_hold, :supply_reporter,
              :fuel_tank, :fuel_reporter, :thrusters

  def initialize
    @sensors = Sensors.new
    @supply_hold = SupplyHold.new
    @supply_reporter = SupplyReporter.new(@supply_hold)
    @fuel_tank = FuelTank.new
    @fuel_reporter = FuelReporter.new(@fuel_tank)
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
  attr_reader :reporter

  def initialize
    @supplies = {}
  end

  def get_supplies
    @supplies
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
end

class FuelTank
  attr_accessor :fuel
  attr_reader :reporter

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
end

class Thrusters
  FUEL_PER_THRUST = 10

  def initialize(fuel_tank)
    @linked_fuel_tank = fuel_tank
  end

  def activate_thrusters
    puts "----- Thruster Action -----"

    if @linked_fuel_tank.get_fuel_levels >= FUEL_PER_THRUST
      puts "Thrusting action successful."
      @linked_fuel_tank.use_fuel(FUEL_PER_THRUST)
    else
      puts "Thruster Error: Insufficient fuel available."
    end
  end
end

class Reporter
  def initialize(item, type)
    @linked_item = item
    @type = type
  end

  def report
    puts "----- #{@type.capitalize} Report -----"
  end
end

class FuelReporter < Reporter
  def initialize(item)
    super(item, "fuel")
  end

  def report
    super
    puts "#{@linked_item.get_fuel_levels} units of fuel available."
  end
end

class SupplyReporter < Reporter
  def initialize(item)
    super(item, "supply")
  end

  def report
    super
    if @linked_item.get_supplies.keys.length > 0
      @linked_item.get_supplies.each do |type, quantity|
        puts "#{type} avalilable: #{quantity} units"
      end
    else
      puts "Supply hold is empty."
    end
  end
end

iss = SpaceStation.new

iss.sensors.run_sensors
# ----- Sensor Action -----
# Running sensors!

iss.supply_hold.use_supplies("parts", 2)
# ----- Supply Action -----
# Supply Error: Insufficient parts in the supply hold.
iss.supply_hold.load_supplies("parts", 10)
# ----- Supply Action -----
# Loading 10 units of parts in the supply hold.
iss.supply_hold.use_supplies("parts", 2)
# ----- Supply Action -----
# Using 2 of parts from the supply hold.
iss.supply_reporter.report
# ----- Supply Report -----
# parts avalilable: 8 units

iss.thrusters.activate_thrusters
# ----- Thruster Action -----
# Thruster Error: Insufficient fuel available.
iss.fuel_tank.load_fuel(100)
# ----- Fuel Action -----
# Loading 100 units of fuel in the tank.
iss.thrusters.activate_thrusters
# ----- Thruster Action -----
# Thrusting action successful.
# ----- Fuel Action -----
# Using 10 units of fuel from the tank.
iss.fuel_reporter.report
# ----- Fuel Report -----
# 90 units of fuel available.