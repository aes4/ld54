switch opersistent.left {
	case 0:
		instance_create_layer(room_width/2, room_height - 256, "l2", oplayer)
		break
	case 1:
		instance_create_layer(256, room_height/2, "l2", oplayer)
		break
	case 2:
		instance_create_layer(room_width/2, 256, "l2", oplayer)
		break
	case 3:
		instance_create_layer(room_width - 256, room_height/2, "l2", oplayer)
		break
}
opersistent.walked = false
opersistent.r.t = 0
for (i = 0; i < array_length(opersistent.rooms); i++) {
	if (opersistent.loc.yy == opersistent.rooms[i].yy && opersistent.loc.xx == opersistent.rooms[i].xx) {
		opersistent.r.t = opersistent.rooms[i].t
		opersistent.walked = true
		if opersistent.r.t < 60 * 10 {
			otopend.y = 256 + ((288/(60 * 10)) * (opersistent.r.t))
		}
		if 60 * 10 * 2 < opersistent.r.t && opersistent.r.t < 60 * 10 * 2 * 1.5 {
			otopend.y = (256 + 288) + ((256/(60 * 10)) * (opersistent.r.t - 1200))
			obottomend.y = 256 - 288
		}
		if 60 * 10 < opersistent.r.t && opersistent.r.t < 60 * 10 * 2 {
			otopend.y = 256 + 288
			obottomend.y = 256 - ((288/(60 * 10)) * (opersistent.r.t - 600))
		}
		if opersistent.r.t > 60 * 10 * 2 * 1.5 && opersistent.r.t < 60 * 10 * 2 * 1.5 * 1.25 {
			otopend.y = 512 + 288
			obottomend.y = 256 - 288
			owall3.x = 1184 - (256/(60 * 10) * (opersistent.r.t - (1200 * 1.5)))
			owall3.y = 256
		}
		if opersistent.r.t > 60 * 10 * 2 * 1.5 * 1.25 {
			otopend.y = 512 + 288
			obottomend.y = 256 - 288
			owall3.x = 1184 - 256
			owall3.y = 256
		}
	}
}
instance_create_layer(0, 0, "l2", odebug)