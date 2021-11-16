class Human
attr_reader :name, :age

def initialize (name, age)
  @name = name
  @age = age
end

def change_age_to(new_age)
  @age = new_age if check_conditions
end

def check_conditions
  # проверяем выполнены ли какието особые требования для смены возраста.
  true # типа проверили и возвращаем true (истина)
end
end

qpi = Human.new('Qpi', 32) # создаем объект qpi
puts "Меня зовут #{qpi.name} и я родился #{qpi.age} года назад "

#qpi.age=24 # => 6.4.rb:23:in `<main>': undefined method `age=' for #<Human:0x000000028db358 @name="Qpi", @age=32> (NoMethodError)

qpi.change_age_to 24
puts "Меня зовут #{qpi.name} и я родился #{qpi.age} года назад " # => Меня зовут Qpi и я родился 24 года назад

names = Array["George", "Bob", "Alex"]
#names[0] = "Diana"
puts(names[0, 3])