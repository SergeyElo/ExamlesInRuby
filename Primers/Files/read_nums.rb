x = []
file = File.open("numbers.txt")
file.each { |sf| sf.chomp.split(" ").each {|n| x << n.to_i} }
file.close

s = 0
i = 0
while i < x.length
  s += x[i]
  i += 1
end
puts "1) #{s}"

s = 0
(0..x.length-1).each {|i| s += x[i] }
puts "2) #{s}"

s = 0
x.length.times {|i| s += x[i] }
puts "2) #{s}"

s = x.inject(:+)
puts "3) #{s}"

s = x.map(&:to_i).reduce(0, :+)
puts "4) #{s}"

