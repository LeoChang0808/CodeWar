def rgb(r, g, b)
  number = [ r, g, b ].map do |x|
    [0, [x, 255].min].max
  end
  result = number.map do |x|
    x.to_s(16).rjust(2,"0").upcase()
  end
  result.join
end


rgb(0, 0, 0)
# '000000'
rgb(0, 0, -20)
# '000000'
rgb(300,255,255)
# 'FFFFFF'
rgb(173,255,47)
# 'ADFF2F'
