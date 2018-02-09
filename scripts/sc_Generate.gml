
randomize();


globalvar bottom;
bottom = room_height+argument0 
pos = 0;
xx = 0;
yy = 0;
ypos = (irandom(room_height)/2) + (irandom(room_height)/2); 
ypos_start = ypos; 
height = argument1; 
length = argument2; 
len = argument3;


while pos < room_width+len
{   
                           
    xx = pos;
    yy = ypos;
    
    randomize();
    ypos = ypos+((irandom(height))*choose(-1,1)); 
    
    pos += length; 
    
    if ypos > bottom-20  
    {
        ypos -= 20;
    }
     
    instance_create(pos,ypos,Floor); 
}

ypos = ypos_start;
pos = 0;


randomize();


while pos > -len
{   
                            
    xx = pos;
    yy = ypos;
    
    randomize();
    ypos = ypos+((irandom(height))*choose(-1,1)); 
    
    pos -= length ;
    
    if ypos > bottom-20 
    {
        ypos -= 20;
    }
    
    instance_create(pos,ypos,Floor); 
}
