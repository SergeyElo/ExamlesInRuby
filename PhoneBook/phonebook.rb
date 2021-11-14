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

def AddAbonent(k)
  begin
    print "Input phone: "
    phone = gets.chomp
    f = @k.key?(phone)
    if f
      puts "Sorry, it's impossible, because phone #{phone} already exists!"
    end
  end until !f
  begin
    print "Input name: "
    name = gets.chomp
    f = @k.value?(name)
    if f
      puts "Sorry, it's impossible, because abonent #{name} already exists!"
    end
  end until !f
  @k[phone] = name
  puts "Added #{@k[phone]}."
end

def DelAbonent(k)
  print "Input num: "
  n_del = gets.chomp.to_i
  n = 0
  key_del = ""
  @k.each do |key, val|
    n += 1
    if n == n_del
      key_del = key
    end
  end
  if key_del != ""
    puts "Abonent N #{n_del}). #{key_del} - #{@k[key_del]} deleted."
    @k.delete(key_del)
  else
    puts "Input number out of range!"
  end
end

def FindAbonent(k)
  print "Find:"
  s = gets.chomp
  st = ""
  if s.include?("*")
    st = s.delete("*")
  end
  f = @k.select {|key, val| key == s || val.upcase == s.upcase ||
    (st !="" && val.upcase.include?(st.upcase))}
  if f.size == 0
    puts "#{s} not found!"
  else
    puts f
  end
end

t = {}
ReadBook(t)
PrintBook(t)
begin
  puts "1-Read 2-Write 3-Print 4-Add 5-Delete 6-Find 0-Exit"
  print "Input: "
  n = gets.chomp.to_i
  if n == 1
    ReadBook(t)
  end
  if n == 2
    WriteBook(t)
  end
  if n == 3
    PrintBook(t)
  end
  if n == 4
    AddAbonent(t)
  end
  if n == 5
    DelAbonent(t)
  end
  if n == 6
    FindAbonent(t)
  end
end until n == 0


