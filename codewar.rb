def ipsBetween(start, ending)
  result = start.split(".").map{|n| n.to_i}.zip(ending.split(".").map{|n| n.to_i}).map{|x,y| x - y}
  result.zip([256**3,256**2,256,1]).map{|x,y| x * y}.sum.abs
end

ipsBetween("10.0.0.0", "10.0.0.50")
# 50
ipsBetween("20.0.0.10", "20.0.1.0")
# 246
