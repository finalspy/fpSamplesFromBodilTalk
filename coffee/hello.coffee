
# **********************
console.log "\n********************"
console.log "FUNCTION - fonction"
console.log "\tadd = (a,b) -> a + b"
add = (a,b) -> a + b
console.log "\tadd 3,6"
console.log "\t\t" + add 3,6

# **********************
console.log "\n********************"
console.log "FUNCTOR - foncteur/morphisme"
console.log "\tcaps = (start) -> start.toUpperCase()"
caps = (start) -> start.toUpperCase()
console.log "\tcaps 'hello ponies'"
console.log caps "\t\thello ponies"

# **********************
console.log "\n********************\n"
console.log 'ponies = ["Rainbow Dash","Pinkie Pie","Twilight Sparkle"]'
ponies = ["Rainbow Dash","Pinkie Pie","Twilight Sparkle"]

# **********************
console.log "\n********************"
console.log "MAP"
console.log "\tmap = (f,l) ->
  n = []
  for i in [0..l.length-1]
    n.push f(l[i])
  n"
map = (f,l) ->
  n = []
  for i in [0..l.length-1]
    n.push f(l[i])
  n
console.log "\tmap caps,ponies"
console.log "\t\t" + map caps,ponies

# **********************
console.log "\n********************"
console.log "FILTER"
console.log '\ttooCool = (s) -> s != "Rainbow Dash"'
tooCool = (s) -> s != "Rainbow Dash"
console.log '\tfilter = (f,l) ->
  n = []
  for i in [0..l.length-1]
    if f l[i]
      n.push l[i]
  n'
filter = (f,l) ->
  n = []
  for i in [0..l.length-1]
    if f l[i]
      n.push l[i]
  n
console.log "\tfilter(tooCool,ponies)"
console.log "\t\t" + filter(tooCool,ponies)


### **********************
console.log("\n********************");
console.log("REDUCE");
 reduce(f, l, i){
	var r = i, c;
	for(c = 0; c<l.length;c++){
		r = f(r,l[c]);
	}
	return r;
}
console.log(reduce(add,[1,2,3,4,5,6], 5));

# *********************
console.log("\n********************");
console.log("MAP is a special case of reduce");
 shoutyMapReducer(a,b){
	return a.concat(b.toUpperCase())
}
console.log(reduce(shoutyMapReducer,ponies,[]));

# ********************** 
console.log("\n********************");
console.log("Higer Order Function");
 mapReducer(f){
	return (a,b){
		return a.concat(f(b));
	}
}
console.log(CAPS,ponies,[]);
console.log(map(CAPS,ponies,[]));
console.log(mapReducer(CAPS),ponies,[]);
console.log(reduce(mapReducer(CAPS),ponies,[]));

# ********************** 
console.log("\n********************");
console.log("COMBINATORS");
 square(x){
	return x*x;
}
console.log(square(5));
 andThree(f,n){
	return (n){
		return f(n) + 3;
	}
}
var squareAndThree = andThree(square);
console.log(squareAndThree(5));

var pinkie = {
	name: "Pinkie Pie",
	type: "Earth Pony"
};

// ponyType(pony){
//	return pony.type;
//}
//console.log(ponyType(pinkie));

# ********************** 
console.log("\n********************");
//


###
