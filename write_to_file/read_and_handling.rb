lines = []
File.open("votes.txt") do |file|
  lines = file.readlines
end

votes = {}
lines.each do |line|
  name = line.chomp
  if votes[name] != nil
    votes[name] += 1
  elsif
    votes[name] = 1
  end
end

puts votes