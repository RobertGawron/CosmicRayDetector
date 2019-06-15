# CosmicRayDetector

**Current version of this project is not finished and is not working.**

Cosmic radiation is a constant stream of high energy particles from deep space, when they arrive on Earth they collide with atmosphere's atoms. Due to theirs high-speed (near light speed), during those collisions a lot of particles are made, one of them are muons that can be observed with Geiger tubes.

Earth has its own background radioactivity level and this would add to the measured muons, but there is a trick. Muons have high energy, so they will pass through Geiger tube (this will be detected) and won't be stopped, if near there is another Geiger tube they will pass through it as well (and it will be detected too). Radioactive particles from earth won't do that, they don't have enough energy. 

This device has a grid of Geiger tubes and analyzes if a particle went through many of them, if yes, it's probably a muon, if no, it's background radiation. To help minimize background radiation,  lead shielding will be placed around Geiger tubes.

I'm not sure if microcontroler is a suitable tool for this job, if no, then I will switch to FPGA.

There are similar projects around Internet, but they all have analog interface, this one is aiming to have digitally processed interface, so that it will be possible to present results in more readable form, or to analyze them further on PC.

![sensor render](https://raw.githubusercontent.com/RobertGawron/CosmicRayDetector/master/documentation/pictures/CosmicRayDetector.png)
