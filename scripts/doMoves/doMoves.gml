// Vive les zizis
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
    
    //}
    
    
    ////// void Moving_Unit::doMoves()
    
    //	 t = (timerB - timerA)*0.001;
    
    //	 tx = x;
    //	 ty = y;
    
    //	if (t > 0.100)
    //		return;
    
    //	tempDistancex = round((t*speedX));
    //	tempDistancey = round((t*speedY));
    
    
    //	//factorX = abs(speedX / (speedX + speedY));
    //	//factorY = abs(speedY / (speedY + speedX));
    
    //	factorX = 1;
    //	factorY = 1;
    
    //	storageX = 0;
    //	storageY = 0;
    //	while ((tempDistancex*speedX > 0) or (tempDistancey*speedY > 0)) {
    //		if ((tempDistancex < 0 and speedX > 0) or (tempDistancex > 0 and speedX < 0) or (tempDistancex == 0)) {
    //			tempDistancex = 0;
    //			speedX = 0;
    //		}
    //		if ((tempDistancey < 0 and speedY > 0) or (tempDistancey > 0 and speedY < 0) or (tempDistancey == 0)) {
    //			tempDistancey = 0;
    //			speedY = 0;
    //		}
    //		tx = x + tempDistancex + sign(tempDistancex);
    //		ty = y + tempDistancey;// + sign(tempDistancey);
    //		if (!place_meeting(tx, ty, object0)) {
    //			x += round(tempDistancex);
    //			y += round(tempDistancey);
    //			break;
    //		}
    //		else {
    //			if (speedX != 0) {
    //				storageX += (-1)*sign(speedX)*factorX;
    
    //				if (abs(storageX) >= 1) {
    //					tempDistancex += sign(storageX);
    //					storageX -= sign(storageX);
    //				}
    
    //			}
    //			if (speedY != 0) {
    //				storageY += (-1)*sign(speedY)*factorY;
    
    //				if (abs(storageY) >= 1) {
    //					tempDistancey += sign(storageY);
    //					storageY -= sign(storageY);
    //				}
    
    //			}
    //		}
    //	}
}


