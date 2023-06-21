//Script Detects Collision and will destroy the 
//ingredient instance as well as return true
//return true is essential to make sure that 
//the object will set the layer to visible
//connected to each ingredientC
//also adds to the player score
function IngredientsCollisions(ingredientName){
	ingredientScore = 40;
	if(collision_circle(x,y,17,objBall,true,true)){
		increaseScore(x, y, ingredientScore);
		array_push(objController.playersPizza, ingredientName);
		instance_destroy();
		return true;
	}
}