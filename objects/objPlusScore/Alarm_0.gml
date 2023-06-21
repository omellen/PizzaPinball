//"float" upwards
y-=5;
//make the number fade into view using image_alpha
if(image_alpha>1){
	image_alpha-=.05;
}else{
	image_alpha+=.05;
}
//call the alarm again
alarm[0] = .1*room_speed;