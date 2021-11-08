["a", "b", "c"].each { |param| puts param }

s = 0
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |n| s += n}
puts "summa = #{s}"

s = 0
(1..100).each { |n| s += n}
puts "summa2 = #{s}"

(1..100).inject(0) {|s, n| s + n}
puts "summa3 = #{s}"