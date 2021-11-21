kol_attempts = 10
kol_game = 1
slova = ["SUN", "SUMMER", "WINDOW", "COMPUTER", "REMEMBER","MOON","GIT"]
begin
  puts "New game N #{kol_game}"
  s = slova[rand(5)]
  p = "*" * s.length
  k = 0
  begin
    puts "Attempts N #{k +=1}. Desk: #{p}"
    print "Input letter (1 - word, 0 - exit):"
    c = gets.chomp.upcase
    if c == "1"
      print "Input word: "
      p = gets.chomp.upcase
      break
    end
    c == "0" ? begin 
      puts "You select exit."
      break 
    end 
    : (0).upto(s.length-1) { |n| s[n] == c ? p[n] = c : k = k } 
  end until p == s || k >= kol_attempts
  if p == s 
    puts "You win! Word is #{s}. Your kol attemps: #{k}." 
  elsif 
    if k < kol_attempts
      puts "You lost..."
    end
  end
  if k >= kol_attempts
    puts "You lost :( Word is #{s}."
  end
  kol_game += 1
end until c=="0"
