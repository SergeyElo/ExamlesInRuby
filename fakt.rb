n = 5

# цикл 1
p = 1
i = 1
until i > 5
  p *= i
  i += 1
end
puts "p1=#{p}"

# цикл 2
p = 1
i = 1
while i <= n
  p *= i
  i += 1
end
puts "p2=#{p}"

# цикл 3
p = 1
i = 1
begin
  p *= i
  i += 1
end until i > n
puts "p3=#{p}"

# цикл 4
p = 1
i = 1
begin
  p *= i
  i += 1
end while i <= n
puts "p4=#{p}"

# способ 5
puts "p5=#{(1..n).inject(1) {|p,i| p*i}}"

# способ 6
p=1
1.upto(n) {|x| p *= x }
puts "p6=#{p}"

# способ 7
puts "p7=#{Math.gamma(n+1).to_i}"