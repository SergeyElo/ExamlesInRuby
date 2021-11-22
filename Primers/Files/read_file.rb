file_name = "numbers.txt"

puts "First:"
if File.exist?(file_name)
  f = File.open(file_name)
  dt = f.readlines
  p dt
else
  puts "...Error read file..."
end

puts "Second:"
if File.exist?(file_name)
  begin
    f = File.open(file_name)
    while line = f.gets
      p line
    end
  ensure
    f.close
  end
elsif
puts "Error read file!"
end

puts "Third:"
IO.foreach(file_name) {|x| p x} rescue puts "Error file!!!"

puts "Fourth:"
if File.exist?(file_name)
  p IO.readlines(file_name)
else
  p "Error file read___"
end


