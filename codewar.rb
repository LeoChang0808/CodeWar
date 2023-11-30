def unique_in_order(iterable)
  result = []
  iterable = iterable.split("") if iterable.is_a?(String)
  iterable.each_with_index do |e, i|
    result << e if i == 0 || e != iterable[i - 1]
  end
  result
end

unique_in_order('AAAABBBCCDAABBB')
# ['A','B','C','D','A','B']
unique_in_order([1,2,2,3,3])
# [1,2,3]
unique_in_order(["a", "b"])
# ["a", "b"]
