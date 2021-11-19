s = "1 2 34 9 5 63 7 8"

p s.split.map{ |i| i.to_i }.max

p s.split.map(&:to_i).max

p s.split.collect(&:to_i).max






