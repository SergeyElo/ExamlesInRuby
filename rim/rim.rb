def RimDec(s_rim)
  rim = { "I"=>1,"V"=>5,"X"=>10 ,"L"=>50, "C"=>100, "D"=>500, "M"=>1000 }
   p = 0
   i = 0
   while i < s_rim.length - 1
     if (rim[s_rim[i]] < rim[s_rim[i + 1]])
       p -= rim[s_rim[i]]
     elsif (rim[s_rim[i]] >= rim[s_rim[i + 1]])
       p += rim[s_rim[i]]
     end
     i += 1
   end
   p += rim[s_rim[-1]].to_i
end

begin
print("Input Rim number (0-exit): ")
s = gets.chomp
puts "Decimal number: #{RimDec(s)}"
end until s == "0"
