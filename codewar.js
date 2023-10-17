function rgb(r, g, b){
  return [r,g,b].map( i => 
    { return Math.min ( Math.max(i, 0), 255)
      .toString(16).padStart(2,"0").toUpperCase()
    }).join("")
}

console.log(rgb(0, 0, 0));
// '000000'

rgb(0, 0, -20)
// '000000'

rgb(300,255,255)
// 'FFFFFF'

rgb(173,255,47)
// 'ADFF2F'
