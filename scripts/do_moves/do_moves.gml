with (self)
{
    t = (timerB - timerA) * 0.001;
    xMove = round(speedX * t);
    yMove = round(speedY * t);
    backX = x;
    backY = y;
    
    if (!place_free(x + xMove, y))
    {
        while (place_free(x + sign(xMove), y))
        {
            x += sign(xMove);
        }
        speedX = 0;
    }
    else
        x += xMove;
    
    if (!place_free(x, y + yMove))
    {
        while (place_free(x, y + sign(yMove)))
        {
            y += sign(yMove);
        }
        speedY = 0;
    }
    else
        y += yMove;
    
    //failsafe
    if (!place_free(x, y))
    {
        x = backX;
        y = backY;
    }

}


