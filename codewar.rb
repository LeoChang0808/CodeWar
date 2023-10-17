def disemvowel(str)
  str.split(/[aeiouAEIOU]/).join
end

disemvowel("This website is for losers LOL!")

# "Ths wbst s fr lsrs LL!"
