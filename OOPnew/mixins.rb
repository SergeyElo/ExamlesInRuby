# Пример эмуляции множественного наследования с помощью примесей

module Sum
  def sum
    inject { |s, element| s + element }
  end
end

module Mul
  def mul
    inject { |s, element| s * element }
  end
end

class Array
  include Sum
  include Mul
end

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
b = [5, 2, 5, 2 ]
puts "sum a = #{a.sum}"
puts "pro b = #{b.mul}"
