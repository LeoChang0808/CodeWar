def digital_root(n)
  n.digits.sum > 9 ? digital_root(n.digits.sum) : n.digits.sum
end


p digital_root(16)
# 7
p digital_root(942)
# 6
p digital_root(132189)
# 6
p digital_root(493193)
# 2
