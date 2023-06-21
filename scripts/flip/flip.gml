function flip(flipDirection,selfFlipping, flipBothWays, startingAngle, flipDistance, flipSpeed){
	//set the bounds for the rotation
	//the upper bound is the "peak", or the point beyond which the flipper 
	//should no longer rotate
	//the lower bound is the "default" position for the flipper, which functions 
	//similarly to the upper bound
	upperBound=startingAngle+flipDistance;
	if(flipBothWays==true){
		lowerBound=startingAngle-flipDistance;
	}else{
		lowerBound=startingAngle;
	}
	if(flipDirection=="right"){
		//check if the flipper is eligible to keep rotating
		//the phy_rotation should be greater than or equal to the starting angle, or the 
		//"lower bound"
		if(phy_rotation>=lowerBound){
			//check if the rotation angle has hit its "peak" yet, aka the "upper bound"
			if(phy_rotation<=upperBound){
				//if the rotation angle of the flipper has yet to reach
				//the upper bound, then increase the rotation angle by flipSpeed
				phy_rotation+=flipSpeed;
				//call another alarm, similar to a recursive method, to run all this code again
				if(!selfFlipping){
					objRightFlipper.isFlipping=true;
					//in order for this function to work properly, the flip function
					//must be called again in the flipper's alarm[0] event
					alarm[0]=.025*room_speed;
				}
			}
			//if the flipper is self flipping, it should trigger alarm[0] again,
			//even if the flipper is less than the lower bound
			//that way the whole process can begin anew
			if(selfFlipping){
				if(phy_rotation>=upperBound){
					phy_rotation=upperBound;
				}
				alarm[0]=.025*room_speed;
			}
		//check if the rotation angle has fallen beneath its default position at 0
		//if so, reset the rotation to its default value and stop flipping
		//NOTE: we only want to do this with flippers that are not self flipping
		//stopping a self-flipping flipper would defeat the point
		}else if(!selfFlipping){
			objRightFlipper.isFlipping=false;
			phy_rotation=0;
			flipSpeed=0;
			isFlipping=false;
		}else{
			phy_rotation=lowerBound;
			alarm[0]=.025*room_speed;
		}
	}else if(flipDirection=="left"){
		objLeftFlipper.isFlipping=true;
		//check if the flipper is eligible to keep rotating
		//the phy_rotation should be greater than or equal to the starting angle
		if(phy_rotation<=lowerBound){
			//check if the rotation angle has hit its "peak" yet
			if(phy_rotation>=upperBound){
				//if the rotation angle of the flipper has yet to reach
				//its peak, either at 40 on the flip up or 0 on the flip down,
				//then increase the rotation angle by flipSpeed
				phy_rotation+=flipSpeed;
				//call another alarm, similar to a recursive method, to run all this code again
				alarm[0]=.025*room_speed;
			}
		//check if the rotation angle has fallen beneath its default position at 0
		//if so, reset the rotation to its default value and stop flipping
		}else{
			objLeftFlipper.isFlipping=false;
			phy_rotation=0;
			flipSpeed=0;
			isFlipping=false;
		}
	}
}