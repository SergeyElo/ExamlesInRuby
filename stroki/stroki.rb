s = "ABCDEFGH abcdefgh 01234 55 55 55 АаБб Шш Щ Ъ э ю я"
puts s
# длина строки
puts s.length
# строка с конца - перевёртыш
puts s.reverse
# преобразование к прописным буквам
puts s.upcase()
# преобразование к строчным буквам
puts s.downcase()
st_one = "one"
st_two = "two"
# Конкатенация
st_new = st_one + st_two
puts(st_new)

# преобразование числа в строку и интерполяция - вставка в строку значения #{}
x = 12
y = 35
w = "summa " + x.to_s + " and #{y} = #{x + y}"
puts w

# перевод строки в число - берутся только цифры до первого символа не цифры
s = "593-st-blog"
n = s.to_i
puts n

# массив строк в одну строку
a = ["Ivanov" "Petrov" "Smirnov"]
puts a.to_s
a = [2, 3, 5, 6, 8, 9, -5, 77, -67, 93]
t = a.join("")
puts t, t.class, a.class

# репликация строк
s = "hello "
puts s * 5

# перевод строки \n и табуляция \t
s = "Fio: Ivanov Petr\nBorn: 2005\nAdress: Kostroma\tSovetskay\t55"
puts s

# обрезка строки
s = "((123456789))"
puts s[2..-3] # подстрока со 2-го символа до третьего с конца
puts s[3]   # 3-й символ - Внимание в старых версия Ruby - выводил код символа!
            # чтобы получить символ писали s[3..3]

# замена символа в строке
s = "hello- cat- remeber- city, yellow- prim-012--3."
puts s.tr("-",",")

# разбиение строки на подстроки
s = "12345678901234567890"
puts "#{s.split("")}"
s = "cat sun. print split array."
puts "#{s.split(".")}"

# перевод в 2, 8, 16 системы счисления
x = 250
puts "\n#{x} bin=#{x.to_s(2)} oct=#{x.to_s(8)} hex=#{x.to_s(16)}"

# формирование строки из русских букв
alf = "ё"
("а".."я").each {|c| alf += c}
puts alf, alf.size

# Исправление ошибок в тексте
s = "Жыло-было шыбко шыпящее жывотное"
t = s.gsub(/([ЖШжш])ы/){ $1 + "и" }
puts s, t

# Из текста выбрать только натуральные числа
s ="dfdf 123 fgh5bvv 78 fgh 6785 vbvb. "
t = s.scan(/\d+/)
puts "Числа 1) : #{t} #{t.class}"
t = s.delete("^0-9 ")
puts "Числа 2) : #{t} #{t.class}"
t = s.gsub(/[^\d ]/, '')
puts "Числа 3) : #{t} #{t.class}"
s.chars.select {|c| t =~ /[0-9]/}
puts "Числа 4) : #{t} #{t.class}"

# Получение русских слов
s = "Привет! dgdg dgdgd 112 dd 33 мир hgghhg dhdc sun май 1987. ююю мм,"
t = s.scan(/[А-Яа-я]+/)
puts "#{t}"

# Поиск адресов электронной почты
s = "495-506-13 56 nata@rambler.ru(34) 1.5.1232 12.14.56 31.декабря.9999  вывы ввв@mail.ru xcxcxc_cc@mail.ru ccc"
t = s.scan(/(?:[-a-z_\d])+@(?:[-a-z])*(?:\.[a-z]{2,4})+/)
puts t





