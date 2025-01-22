function filter_list(l) {
    return l.filter((text) => typeof(text) == "number" )
}
console.log(filter_list([1,2,'a','b']));