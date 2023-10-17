def square_digits num
  result = []
  num.to_s.split("").each do |i|
    result << i.to_i ** 2
  end
  result.join.to_i
end

square_digits(3212)
# 9414
square_digits(2112)
# 4114
square_digits(1111)
# 1111
square_digits(1234321)
# 14916941
