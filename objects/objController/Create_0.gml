//Runs RandomizePizza to create a type of pizza for the customer order
//returns an array of the names of items
customerToppingsArray = RandomizePizza();
//Randomizes what customer appears
customerName = AddCustomer();

instance_create_layer(1600,0, "Background_Instances", objCustomerFloor);

//create a score of 0 for the player at the start of the game
myScore = 0;

//array for the topping the player gets
playersPizza = [];

//draw the checkered background
drawBackgroundGrid(22, 16, objCheckeredBackground, 100, 100);
