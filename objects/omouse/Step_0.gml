x = mouse_x
y = mouse_y
if instance_exists(obstart) {
    if (place_meeting(x, y, obstart)) {
    	if (mouse_check_button(mb_left) || mouse_check_button(mb_right)) {
    		room_goto(rgame1)
    	}
    }
}
if instance_exists(obsettings) {
    if (place_meeting(x, y, obsettings)) {
    	if (mouse_check_button(mb_left) ||  mouse_check_button(mb_right)) {
    		room_goto(rsettings)
    	}
    }
}
if instance_exists(obquit) {
    if (place_meeting(x, y, obquit)) {
    	if (mouse_check_button(mb_left) ||  mouse_check_button(mb_right)) {
    	    game_end()
        }
    }
}
if instance_exists(obmainmenu) {
    if (place_meeting(x, y, obmainmenu)) {
    	if (mouse_check_button(mb_left) ||  mouse_check_button(mb_right)) {
    		room_goto(rmainmenu)
            audio_stop_sound(opersistent.tr)
            opersistent.trt = true
    	}
    }
}
if (place_meeting(x, y, obincvol)) {
	if (mouse_button == mb_left || mouse_button == mb_right) {
		opersistent.vol += 0.1
	}
}
if (place_meeting(x, y, obdecvol)) {
	if (mouse_button == mb_left || mouse_button == mb_right) {
		if opersistent.vol > 0 opersistent.vol -= 0.1
	}
}
//if (place_meeting(x, y, oscard)) {
//	if (mouse_button == mb_left) {
//        if (oplayer.coin >= oplayer.speedprice) {
//            oplayer.coin -= oplayer.speedprice
//            oplayer.velcap *= 1.1
//            oplayer.speedprice++
//            audio_play_sound(aupgrade, 4, false, opersistent.vol)
//        }
//	}
//}
//if (place_meeting(x, y, occard)) {
//	if (mouse_button == mb_left) {
//        if (oplayer.coin >= oplayer.capacityprice) {
//            oplayer.coin -= oplayer.capacityprice
//            oplayer.capacity++
//            oplayer.capacityprice++
//            audio_play_sound(aupgrade, 4, false, opersistent.vol)
//        }
//	}
//}
if opersistent.vol < 0 opersistent.vol = 0