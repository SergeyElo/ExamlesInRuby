require "matrix"

def Pr(m, name)
  s = m.to_s
  s.gsub!("],", "\n")
  s.delete!("[],A-z")
  puts "Matrix #{name}:\n #{s}"
end

a = Matrix[[1,2,3],[1,3,3],[2,1,5]]
b = Matrix[[1,1,2],[5,2,1],[4,4,3]]
c = a * b
ta = a.transpose

Pr(a, "A")
Pr(b, "B")
Pr(a + b, "A+B")
Pr(c, "A*B")
Pr(ta, "At")

m = Matrix[[9,4],[5,3]]
Pr(m, "M")
puts "|m|=#{m.determinant}"