class Animal
  attr_accessor :name, :age
end

class Dog < Animal
end

class Cat < Animal
end

class Snake < Animal
  attr_accessor :length
end

d = Dog.new
d.name = "Tuzik"
d.age = 1

c = Cat.new

s = Snake.new
s.name = "Gaduka"
s.age = 3
s.length = 5

puts d.inspect
puts c.inspect
puts s.inspect
