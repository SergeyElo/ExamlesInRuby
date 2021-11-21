def Board(p1, p2)
  def Put(t)
    case t
    when 1
      sim = "#"
    when 0
      sim = "."
    when 5
      sim = "X"
    when 9
      sim = "O"
    else
      sim = " "
    end
    print sim
  end
  puts "Pole N 1   " + " " * 20 + " Pole N 2"
  puts "  ABCDEFGHIJ" + " " * 20 + "ABCDEFGHIJ"
  (0..9).each do |i|
    print (i < 9 ? " " : "") + (i + 1).to_s
    (0..9).each do |j|
      Put(p1[i][j])
    end
    print " " * 18 + (i < 9 ? " " : "") + (i + 1).to_s
    (0..9).each do |j|
      Put(p2[i][j])
    end
    puts
  end
end

def TakeMove(mas, hod)
  i = hod[1].to_i - 1
  if hod.length == 3
    i = hod[1..2].to_i - 1
  end
  j = hod[0].ord - 65
  if mas[i][j] == 1
    mas[i][j] = 5
    puts "Popal!"
  end
  if mas[i][j] == 0
    mas[i][j] = 9
    puts "Mimo..."
  end
  mas[i][j]
end

def FinishGame(n, m)
  p = true
  (0..9).each do
    |i|
    if n[i].include?(1) || m[i].include?(1)
      p = false
      break
    end
  end
  p
end

a = [ [0,1,0,1,0,0,0,0,0,1],
      [0,0,0,0,0,1,1,0,0,0],
      [0,0,1,0,0,0,0,0,1,0],
      [0,0,0,0,1,0,0,0,1,0],
      [0,0,0,0,1,0,0,0,0,0],
      [0,1,0,0,1,0,0,0,0,0],
      [0,1,0,0,0,0,0,0,1,1],
      [0,1,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,1,1,1,1,0],
      [0,1,1,0,0,0,0,0,0,0]]

b = [ [0,0,0,0,0,0,0,1,0,1],
      [0,0,0,0,0,0,0,1,0,1],
      [0,0,1,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,1,0,1],
      [0,0,0,0,0,0,1,0,0,1],
      [0,0,0,0,0,0,0,1,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,1,1,1,0,0,1],
      [0,0,0,0,0,0,0,0,0,1],
      [0,1,1,1,1,0,0,0,0,1]]
num = 1
begin
  Board(a, b)
  print "Player N #{num}. Input pole: "
  s = gets.chomp.upcase
  if s == "0"
    break
  end
  num == 1 ? x = b : x = a
  if TakeMove(x, s) != 5
    num = 3 - num
  end
end until FinishGame(a,b)


