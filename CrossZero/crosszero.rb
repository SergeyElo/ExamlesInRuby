def P(a, n)
  c = a[n].to_s
  if a[n] == 0
    c = "O"
  else
    if a[n] == -1
      c = "X"
    end
   end
  return c
end
def Print(a)
  puts "┌───┬───┬───┐"
  i = 0
  while i < 7
    puts "│ #{P(a, i)} │ #{P(a, i+1)} │ #{P(a, i+2)} │"
    if i < 6
      puts "├───┼───┼───┤"
    elsif
      puts "└───┴───┴───┘"
    end
    i += 3
  end
end

pole = Array.new(9) {|n| n + 1}
winner_comb = [1,2,3,4,5,6,7,8,9,1,4,7,2,5,8,3,6,9,1,5,9,3,5,7]
k = 1
igrok = 0
f = 1
Print(pole)
begin
  begin
    print "Input num (1..9):"
    n = gets.chomp.to_i
    if pole[n-1] < 1
      puts "Field #{n} is occupied!"
    end
  end until pole[n-1] > 0
  pole[n-1] = igrok
  igrok = -1 - igrok
  k += 1
  Print(pole)
  if ((pole[0] == pole[1]) && (pole[0] == pole[2])) ||
    ((pole[3] == pole[4]) && (pole[3] == pole[5])) ||
    ((pole[6] == pole[7]) && (pole[6] == pole[8])) ||
    ((pole[0] == pole[3]) && (pole[0] == pole[6])) ||
    ((pole[1] == pole[4]) && (pole[1] == pole[7])) ||
    ((pole[2] == pole[5]) && (pole[2] == pole[8])) ||
    ((pole[0] == pole[4]) && (pole[0] == pole[8])) ||
    ((pole[2] == pole[4]) && (pole[2] == pole[6]))
    f = pole[0]
  end
end until f < 1
if f == -2
  puts "Draw"
elsif
  puts "Winner is #{(f == -1)?'X':'O'}"
end
