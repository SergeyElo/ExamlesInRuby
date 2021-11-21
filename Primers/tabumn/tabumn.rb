# Вывод таблицы умножения
(1).upto(9) {|x| (1).upto(9) {|y|  print "#{x * y}\t"}; puts}

puts
# Просто циклами но с цветом
green = 32
blue = 36
i = 1
while i < 10
  j = 1
  while j < 10
    i == 1 || j == 1 ? code_color = green : code_color = blue
    print "\e[#{code_color}m#{i * j}\e[0m\t"
    j += 1
  end
  puts
  i += 1
end

