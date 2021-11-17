slova = {"SNOW" => "СНЕГ", "SUN" => "СОЛНЦЕ", "CLOSE" => "ЗАКРЫТЬ",
         "WINDOW" => "ОКНО", "DOOR" => "ДВЕРЬ", "WATER" => "ВОДА",
         "RED" => "КРАСНЫЙ", "HELLO" => "ПРИВЕТ", "FREND" => "ДРУГ",
         "MY" => "МОЙ"}
s_en = "Hello my frend, Misha! Close window! Sun is red."
w = s_en.split(/[^A-z,!.+]/)
s_rus = ""
0.upto(w.length - 1) do |n|
  p = w[n].upcase
  sl = slova[p]
  if sl == nil
    if (p.include? ".") || (p.include? "!") || (p.include? ",")
       sl = slova[p[0..p.length-2]].to_s
       if sl.to_s == ""
         sl = p
       elsif
         sl = sl + p[-1]
       end
    end
  end
  s_rus += "#{sl} "
end
puts s_en
puts s_rus
