def to_roman_explained(number)
  cif = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
                50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
  empty_string = ""
  rez = cif.inject(empty_string) do |result, (arab, roman)|
    whole_part, number = number.divmod(arab)
    result << roman * whole_part
  end
  rez
end

puts to_roman_explained(18)
puts to_roman_explained(53)
puts to_roman_explained(2021)
