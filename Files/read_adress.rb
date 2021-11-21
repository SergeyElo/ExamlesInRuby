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

pp h

