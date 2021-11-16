# Найти сумму неотрицательных элементов в массиве
m = [-1, 10, -10, 20, 50, 20, -3.14159]
puts m.select { |x| x > 0 }.inject { |s, x| s + x }

# Получить массив из кодов символов заданной строки
s = "abcdefgh 0123456789"
p s.codepoints              # p - вместо puts "#{}"

# таблица символов ASCII
chars = (32..127).map do |ord|
  k = case ord
      when 32  then "␠"
      when 127 then "␡"
      else ord.chr
      end
  "#{ord.to_s.ljust(3)}- #{k}"
end
chars.each_slice(chars.size/6).to_a.transpose.each{|s| puts s.join("  ")}