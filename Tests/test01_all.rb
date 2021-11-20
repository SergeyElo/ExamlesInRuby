file = File.open(Dir.pwd + "/vopr01_all.txt")
sum_yes = 0
num = 1
file.each do |line|
  ost = (file.lineno + 10) % 11
  if  ost == 0
    print "Вопрос № #{num}\n#{line.chomp}\nВарианты ответа:\n"
    num += 1
  end
  if ost >= 1 && ost <= 9
    puts "#{ost} - #{line.chomp}"
  end
  if ost == 10
    otvet = line.to_i
    print "Выберите вариант ответа (1..9): "
    otvet_user = gets.chomp.to_i
    if otvet == otvet_user
      puts "Правильно"
      sum_yes += 1
    else
      puts "Ошибка"
    end
  end

end
file.close


