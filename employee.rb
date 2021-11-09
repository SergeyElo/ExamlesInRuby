class Employee
  attr_reader :name   # name - наследуется классами SalariedEmployee && HourlyEmployee
  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end
  # методы initialize классов SalariedEmployee && HourlyEmployee
  # вызывают этот метод initialize с помощью ключевого слова super
  def initialize(name = "Anonymous")
    self.name = name
  end
  # методы print_pay_stub классов SalariedEmployee && HourlyEmployee
  # вызывают этот метод
  def print_name
    puts "Name: #{name}"
  end
end

class SalariedEmployee < Employee
  attr_reader :salary # этим атрибутом обладают только штатные работники с фикс. окладом
  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end
  # вызывается при вызове SalariedEmployee.new
  def initialize(name = "Anonymous", salary = 0.0)
    super(name)     # вызываем метод initialize суперкласса, передавая только имя
    self.salary = salary  # этот атрибут только в этом классе - оклад
  end
  def print_pay_stub
    print_name    # вывод имени поручается суперклассу
    pay_for_period = (salary / 365.0) * 14  # вычисление заработка за две недели
    formatted_pay = format("$%.2f", pay_for_period)   # форматирование до 2 цифр после запятой
    puts "Pay This Period: #{formatted_pay}"
  end
end

class HourlyEmployee < Employee
  def self.security_guard(name)   # определение нового метода класса
    # создание нового экземпляра класса с заданными: именем, почасовой ставкой и кол-вом рабочих дней в неделю
    HourlyEmployee.new(name, 19.25, 30)
  end
  def self.cashier(name)  # тоже самое для других работников с почасовой оплатой
    HourlyEmployee.new(name, 12.75, 25)
  end
  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end
  attr_reader :hourly_wage, :hours_per_week   # этим атрибутом обладают только работники с почасовой оплатой
  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "An hourly wage of #{hourly_wage} isn't valid!"
    end
    @hourly_wage = hourly_wage
  end
  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "#{hours_per_week} hours per week isn't valid!"
    end
    @hours_per_week = hours_per_week
  end
  # вызывается при вызове HourlyEmployee.new
  def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)   # вызывается метод суперкласса, передаётся только имя
    self.hourly_wage = hourly_wage  # задаём здесь, т.к. принадлежат только данному классу
    self.hours_per_week = hours_per_week
  end
  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end

jane = SalariedEmployee.new("Jane Doe", 50000)
jane.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Matthews")
ivan = HourlyEmployee.cashier("Ivan Stokes")
angela.print_pay_stub
ivan.print_pay_stub