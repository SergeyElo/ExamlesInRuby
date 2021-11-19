a = 12
b = (1..a)
p(b.select{ |n| (a % n == 0) } )

b = (1..a).to_a
p( b.find_all{ |x| a % x == 0 } )
