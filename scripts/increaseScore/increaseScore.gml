function increaseScore(scoreX, scoreY, points){
	//increase the actual score of the game by the specified amount
	objController.myScore += points;
	//create an instance of the animated score
	scoreInstance = instance_create_layer(scoreX, scoreY, "Ball_Instance", objPlusScore);
	//set the right image index based on how much many points have been earned
	switch(points){
		case 15:
			scoreInstance.image_index=0;
			break;
		case 40:
			scoreInstance.image_index=1;
			break;
	}
	//scale the score animation and make it transparent to begin with
	scoreInstance.image_alpha=0;
	scoreInstance.image_xscale=5;
	scoreInstance.image_yscale=5;
	scoreInstance.alarm[0] = .1*room_speed;
}