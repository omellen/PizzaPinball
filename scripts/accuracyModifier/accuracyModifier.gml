function accuracyModifier(actualArray, idealArray){
	//this variable will keep track of how many matches
	//there are betweent the two arrays
	matches = 0;
	//this for loop will compare every item of the actualArray
	//to every item in the idealArray
	for(var i = 0; i<array_length(actualArray); i++){
		for(var j = 0; j<array_length(idealArray); j++){
			if(actualArray[i]==idealArray[j]){
				//if a match is found, increase the match variable
				matches++;
			}
		}
	}
	//if the actualArray is longer than the idealArray (which in this case
	//would imply that the player collected too many unwanted toppings
	//on their pizza), the difference between the arrays will be subtracted
	//from the matches variable
	if(array_length(actualArray)>array_length(idealArray)){
		repeat(array_length(actualArray)-array_length(idealArray)){
			matches--;
		}
	}
	//our modifier will be a percentage multiplied by the total score
	//this line calculates said percentage by dividing the amount of matches
	//by the length of the idealArray
	modifier = (matches/array_length(idealArray));
	return modifier;
}