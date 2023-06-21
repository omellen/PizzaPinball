function drawBackgroundGrid(totalRows, totalCols, obj, spriteWidth, spriteHeight){
	//this variable will control what color each tile on the grid is
	colorCounter = 0;
	for (var row = 0; row < totalRows; row++) {
		for (var col = 0; col < totalCols; col++) {
			//with every tile we place down, we want to alternate the color
			//so we need to increase our variable
			colorCounter++;
			// calculate pixel location using col number
			// multiplied by width of sprite...
			myX = col * spriteWidth;
			// scooch to the right...
			myX = myX + ( spriteWidth * 0.5);
			// NOW we need to calculate the row pixel position
			// in just the same way!
			myY = row * spriteHeight;
			// scooch down a smidge:
			myY = myY + (spriteHeight * 0.5);
			// now create the tile at myX, myY: 
			newTile = instance_create_layer(myX, myY, "Background_Grid", obj);
			//assign a color to the tile based on the color counter variable 
			if(colorCounter%2==0){
				newTile.image_index=0;
			}else{
				newTile.image_index=1;
			}
		}
		//increase the color counter again now so that it alternates between rows too
		colorCounter++;
	}
}