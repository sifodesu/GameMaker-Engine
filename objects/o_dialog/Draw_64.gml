draw_sprite(spr_dialog, 0, 5, 185);
draw_set_font(policeID);

var to_draw = string_copy(text, 1, counter * draw_speed);
counter++;

draw_text_ext(8, 185, to_draw, 18, 464);

if (counter * draw_speed >= string_length(text)) {
	if (keyboard_check_pressed(global.kInteract)) {
		parent.dialog_done = true;
	}
}

//timerB = current_time;
//if (timerB-timerA>speedPrint && iterator < string_length(str)-1)
//	iterator++;
//
//blitX = x; blitY = y; blitW = string_width("A")*sizeOfPolice; blitH = string_width("A")*sizeOfPolice;
//
//	for (i = 0; i <= iterator; i++) {
//		//check if there is enough space for the word, if not we jump a line
//		if (i == 0 || string_char_at(str, i+1) == " ") {
//			a = i;
//			while (string_char_at(str,a+1) == " ") a++;
//			while (string_char_at(str, a+1) != " " && a < string_length(str))
//				a++;
//			//if out of limit
//			if (blitX + ((a - i)*blitW) > w + x) {
//				if (blitY + 2 * blitH > h + y) {
//					lock = 1;
//					timerA = timerB;
//					return;
//				}
//				//jump line
//				else {
//					blitY += 2*blitH;
//					blitX = x;
//					while (string_char_at(str, i+1) == " ") {
//						i++;
//						if (i > iterator)
//							break;
//					}
//				}
//			}
//		}
//		if (string_char_at(str, i+1) < 0 || string_char_at(str, i+1) > 128) {
//			draw_text_transformed(blitX, blitY, "?", sizeOfPolice, sizeOfPolice, 0);
//		}
//		else draw_text_transformed(blitX, blitY, string_char_at(str, i+1), sizeOfPolice, sizeOfPolice, 0);
//		
//		blitX += blitW;
//	}
//	
//	if (string_length(str)-1 == iterator) lock = 1;
//
//
//if (timerB-timerA>speedPrint)
//	timerA = timerB;