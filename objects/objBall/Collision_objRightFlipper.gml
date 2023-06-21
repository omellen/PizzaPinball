//shoot the ball upwards upon collision with an active flipper
if(objRightFlipper.isFlipping){
	physics_apply_impulse(x,y,0,-1.5);
}
