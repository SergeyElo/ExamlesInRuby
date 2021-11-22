file_name = "numbers5.txt"

puts "First:"
if File.exist?(file_name)
  f = File.open(file_name)
  dt = f.readlines
  p dt
else
  p "File not found!"
end

puts "Second:"
IO.foreach(file_name) {|x| p x} rescue puts "Error!"

