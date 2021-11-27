require './tree.rb'

# items = [35, 1, 24, 2, -4, 3, 25, 4, 94, 5, 0, 6, 14, 7]

items = Array.new(14){ rand(100)-50 }

tree = Tree.new
items.each { |x| tree.insert(x) }
puts tree.inorder { |x| print "#{x} "}
puts tree.inbackorder { |x| print "#{x} "}