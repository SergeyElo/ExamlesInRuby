s = "snow window door sun school cat milk photo"

puts s.split(" ").sort_by{ rand }.join(" ")

puts s.split.shuffle.join(' ')

puts s.split.shuffle*' '


