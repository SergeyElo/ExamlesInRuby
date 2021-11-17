print "Input kol znak: "
k = gets.chomp.to_i
epsilon = 1/ ("1" + "0" * k).to_f
e = 2.0
p = 1.0
n = 2
e0 = 0
until  (e - e0).abs < epsilon
  e0 = e
  p *= n
  n += 1
  e += 1 / p
end
puts "e= #{e.round(k)}"

puts Math.exp(1)

