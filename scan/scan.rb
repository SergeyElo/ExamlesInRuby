s = "Hello! My age 35. My phone: 8-910-900-90-90."
puts "Only numbers: #{s.scan(/[0-9]/)}"
puts "Char not numbers: #{s.scan(/[^0-9]/)}"
puts "Only numbers 2: #{s.scan(/\d/)}"
puts "Char not numbers 2: #{s.scan(/\D/)}"
puts "Only letters: #{s.scan(/[A-Za-z]/)}"

w = "12 567 7 889 908 94 46 7 73 9878 432"
puts "Numbers: #{w.scan(/[[:word:]]+/)}"


