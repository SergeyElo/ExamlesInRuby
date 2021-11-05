# BLOCK methods

# Method Сalculation factorial (function)
def Fc(n)
  p = 1; x = 1; while x <= n;  p *= x;  x += 1  end;  return p
end

# Method Сalculation factorial (procedure)
def PrintFc(mes, n)
  p = 1
  x = 1
  while x <= n
    p *= x
    x += 1
  end
  puts "#{mes}#{n}!=#{p}"
end

# Method Сalculation factorial recursion
def F(n)
  if n < 2
    1
  else
    n * F(n - 1)
  end
end

# Method recusion short
def Factorial(n)
  n > 1 ? n * Factorial(n - 1) : 1
end
# end BLOCK methods

# Main --------
print "Input n:"
num = gets.to_i

# 1 sposob Classic
p = 1
i = 1
while i <= num
  p = p * i
  i = i + 1
end
puts "1 sposob #{num}!=#{p}"

# 2 sposob Classic on Ruby
p = 1
i = 1
while i <= num
  p *= i
  i += 1
end
puts "2 sposob #{num}!=#{p}"

# 3 sposob short
(1..num).inject(1) {|p, i| p * i}
puts "3 sposob #{num}!=#{p}"

# 4 sposob short
p = 1
1.upto(num) {|x| p *= x }
puts "4 sposob #{num}!=#{p}"

# 5 sposob Metod - seems as procedure
PrintFc("5 sposob ", num)

# 6 sposob Method - seems as function
puts "6 sposob #{num}!=#{Fc(num)}"

# 7 sposob Method recursion
puts "7 sposob #{num}!=#{F(num)}"
# 8 sposob Method recursion short
puts "8 sposob #{num}!=#{Factorial(num)}"
# 9 sposob standart function gamma
# definition: Gamma(n+1)=n!
puts "9 sposob #{num}!=#{Math.gamma(num + 1).to_i}"
