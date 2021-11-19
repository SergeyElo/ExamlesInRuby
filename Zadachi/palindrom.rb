s = "АРОЗАУПАЛАНАЛАПУАЗОРА"

sr = s.reverse
p sr
p s == sr

p s.gsub(/[a-zа-я]/,"") == s.gsub(/[a-zа-я]/,"").reverse

