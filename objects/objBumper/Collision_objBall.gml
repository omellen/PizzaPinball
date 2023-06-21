//determine how many points the player will get from hitting the bumpers
bumperPoints = 15;
//trigger the animation
alarm_set(0,1);
//shake the screen
objCameraController.shakeValue=1;
//increaes the score
increaseScore(x,y,bumperPoints);

