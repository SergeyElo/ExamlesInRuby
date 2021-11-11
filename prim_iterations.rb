s = 0
1.upto(100) { |n| s += n }
puts "s=#{s}"

10.downto(1) { |n| print n, "-" }
puts

10.times { |x| print "#{x}," }
puts

s = 0
101.times { |n| s += n }
puts "s=#{s}"

s = 0
1.step(100,1) { |n| s += n }
puts "s=#{s}"

5.step(by: 5, to: 100) { |n| print "#{n} " }
puts

('a'..'z').step(2) { |ch| print "#{ch} " }
puts

(1..20).each { |n| print n, "," }
puts

(1..5).each_with_index { |key, value| print value, "-", key, " " }
puts

a = [1, 2, 3, 4, 5]
q = a.collect { |v| v**2 }
print "Sqrs of of a: #{q}"
puts

a = [10, 233, 19, 100, 8, 5, 11, 77, 80, 13]
puts "Kol no odd: #{a.count{ |v| v % 2 == 0}}"

a = [-8, 4, 8, -2, -6, 2, 4, 6]
puts a.any? { |x| x > 0 }
puts a.all? { |x| x > 0 }
puts a.any? { |x| x % 2 != 0 }
puts a.all? { |x| x % 2 == 0 }

h = {:a => 100, :b => 201, :c => 500, :d => 999, :e => 33, :z => 997}
puts "Original: #{h}"
puts "Find Odd: #{h.detect { |k, v| v % 2 != 0 }}"
puts "Find >300: #{h.detect { |k, v| v > 300 }}"
puts "All odd: #{h.find_all { |k, v| v % 2 != 0 }}"
puts "All > 300: #{h.select { |k, v| v > 300 }}"