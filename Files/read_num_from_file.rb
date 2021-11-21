# Числа разделённые пробелами из файла в хэш
n = 0
num = {}
f = File.open("nums.dat")
f.each { |line| line.split(" ").each { |x| num[n += 1] = x.to_i } }
f.close
puts num
