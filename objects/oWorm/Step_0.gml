if place_meeting(x ,y, oWall)
{
   yS = 0	
	
}else
{
  yS = 1	
	
}
if place_meeting(x ,y, oWallright_1)
{
   yS = 0	
	
}else
{
  yS = 1	
	
}

if place_meeting(x ,y, oWallright_2)
{
   xS = 0	
	
}else
{
  xS = 1	
	
}

if place_meeting(x ,y, oWallright_3)
{
   xS = 0	
	
}else
{
  xS = 1	
	
}




timer+=1  
  
if timer = 20
{
	
instance_create_depth(x, y, 200, oBlob)
timer = 0
}





if keyboard_check_direct(vk_up)
{
	movement_onYup = on
  	y-= yS
	movementDirection = 0
	facing = up
}

if keyboard_check_direct(vk_down)
{
	movement_onYdown = on
  	  y+= yS
	 movementDirection = 1 
	 facing = down
}

if keyboard_check_direct(vk_right)
{
	movement_onXright = on
  	x+= xS
	movementDirection = 2
	facing = right
}

if keyboard_check_direct(vk_left)
{
	movement_onXleft = on
  	  x-= xS
	  movementDirection = 3
	  facing = left
}

if (movementDirection = 2) {
    image_angle = 360;      // Rotate to face up
    image_yscale = 1;
	// Ensure it's not flipped horizontally
}

if (movementDirection = 3) {
    image_angle = 180;      // Rotate to face up
    image_yscale = 1; 
	// Ensure it's not flipped horizontally
}




if (movementDirection = 0) {
    image_angle = 90;      // Rotate to face up
    image_xscale = 1;// Ensure it's not flipped horizontally
}


if (movementDirection = 1) {
    image_angle = 270;      // Rotate to face up
    image_xscale = 1; 
	// Ensure it's not flipped horizontally
}

if movement_onYup = on
{
   movement_onYdown = off
   movement_onXleft = off
   movement_onXright = off
	
}else{
	 movement_onYdown = on
   movement_onXleft = on
   movement_onXright = on
	
	
}
if movement_onYdown = on
{
   movement_onYup = off
   movement_onXleft = off
   movement_onXright = off
	
}else{
 movement_onYup = on
   movement_onXleft = on
   movement_onXright = on
}

if movement_onXright = on
{
   movement_onYup = off
   movement_onXleft = off
   movement_onYdown = off
	
}else{

 movement_onYup = on
   movement_onXleft = on
   movement_onYdown = on
}


if movement_onXleft = on
{
   movement_onYup = off
   movement_onXright = off
   movement_onYdown = off
	
}else{
movement_onYup = off
   movement_onXright = off
   movement_onYdown = off
}





if constantMovement = on
{
	if movement_onXleft = on
	{
	  x-= xS
	  movementDirection = 3
	  facing = left	
		
	}
	
	if movement_onXright = on
	{
	
  	x+= xS
	movementDirection = 2
	facing = right	
		
	}
	
	if movement_onYup = on
	{
		
  	y-= yS
	movementDirection = 0
	facing = up
		
	}
	
	if movement_onYdown = on
	{
	    y+= yS
	 movementDirection = 1 
	 facing = down 	
		
	}
}




// Rotate based on your variable
// Let's say 'facing' is a string or number that tells us the direction




//make the spikes ko the snake

if place_meeting(x, y, oSpikes)
{
   instance_create_depth(127, 127,100000, oEmoji)
   instance_destroy(oWorm)
   
	
}



if (instance_number(oFruit) == 0 &&
    instance_number(oFruit2) == 0 &&
    instance_number(oFruit3) == 0) {
    room_goto_next();
}


if  global.fruitCounter = 10
{
   room_goto_next()	
}
