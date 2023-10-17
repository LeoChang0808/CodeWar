def tribonacci(signature,n)
  case
  when signature.size == n
    signature
  when signature.size > n
    signature.slice(0,n)
  when signature.size < n
    result = 0
    for i in signature.size-3 .. signature.size-1
      result += signature[i]
    end
    signature << result
    tribonacci(signature,n)
  end
end


tribonacci([1,1,1],10)
# [1,1,1,3,5,9,17,31,57,105]

tribonacci([0,0,1],10)
# [0,0,1,1,2,4,7,13,24,44]

tribonacci([0,1,1],10)
# [0,1,1,2,4,7,13,24,44,81]

tribonacci([1,0,0],10)
# [1,0,0,1,1,2,4,7,13,24]

tribonacci([0,0,0],10)
# [0,0,0,0,0,0,0,0,0,0]
