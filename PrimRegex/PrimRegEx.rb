s = "345Hello Misha! How do you do 234 you?"

# брать только цифры \d
t = s.scan(/\d+/)
puts "#{t}"

# брать не цифры \D
t = s.scan(/\D+/)
puts "#{t}"


pattern = '(?P<m>[0-9]{2})/(?P<d>[0-9]{2})/(?P<y>[0-9]{4}) (?P<hm>[0-9]{2}:[0-9]{2})'
repl = '\g<d>/\g<m>/\g<y> в \g<hm>'

text = "bncvbncvbn 03/21/2017 cvc,c,c 01/10/2010 vcmcmcmmccm 06/12/2002"
puts text.sub(pattern, repl)

