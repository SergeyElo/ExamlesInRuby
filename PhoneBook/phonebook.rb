require 'yaml'

def WriteBook(k)
  File.open('phones.yml', 'w') { |f| f.write(@k.to_yaml) }
  puts "Books writed."
end

def ReadBook(k)
  @k = YAML.load_file('phones.yml')
  puts "Books readed."
end

def PrintBook(k)
  puts "Phone Book\t\t\t\t\t\t#{Time.now.strftime("%d-%m-%y %A %H:%M:%S")}"
  puts "-" * 60
  puts "N\tPhone\t\t\tAbonent"
  puts "-" * 60
  n = 0
  @k.each {|key, val| puts "#{n += 1}).\t#{key}\t-\t#{val}" }
  puts "=" * 60
end

t = {}
ReadBook(t)
PrintBook(t)

