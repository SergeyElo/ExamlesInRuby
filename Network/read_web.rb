require 'socket'            # Нам нужны сокеты

host='www.example.com'    # Веб-сервер
port=80                    # HTTP-порт, используемый по умолчанию
path="/index.html"        # Нужный нам файл
# Это HTTP-запрос, отправляемый для извлечения файла
request="GET #{path} HTTP/1.0\r\n\r\n"
socket=TCPSocket.open(host.port)    # Подключение к серверу
socket.print(request)                 # Отправка запроса
response=socket.read                # Чтение всего ответа целиком
# Разбиение ответа по первой пустой строке на заголовки и тело
headers.body=response.split("\r\n\r\n", 2)
print body                            # И его отображение
