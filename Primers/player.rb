# Выполнение команды терминала из программы
# Музыкальный плеер   #  cmd = "/usr/bin/./rhythmbox"
# Опера               # cmd = "/snap/bin/./opera"
# Telegram            # cmd = "/snap/bin/./telegram-desktop"
# Просмотр каталога   # cmd = "ls"
# Путь к программе    # cmd = "which rhythmbox"

cmd = "/usr/bin/./rhythmbox-client "    # запуск плеера Rhythmbox
system cmd + "--no-present"             # не открывать окно плеера
# хэш с пунктами меню управления плеером
h = {"1" => "play", "2" => "pause", "3" => "next", "4" => "previous",
     "5" =>"volume-down", "6" =>"volume-up", "0" => "exit"}
puts h                                # вывод меню
begin                                 # начало цикла
  opt = h[gets.chomp]                 # ввод с клавиатуры номера пунка меню = это ключ для поиска в хэше
  if (opt != nil) && (opt != "exit")  # если есть в хэше и не выход
    system cmd + "--" + opt           # выполнение выбранной команды
  end                                 # end if
  puts cmd + '--' + opt
end while opt != "exit"               # выход из цикла если выбран пункт 0 - выход
system cmd + " --pause -- quit"       # остановить плеер и выйти из него
