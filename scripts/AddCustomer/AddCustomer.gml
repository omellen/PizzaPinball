//This function generates a random customer
function AddCustomer(){
	randomize();
	//these are the current customers available
	customerArray = ["Mandy", "Richard", "Karen", "Mark"];
	//grabs random element from previous array
	randomCustomer = irandom_range(0, array_length(customerArray)-1);
	currentCustomer = customerArray[randomCustomer];
	
	charX = 1728;
	charY = 1472;
	//creates the instances depending on what customer was chosen
	if (currentCustomer == "Mandy") {
		instance_create_layer(charX, charY, "Customer_Instances", objMandy);
	} else if (currentCustomer == "Richard") {
		instance_create_layer(charX, charY, "Customer_Instances", objRichard);
	}  else if (currentCustomer == "Karen") {
		instance_create_layer(charX, charY, "Customer_Instances", objKaren);
	} else if (currentCustomer == "Mark") {
		instance_create_layer(charX, charY, "Customer_Instances", objMark);
	}
	
	return currentCustomer;
}