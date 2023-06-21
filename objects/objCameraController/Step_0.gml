//set the game camera to our gamera
view_camera[0] = camera;
//calculate how much the camera should shake during the shake effect
var shake = power(shakeValue,2)*shakePower;
//shake the camera
camX += random_range(-shake,shake);
camY += random_range(-shake,shake);
//reduce the shake
if(shakeValue>0){
	shakeValue -= 0.2;
	camera_set_view_pos(camera,camX,camX);
}else{
	shake=0;
	camera_set_view_pos(camera,camX,camY);
}







