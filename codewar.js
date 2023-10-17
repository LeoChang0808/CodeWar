function toCamelCase(str){
  let strArr = str.split(/[_-]/)
  let result = strArr[0]
  for (let i = 1; i < strArr.length; i++) {
    result += strArr[i][0].toUpperCase() + strArr[i].substring(1);
  }
  return result
}


console.log(toCamelCase("the-stealth_warrior"));