t = Time.new
puts "t=#{t}"
puts t.class

w = Time.now
puts "w=#{w}"

puts "Year: #{t.year}"
puts "Mounth: #{t.month}"
puts "Day: #{t.day}"
puts "Day of week: #{t.wday}"
puts "Day in year: #{t.yday}"
puts "Hour: #{t.hour}"
puts "Minute: #{t.min}"
puts "Second: #{t.sec}"
puts "Usecond: #{t.usec}"
puts "Zone: #{t.zone}"

puts "Time in seconds: #{t.to_i}"

a = t.to_a
puts "Massiv a: #{a}"

puts t.to_s
puts t.ctime
puts t.localtime
puts t.strftime("%Y-%m-%d %H:%M:%S")
puts t.strftime("%d-%m-%Y %H:%M:%S")
puts t.strftime("%d.%m %H:%M")
puts t.strftime("%d.%m.%y %a")
puts t.strftime("%d.%B.%Y %A")
puts t.strftime("%x")
