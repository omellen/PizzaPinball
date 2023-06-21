//check for collision
//constantly runnig to see if ball is close to object
//if it is, send the name which whill put it into an array of items
//the player has collected
//turn on the layer that the corresponding item is on
if (IngredientsCollisions("Cheese") == true) {
	layer_set_visible("Cheese_Instances", true);
}


