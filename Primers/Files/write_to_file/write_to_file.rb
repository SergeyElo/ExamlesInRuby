votes = []
(0).upto(99) do
  |n|
  x = rand(10) + 1
  x % 2 == 0 ? s = "Amber Graham" : s = "Brian Martin"
  votes[n] = s + "\n"
end

File.open("votes.txt", "w") do |file|
  file.puts votes
end

