'0.9054054 0.518518 0.75'.split.each { |d| puts "%s %s" % [d, Rational(d)] }

[0.9054054, 0.518518, 0.75].each { |f| puts "#{f} #{f.rationalize(0.0001)}" }

