def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end
lines = []
File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end
relevant_lines = lines.find_all { |line| line.include?("Truncated") }
reviews = relevant_lines.reject { |line| line.include?("--") }
# эта часть кода не работала - ошибка "undefined method `+' for nil:NilClass (NoMethodError)"
# изменил в файле фрагмент:
# I'm pretty sure this was shot on a mobile phone. Truncated
# is astounding in its disregard for filmmaking aesthetics.
# на
# I'm pretty sure this was shot on a mobile phone.
# Truncated is astounding in its disregard for filmmaking aesthetics.
#
adjectives = reviews.map do |review|
  adjective = find_adjective(review)
  "'#{adjective.capitalize}'"
end
puts "The critics agree, Truncated is:"
puts adjectives
