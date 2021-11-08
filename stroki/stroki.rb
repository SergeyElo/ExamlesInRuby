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

# перевод строки в число - берутся только цифры до первого не символа не цифры
s = "593-st-blog"
n = s.to_i
puts n

# массив строк в одну строку
a = ["Ivanov" "Petrov" "Smirnov"]
puts a.to_s

# репликация строк
s = "hello "
puts s * 5

# перевод строки \n и табуляция \t
s = "Fio: Ivanov Petr\nBorn: 2005\nAdress: Kostroma\tSovetskay\t55"
puts s

# обрезка строки - убираются первые два и последние два
s = "((123456789))"
puts s[2..-3]

# замена символа в строке
s = "hello- cat- remeber- city, yellow- prim-012--3."
puts s.tr("-",",")

# разбиение строки на подстроки
s = "12345678901234567890"
print s.split("")

# перевод в 2, 8, 16 системы счисления
x = 250
puts "\n#{x} bin=#{x.to_s(2)} oct=#{x.to_s(8)} hex=#{x.to_s(16)}"




