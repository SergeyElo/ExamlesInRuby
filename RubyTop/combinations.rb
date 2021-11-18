def comb(m, n)
  (0...n).to_a.combination(m).to_a
end

p comb(3,5)
