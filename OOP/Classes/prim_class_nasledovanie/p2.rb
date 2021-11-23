class Animal
  attr_accessor :name, :age, :color
  def say
    "rrrrrrrrrrrrrrrrrrrr!"
  end
end

class Dog < Animal
end

class Cat < Animal
end

class Snake < Animal
  attr_accessor :length
  def say
    "s-s-s-s-s..."
  end
end

a = Dog.new
a.name = "Sharik"
a.age = 3
a.color = "white"

b = Cat.new
b.name = "Kisa"
b.age = 1
b.color = "black"

c = Snake.new
c.name = "Gad"
c.age = 2
c.color = "gray"
c.length = 55

puts "#{a.name} #{a.age} #{a.color} #{a.say}"
puts "#{b.name} #{b.age} #{b.color} #{b.say}"
puts "#{c.name} #{c.age} #{c.color} #{c.length} #{c.say}"


