file = File.open("numbers.txt")
mas = []
file.each { |line| line.split.map(&:to_f).each { |x| mas << x } }
file.close

mas.each { |x| puts x }

