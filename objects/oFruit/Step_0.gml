if place_meeting(x, y, oWorm)
{
   instance_destroy()
   instance_create_depth(random(100) ,random(100),50, oFruit)
   global.fruitCounter+=1
}

