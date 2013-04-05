<?php
echo 'hello world'.PHP_EOL;

/**********************/
// FUNCTION
function ajoute($a, $b)
{
	return $a + $b;
}
echo ajoute(3,6);
echo  PHP_EOL;
/**********************/
// FUNCTOR










$ponies = ['Rainbow Dash','Pinkie Pie','Twilight Sparkle'];


/**********************/
// FILTER
$tooCool = function($s){
	return ($s != 'Rainbow Dash');
};
function FILTER($f,$l){
	$j=0;
	$n = [];
	for($i=0;$i<sizeof($l);$i++){
		if($f($l[$i]) == true){
			$n[$j++] = $l[$i];
		}
	}
	return $n;
}
print_r(FILTER($tooCool,$ponies));

/**********************/
// REDUCE



/**********************/
// MAP is a special case of reduce



/**********************/
// MAP REDUCE



/**********************/
// COMBINATORS



/**********************/
// 

?>