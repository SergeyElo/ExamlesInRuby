require 'open-uri'
print "Input way (1 or 2):"
num = gets.chomp.to_i

if num == 1
  anagram = Hash.new {|hash, key| hash[key] = []} # map sorted chars to anagrams
  URI.open('http://wiki.puzzlers.org/pub/wordlists/unixdict.txt') do |f|
    words = f.read.split
    for word in words
      anagram[word.split('').sort] << word
    end
  end
  count = anagram.values.map {|ana| ana.length}.max
  anagram.each_value do |ana|
    if ana.length >= count
      p ana
    end
  end
end

if num == 2
  anagrams = URI.open('http://wiki.puzzlers.org/pub/wordlists/unixdict.txt'){ |f|
    f.read.split.group_by{|w| w.each_char.sort}}
  anagrams.values.group_by(&:size).max.last.each{|group| puts group.join(", ") }
end
