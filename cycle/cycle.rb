print "1 way: "
n = 1
loop do
  print n, " "
  if n >= 10
    break
  end
  n += 1
end
puts

print "2 way: "
n = 0
while n < 10
  print "#{n += 1} "
end
puts

print "3 way: "
n = 1
begin
  print "#{n} "
  n += 1
end while n < 11
puts

print "4 way: "
n = 1
until n > 10
  print "#{n} "
  n += 1
end
puts

print "5 way: "
n = 1
begin
  print "#{n} "
  n += 1
end until n > 10
puts

print "6 way: "
for n in 1..10 do
  print "#{n} "
end
puts

print "7 way: "
10.times {|n| print "#{n + 1} "}
puts

print "8 way: "
1.upto(10) {|n| print "#{n} "}
puts

print "9 way: "
10.downto(1) {|n| print "#{n} "}
puts

print "10 way: "
(1..10).each {|n| print "#{n} "}
puts

print "11 way: "
(1..10).select {|n| print "#{n} "}
puts

print "12 way: "
(1..10).step(2) { |n| print "#{n} " }
puts
