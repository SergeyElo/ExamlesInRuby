h = {}
file = File.open("adress.dat")
file.each do |line|
  line.split(/, /).each do |s|
    v, k = s.split(/@/)
    if v != "\n"
      h[v] = k.to_s.chomp
    end
    end
end

puts "Adresses from file."
n = 1
h.each { |key, value| print "%2i user: #{key}" %n," " * (12 - key.to_s.length) + "add: #{value}\n" }

