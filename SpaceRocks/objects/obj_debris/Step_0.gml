/// @description Fade Debris particle over time (Step updates each frame)
// 

// Increase sprites Alpha value over time to fade out
image_alpha -= 0.01;

// if the debris has "Faded"
if (image_alpha <= 0) {
	// Destroy the debris particle
	instance_destroy();
}