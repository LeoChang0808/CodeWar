function accum(s) {
		return s.toLowerCase().split("").map((x,i) => {
		return x.toUpperCase()+x.repeat(i)
	}).join("-")
}

accum("ZpglnRxqenU")
// "Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu"