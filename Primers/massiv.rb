days = %w{Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье}
print days
puts ""
puts days[2], days.last, days.length

colors = ["red","green","blue"]
print colors
puts " len=#{colors.length}"

colors.push("yellow")
print colors
puts " len=#{colors.length}"

colors << "white" << "black" << "white" << "lime" << "white"
print colors
puts ""
puts " len=#{colors.length}"

colors.delete_at(0)
print colors
puts ""
puts " len=#{colors.length}"

colors.delete("white")
print colors
puts ""
puts " len=#{colors.length}"

puts("Вывод массива цветов 1 способ:")
for col in colors
  puts colors.index(col).to_s + "-" + col.to_s
end

puts("Вывод массива цветов 2 способ:")
colors.each { |c| puts c }

print "Вывод массива цветов 3 способ: #{colors}\n"
puts "#Ещё вывод массива в виде строки: #{colors.to_s}"

# Сумма чётных элементов в массиве
a = [23, 4, 55, 15, 61, 22, 18, 9, 3, 56, 7, 32, 57, 10]
s = 0
a.each do |n|
  if n % 2 == 0
    s += n
  end
end
puts "sum=#{s}"


# Отправляем массив в хэш }
h = {}
n = 0
colors.each {|x| h[n += 1] = x }
puts h