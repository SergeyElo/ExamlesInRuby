nums = [2,5,1,3,8,9,4,6], [3,5,6,2,9,8,4], [1,3,7,6,9]
p nums.inject(&:intersection)  # or nums.inject(:&)

p nums.class