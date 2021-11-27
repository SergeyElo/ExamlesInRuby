class SpaceStation
  def initialize
    @supplies = {}
    @fuel = 0
  end

  def run_sensors
    puts "----- Sensor Action -----"
    puts "Running sensors!"
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

  def load_fuel(quantity)
    puts "----- Fuel Action -----"
    puts "Loading #{quantity} units of fuel in the tank."
    @fuel += quantity
  end

  def report_fuel
    puts "----- Fuel Report -----"
    puts "#{@fuel} units of fuel available."
  end

  def activate_thrusters
    puts "----- Thruster Action -----"
    if @fuel >= 10
      puts "Thrusting action successful."
      @fuel -= 10
    else
      puts "Thruster Error: Insufficient fuel available."
    end
  end
end

souz = SpaceStation.new
souz.load_fuel(200)
souz.load_supplies("uran", 10)
