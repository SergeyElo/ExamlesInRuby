# Пример переопределения сложения
class NewNum
  attr_accessor :num
  def initialize(num = 0)
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

a = NewNum.new(2)
b = NewNum.new(5)
w = a + b
puts "1 prim: #{a}+#{b}=#{w}"

