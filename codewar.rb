def pig_it text
  text.split(" ").map{ | word |
    if word.match?(/\p{Alpha}/)
      word.slice(1..-1) + word[0] + "ay"
    else
      word
    end
  }.join(" ")
end

p pig_it('Pig latin is cool')
# 'igPay atinlay siay oolcay'

p pig_it('This is my string')
# 'hisTay siay ymay tringsay'

p pig_it('Quis custodiet ipsos custodes ?')
# 'uisQay ustodietcay psosiay ustodescay ?'
