//function that will create a pizza with random toppings that the user must match
function RandomizePizza(){
	randomize();
	//I created variable for each topping option and set them to false bfore putting them in an array.
	//After, a random number of toppings is chosen.
	//My code will go through a loop however many times stated previously
	//Within the loop, it will choose a random topping
	gPepper = false;
	rPepper = false;
	mushroom = false;
	onion = false;
	pepperoni = false;
	pineapple = false;
	
	toppingsArray = [gPepper, rPepper, mushroom, onion, pepperoni, pineapple];
	numOfItems = irandom_range(0, array_length(toppingsArray)-1);
	
	for (i = 0; i < numOfItems; i++) {
		randomTopping = irandom_range(0, array_length(toppingsArray)-1);
		toppingsArray[randomTopping] = true;
	}
	
	
	//CREATING THE PIZZA
	//In here I created instances for the dough, sauce, and cheese. Depending on what my previous
	//for loop chose, I created instances for the current toppings and added it to a final topppings array
	//i also chnaged the scaling here as well as determined the depth of each instance on the layer
	//setting the pizza arrangements
	pizzaX = 1945;
	pizzaY = 1080;
	newScale = 0.5;
	
	finalPizzaOrderArray = [];
	
	doughInstance = instance_create_layer(pizzaX, pizzaY, "Customer_Pizza_Instances", objDough, {
		image_xscale : newScale,
		image_yscale : newScale,
		depth : 0,
	});
	array_push(finalPizzaOrderArray, "Dough");
	
	sauceInstance = instance_create_layer(pizzaX, pizzaY, "Customer_Pizza_Instances", objSauce, {
		image_xscale : newScale,
		image_yscale : newScale,
		depth : -1
	});
	array_push(finalPizzaOrderArray, "Sauce");
	
	cheeseInstance = instance_create_layer(pizzaX, pizzaY, "Customer_Pizza_Instances", objCheese, {
		image_xscale : newScale,
		image_yscale : newScale,
		depth : -2
	});
	array_push(finalPizzaOrderArray, "Cheese");
	
	//GO THROUGH TOPPINGS
	//same thing as above but this time for the toppings
	if (toppingsArray[0] == true) { //green pepper
		gPepperInstance = instance_create_layer(pizzaX, pizzaY, "Customer_Pizza_Instances", objGreenPepper, {
			image_xscale : newScale,
			image_yscale : newScale,
			depth : -4
		});
		array_push(finalPizzaOrderArray, "Green Pepper");
	} 
	
	if (toppingsArray[1] == true) { //red pepper
		rPepperInstance = instance_create_layer(pizzaX, pizzaY, "Customer_Pizza_Instances", objRedPepper, {
			image_xscale : newScale,
			image_yscale : newScale,
			depth : -5
		});
		array_push(finalPizzaOrderArray, "Red Pepper");
	} 
	
	if (toppingsArray[2] == true) { //mushroom
		mushroomInstance = instance_create_layer(pizzaX, pizzaY, "Customer_Pizza_Instances", objMushroom, {
			image_xscale : newScale,
			image_yscale : newScale,
			depth : -7
		});
		array_push(finalPizzaOrderArray, "Mushroom");
	} 
	
	if (toppingsArray[3] == true) { //onion
		onionInstance = instance_create_layer(pizzaX, pizzaY, "Customer_Pizza_Instances", objOnion, {
			image_xscale : newScale,
			image_yscale : newScale,
			depth : -6
		});
		array_push(finalPizzaOrderArray, "Onion");
	} 
	
	if (toppingsArray[4] == true) { //pepperoni
		pepperoniInstance = instance_create_layer(pizzaX, pizzaY, "Customer_Pizza_Instances", objPepperoni, {
			image_xscale : newScale,
			image_yscale : newScale,
			depth : -3
		});
		array_push(finalPizzaOrderArray, "Pepperoni");
	} 
	
	if (toppingsArray[5] == true) { //pineapple
		pineappleInstance = instance_create_layer(pizzaX, pizzaY, "Customer_Pizza_Instances", objPineapple, {
			image_xscale : newScale,
			image_yscale : newScale,
			depth : -8
		});
		array_push(finalPizzaOrderArray, "Pineapple");
	}
	//returns my new pizza array
	return finalPizzaOrderArray;
}