def find_it(seq)
  result = 0
  seq.each { |x| result ^= x }
  result
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
# 5
find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
# -1
find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
# 5
find_it([10])
# 10
