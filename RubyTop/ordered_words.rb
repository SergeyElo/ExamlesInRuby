#require 'open-uri'

#ordered_words = open("/home/elo/RubymineProjects/RubyTop/text.txt", "r").select do |word|
#  word.strip!
#  word.chars.sort.join == word
#end

#grouped = ordered_words.group_by &:size
#puts grouped[grouped.keys.max]
#

words = IO.foreach('text.txt').map(&:chomp).select {|word| puts word} #word.chars.sort.join == word}
#puts words.group_by(&:size).sort_by(&:first).last.last
puts words