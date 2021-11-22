file = File.open("numbers.txt")
mas = []
file.each { |line| line.split.map(&:to_f).each { |x| mas << x } }
file.close
mas_un = mas.uniq

p mas
p mas_un

h = {}
mas_un.each {|x| h[x] = mas.count(x)}

p h


