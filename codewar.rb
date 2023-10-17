def moveZeros(arr)
  zero = []
  result = []
  arr.each do |x|
    x == 0 ? zero << 0 : result << x
  end
  p result + zero
end

moveZeros([1,2,0,1,0,1,0,3,0,1])
# [ 1, 2, 1, 1, 3, 1, 0, 0, 0, 0 ]
