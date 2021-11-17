n = 20

# цикл 1
p = 1
i = 1
until i > n
  p *= i
  i += 1
end
puts " 1) #{n}! = #{p}"

# цикл 2
p = 1
i = 1
while i <= n
  p *= i
  i += 1
end
puts " 2) #{n}! = #{p}"

# цикл 3
p = 1
i = 1
begin
  p *= i
  i += 1
end until i > n
puts " 3) #{n}! = #{p}"

# цикл 4
p = 1
i = 1
begin
  p *= i
  i += 1
end while i <= n
puts " 4) #{n}! = #{p}"

# способ 5
puts " 5) #{n}! = #{(1..n).inject(1) {|p,i| p*i}}"

# способ 6
p=1
1.upto(n) {|x| p *= x }
puts " 6) #{n}! = #{p}"

# 7 способ - метод (похоже на функцию)
def F(num)
  p = 1
  x = 1
  begin
    p *= x
    x += 1
  end until x > num
  p
end
puts " 7) #{n}! = #{F(n)}"

# способ 8 рекурсия
def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end
puts " 8) #{n}! = #{fact(n)}"

# способ 9 коллекция
p = 1
for x in (1..n)
  p *= x
end
puts " 9) #{n}! = #{p}"

# способ 10 - по определению гамма функции Г(n+1) = n!
puts "10) #{n}! = #{Math.gamma(n+1).to_i}"
