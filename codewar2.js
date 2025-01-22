function high(x) {
    const alphabetArr = [...'abcdefghijklmnopqrstuvwxyz'];
    const xArr = x.split(" ").map((word) => word.split(""));
    let maxSum = 0
    let maxWord = ""

    for (let i = 0; i < xArr.length; i++) {
        let wordSum = 0
        xArr[i].map((t)=>{
            wordSum += alphabetArr.indexOf(t)+1;
        })
        if (wordSum > maxSum) {
            maxSum = wordSum
            maxWord = xArr[i].join("")
        }
    }
    return maxWord
}

console.log(high('man i need a taxi up to ubud')); // 'taxi'