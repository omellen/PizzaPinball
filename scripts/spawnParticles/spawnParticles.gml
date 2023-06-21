function spawnParticles(myX, myY, particleType,numParticles){
	//spawn however many particles are specified in the function call
	repeat(numParticles){
		//create the new particle
		newParticle = instance_create_layer(myX,myY,"salt",objParticle);
		//give the particile the right image index based on what it is
		if(particleType=="salt"){
			newParticle.image_index=0;
		}
		if(particleType=="pepper"){
			newParticle.image_index=1;
		}
		if(particleType=="red pepper"){
			newParticle.image_index=2;
		}
	}
}