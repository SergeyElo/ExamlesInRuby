def new_roman(arabic_number)
  symbols = {0 => ["I", "V"], 1 => ["X", "L"], 2 => ["C","D"], 3 => ["M"]}
  reversed_digits = arabic_number.to_s.split(//).reverse
  romans =[]
  reversed_digits.length.times do |i|
    if reversed_digits[i].to_i< 4
      romans<<(symbols[i][0]*reversed_digits[i].to_i)
    elsif reversed_digits[i].to_i == 4
      romans<<(symbols[i][0]+ symbols[i][1])
    elsif reversed_digits[i].to_i == 9
      romans<<(symbols[i][0] + symbols[i+1][0])
    else
      romans<<(symbols[i][1] + (symbols[i][0]*((reversed_digits[i].to_i)-5)))
    end
  end
  romans.reverse.join("")
end

puts new_roman(2021)
