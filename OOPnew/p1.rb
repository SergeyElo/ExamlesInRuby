
class Animal
  attr_accessor :name, :age
end

class Dog < Animal  # наследование от класса Animal
  def Sound         # полиморфизм - метод Sound с разной реализацией у разных классов
    puts "gav-gav"
  end
end

class Cat < Animal
  def Sound
    puts "may"
  end
end

class Snake < Animal  # наследование от класса Animal
  attr_accessor :length # добавление нового свойства
  def Sound
    puts "sssssssss"
  end
end

d = Dog.new
d.name = "Tuzik"
d.age = 1

c = Cat.new
c.name = "Muska"
c.age = 2

s = Snake.new
s.name = "Gaduka"
s.age = 3
s.length = 5

puts d.inspect
puts c.inspect
puts s.inspect

d.Sound
c.Sound
s.Sound