//CREATING THE CUSTOMER ORDER DISPLAY
wordX = 1945;
wordY = 1225;
	
DrawOrder(customerToppingsArray, wordX, wordY);


//CREATE CUSTOMER ORDER NAME LABEL
//setting the parameters of the text here:
nameX = 1870;
nameY = 900
draw_set_halign(fa_center);
draw_set_valign(fa_center);
	
draw_set_font(ftSans);
draw_set_color(c_white);

draw_text(nameX, nameY, "Customer Order: " + customerName);

//DRAWING THE SCORE
draw_set_font(ftScore);
scoreX = 1856;
scoreY = 700;
draw_text(scoreX, scoreY, "Score: " + string(myScore));

//creates the text for the final score after calculating the accuracy
//between what the customer ordered and what the play got
if(objBall.ballInstances == 0) {
	draw_set_font(ftFinal);
	percentage = accuracyModifier(playersPizza, customerToppingsArray);
	finalScore = percentage * myScore;
	draw_text(scoreX, 800, "Final Score: " + string(finalScore));
}
