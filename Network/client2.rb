require 'socket'
host, port = ARGV
TCPSocket.open(host, port) do |s| # Использование формы метода open с блоком кода
  while line = s.gets
    puts line.chop
  end
end # Сокет автоматически закрывается