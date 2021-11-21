kol = 1
kol_attempts = 5
kol_win = 1
prc = 100.0
begin
  x = rand(8) + 2
  y = rand(8) + 2
  otv = x * y
  puts "kol_win=#{kol_win} kol=#{kol} prc=#{prc}"
  puts "Prim N #{kol}. Right: #{kol_win}. Percent: #{'%.1f' % prc}."
  puts "#{x}*#{y}=?"
  print "Input otvet:"
  otv_user = gets.chomp.to_i
  if otv_user == otv
    puts "Right!";
    kol_win += 1
  elsif
  puts "Error!"
  end
  kol += 1
  prc = kol_win.to_f / kol.to_f * 100.0
end until kol > kol_attempts
#Result
prc > 95 ? b = 5 : prc > 75 ? b = 4 : prc > 60 ? b = 3 : b = 2
puts "Result. Kol: #{kol - 1}. Right: #{kol_win - 1}. Percent: #{'%.1f' % prc}. Ball: #{b}."

