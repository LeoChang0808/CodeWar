def narcissistic?(value)
  value == value.digits.map { |x| x ** value.digits.length}.sum
end


narcissistic?(5)
# true

narcissistic?( 153 )
# true

narcissistic?( 1633 )
# false
