def dig_pow(n, p)
  sum = n.to_s.chars.map(&:to_i).each_with_index.reduce(0){ | acc, (n,i) | acc + n**(p+i) }
  sum % n == 0 ? sum / n : -1
end

p dig_pow(89, 1)
# 1
p dig_pow(92, 1)
# -1

p dig_pow(46288, 3)
# 51
