s = "АРОЗАУПАЛАНАЛАПУАЗОРА"

# old - from another language
i = 0
f = true
while (i <= (s.length - 1) % 2) && f
  f = s[i] == s[s.length - 1 - i]
  i += 1
end
p f

sr = s.reverse
p sr
p s == sr

p s.gsub(/[a-zа-я]/,"") == s.gsub(/[a-zа-я]/,"").reverse

