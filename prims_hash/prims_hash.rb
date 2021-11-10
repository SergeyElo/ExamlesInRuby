puts "------- prim 1 ---------" # Заполнение хеша
DIRS = Hash[*%w{
        ~/Local\ Storage/TV                 TV
        /media/Odeon/Cartoons               Cartoons
        /media/Odeon/TV                     TV
        /media/Lightning/G/TV\ Storage      TV
    }]
puts DIRS

puts "------- prim 2 ---------" # заполнение и вывод ключей
h = Hash.new("Go Fish")
h["a"] = 100
h["b"] = 200
puts "Keys: #{h.keys}"

puts "------- prim 3 ---------" # заполнение и сравнение хешей
h1 = { "a" => 1, "c" => 2 }
h2 = { 7 => 35, "c" => 2, "a" => 1 }
h3 = { "a" => 1, "c" => 2, 7 => 35 }
h4 = { "a" => 1, "d" => 2, "f" => 35 }
puts "Hash h1: #{h1}"
puts "Hash h2: #{h2}"
puts "Hash h3: #{h3}"
puts "Hash h4: #{h4}"
puts "h1 == h2 :#{h1 == h2}"
puts "h2 == h3 :#{h2 == h3}"
puts "h3 == h4 :#{h3 == h4}"
