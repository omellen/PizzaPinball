//DRAWS THE NAMES OF THE ITEMS THE CUSTOMER WANTS
function DrawOrder(textArray, textX, textY){
	//setting up the parameters of the text
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	draw_set_font(ftSans);
	draw_set_color(c_white)
	
	lineSpace = 35;
	
	//loop that goes through each item
	//and creates the text for it
	//with these previously stated parameters
	for (i = 0; i < array_length(textArray); i++) {
		draw_text(textX, textY, textArray[i]);
		textY = textY + lineSpace;
	}
	
}