def spin_words(string)
  result = []
  string.split(" ").each do |i|
    i.length < 5 ? result << i : result << i.reverse
  end
  result.join(" ")
end

spin_words("Hey fellow warriors")
# "Hey wollef sroirraw"
