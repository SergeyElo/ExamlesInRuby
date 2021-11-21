# Пример переопределения сложения
class NewNum
  attr_accessor :num
  def initialize(num)
    @num = num
  end
  def +(other)
    NewNum.new(@num * other.num)
  end
  def to_s
    "#{@num}"
  end
end

a = 10
b = 20
w = a + b
puts "1 prim: #{a}+#{b}=#{w}"

a = NewNum.new(10)
b = NewNum.new(20)
w = a + b
puts "1 prim: #{a}+#{b}=#{w}"

