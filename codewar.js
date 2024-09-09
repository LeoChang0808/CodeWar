const squaredSpiral = (n) => {
	// Your code here
	return;
  };

squaredSpiral(0), [0, 0];
squaredSpiral(6), [-1, -1];
squaredSpiral(10), [2, 0];
squaredSpiral(12), [2, 2];
squaredSpiral(30), [3, 3];

let ansArr = (n) => {
	let arrCreate = ( n ) => {
		let x = [-1 + Math.sqrt(8*(n/2)+1)]/2
		// 這邊待修
		let resultArr=[]
		for(let i = 1; i <= x; i++) {
			resultArr.push(i)
		}
		resultArr = resultArr.flatMap(x=>[x,x])
		let lastNumber = n - resultArr.reduce((a,b)=>a+b)
		resultArr.push(lastNumber)
		
		return resultArr.filter(x=>x!==0)
	}
	let xArr = arrCreate(n).filter((_,index)=>index%2==0).map((v,i)=> i%2!==0?-v:v )
	let yArr = arrCreate(n).filter((_,index)=>index%2==0).map((v,i)=> i%2!==0?-v:v )

	console.log(arrCreate(n));
	console.log(xArr);
	console.log(yArr);
	

	return [xArr.reduce((a,b)=>a+b),yArr.reduce((a,b)=>a+b)]
}

console.log(ansArr(10));
// bug 待修復，因一開始將數字/2後，出來的陣列不對，應該不要/2直接想辦法生成 [x,x]
