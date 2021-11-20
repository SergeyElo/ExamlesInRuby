m = [5, 4, 1, 3, 2, 7, 0, 1, 7]
temp = (1...m.size).select{ |x| m[x] < m[x-1] }
p temp, temp.size


m = [5,-4, 8, 0, 2, 7, 0, 1, 7]
temp = (1...m.size).select{ |x| m[x] < m[x-1] }
p temp, temp.size
