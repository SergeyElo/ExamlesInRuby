s = "Hello! My age 35. sun 234 ddffr 98 fgfgf 4 fhfhfh 5f6 f77hgg0."
puts "Only numbers: #{s.scan (/[0-9]/)}"
puts "Char not numbers: #{s.scan (/[^0-9]/)}"

