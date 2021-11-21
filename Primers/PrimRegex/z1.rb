# В тексте заменить все слова "карова" на "корова"
s = "арарара карова ссисис карова сииии иии корова сссс карова смииии, карова"
w = s.gsub("карова", "корова")
puts w

# Проверка телефонного номера
s = "+7-910-192-55-66"
pt_phone = /^((\+?7|8)[ \-] ?)?((\(\d{3}\))|(\d{3}))?([ \-])?(\d{3}[\- ]?\d{2}[\- ]?\d{2})$/
if s =~ pt_phone
  puts "Valid"
else
  puts "Error"
end
s = "+7-910192-5-66"
if s =~ pt_phone
  puts "Valid"
else
  puts "Error"
end

# Проверка кода цвета
p = /^(#)((?:[A-Fa-f0-9]{3}){1,2})$/
s = "#9f56A0"
if s =~ p
  puts "valid"
else
  puts "no"
end
s = "#9t56A0"
if s =~ p
  puts "valid"
else
  puts "no"
end
