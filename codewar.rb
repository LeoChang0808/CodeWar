def generateHashtag(str)
  strArr = str.split(" ")
  if strArr.all?{ |e| e !~ /[a-zA-Z]/ }
    false
  elsif strArr.join.size >= 140
    false
  else
    strArr.unshift("#").map{ |w| w.capitalize }.join
  end
end


generateHashtag("")
# false
generateHashtag(" " * 200)
# false
generateHashtag("Do We have A Hashtag")
# "#DoWeHaveAHashtag"
generateHashtag("Codewars")
# "#Codewars"
generateHashtag("Codewars Is Nice")
# "#CodewarsIsNice"
generateHashtag("Codewars is nice")
# "#CodewarsIsNice"
