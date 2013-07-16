

# **********************
console.log("\n********************");
console.log("FUNCTION");
add = (a,b) -> a + b


console.log(add(3,6));

# **********************
console.log "\n********************"
console.log "FUNCTOR"
caps = (start) -> start.toUpperCase()
console.log caps "hello ponies"

###
 map(f,l){
	var n = [],i;
	for(i=0;i<l.length; i++){
		n.push(f(l[i]));
	}
	return n;
}
var ponies = ["Rainbow Dash","Pinkie Pie","Twilight Sparkle"];
console.log(map(CAPS,ponies))

# ********************** 
console.log("\n********************");
console.log("FILTER");
 tooCool(s){
	return s != "Rainbow Dash";
}
 filter(f,l){
	var n = [], i;
	for(i=0;i<l.length; i++){
		if(f(l[i]) == true){
			n.push(l[i]);
		}
	}
	return n;
}
console.log(filter(tooCool,ponies));

# ********************** 
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
