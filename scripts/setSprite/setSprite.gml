with (object1)
{
    for (i = 0; i < 2; i += 1)
    {
        switch (mainDirection)
        {
            case -2:
                sprite_index = sMainLeft;
                if (speedX != 0)
                {
                    image_speed = 1;
                    return;
                }
                if (speedY != 0)
                {
                    mainDirection = sign(speedY);
                    break;
                }
                else
                {
                    image_speed = 0;
                    image_index = 0;
                    return;
                }
            case 2:
                sprite_index = sMainRight;
                if (speedX != 0)
                {
                    image_speed = 1;
                    return;
                }
                if (speedY != 0)
                {
                    mainDirection = sign(speedY);
                    break;
                }
                else
                {
                    image_speed = 0;
                    image_index = 0;
                    return;
                }
            case -1:
                sprite_index = sMainUp;
                if (speedY != 0)
                {
                    image_speed = 1;
					return;
                }
                if (speedX != 0)
                {
                    mainDirection = 2 * sign(speedX);
                    break;
                }
                else
                {
                    image_speed = 0;
                    image_index = 0;
					return;
                }
            case 1:
                sprite_index = sMainDown;
                if (speedY != 0)
                {
                    image_speed = 1;
					return;
                }
                if (speedX != 0)
                {
                    mainDirection = 2 * sign(speedX);
                    break;
                }
                else
                {
                    image_speed = 0;
                    image_index = 0;
                    return;
                }
        }
    }
}

