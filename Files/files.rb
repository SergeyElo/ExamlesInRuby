# Для работы с файлами и каталогами
# используются методы классов Dir, File, FileUtils и класса IO

# текущая папка
current_path = Dir.pwd
puts current_path

# изменить директорию
Dir.chdir("/home")
puts Dir.pwd
Dir.chdir(current_path)
puts Dir.pwd

# создать папку
#Dir.mkdir("temp")
#Dir.mkdir("temp2")

# удалить какталог
#Dir.rmdir("temp2")

# содержимое директории
Dir.entries( "/etc" ).each { |е| puts е }

puts "Чтение из файла - 1 способ"
puts "Read file standard:"
file = File.open("prim.txt" )
file.each { |line| puts "#{file.lineno} #{line}" }
file.close

puts "Чтение из файла - 2 способ"
ARGV << "prim.txt"
print while gets

# Проверка существует ли файл
puts File.file?("prim.txt")
if File.exist?("dddddd.txt")
  puts "Yes."
else
  puts "File not found!"
end

# Является ли директорией
puts File.directory?("prim.txt")
puts File.directory?("/home")

f = "prim.txt"
puts "Информация о файле"
puts ("Пустой файл? #{File.zero?(f)}")
puts ("Размер файла: #{File.size(f)}")
puts ("Тип файла: #{File.ftype(f)}")
puts ( "Когда создан #{File.ctime(f)}")
puts ("Когда изменён #{File.mtime(f)}")
puts ("Последнее обращение #{File.atime(f)}")

