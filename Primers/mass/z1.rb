def ZapMas(n, m)
  mas = []
  (0..n-1).each do |i|
    s = []
    (0..m-1).each do |j|
      s.push(n * i + j + 1)
    end
    mas[i] = s
  end
  mas
end

def PrintMas(mas)
  n = mas.length
  m = mas[0].length
  n.times do |i|
    m.times { |j| print "%4i" %mas[i][j] }
    puts
  end
end

a = ZapMas(4, 4)
PrintMas(a)

b = ZapMas(3, 6)
PrintMas(b)