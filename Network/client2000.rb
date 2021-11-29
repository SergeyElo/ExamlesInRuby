# ruby client.rb localhost 2000
require 'socket' # Получение сокетов из стандартной библиотеки
server = TCPServer.open(2000) # Сокет для ожидания подключения к порту 2000
loop { # Бесконечный цикл: сервер работает вечно
  client = server.accept # Ожидание подключения клиента
  client.puts(Time.now.ctime) # Отправка клиенту текущего времени
  client.close # Отключение от клиента
}