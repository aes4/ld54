opersistent.ly = "l1"
switch opersistent.left {
	case 0:
		instance_create_layer(room_width/2, room_height - 256, opersistent.ly, oplayer)
		break
	case 1:
		instance_create_layer(256, room_height/2, opersistent.ly, oplayer)
		break
	case 2:
		instance_create_layer(room_width/2, 256, opersistent.ly, oplayer)
		break
	case 3:
		instance_create_layer(room_width - 256, room_height/2, opersistent.ly, oplayer)
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
		if opersistent.rooms[i].spiders > 0 {
			for (u = 0; u < opersistent.rooms[i].spiders; u++) {
				instance_create_layer(random_range(256, 2112 - 256), random_range(256, 1412 - 256), opersistent.ly, ospider)
			}
		}
		switch opersistent.rooms[i].block {
			case 0:
				instance_create_layer(room_width/2, room_height/2 - 400, opersistent.ly, obar)
				obar.sprite_index = sbar0
				break
			case 1:
				instance_create_layer(room_width/2 + 700, room_height/2, opersistent.ly, obar)
				obar.sprite_index = sbar1
				break
			case 2:
				instance_create_layer(room_width/2, room_height/2 + 400, opersistent.ly, obar)
				obar.sprite_index = sbar2
				break
			case 3:
				instance_create_layer(room_width/2 - 700, room_height/2, opersistent.ly, obar)
				obar.sprite_index = sbar3
				break
		}
	}
}
if !opersistent.walked {
	if round(random_range(1, 6)) == 2 {
		for (u = 0; u < random_range(1, 7); u++) {
			opersistent.r.spiders += 1
			instance_create_layer(random_range(256, 2112 - 256), random_range(256, 1412 - 256), opersistent.ly, ospider)
		}
	}
	if round(random_range(1, 25)) == 3 {
		instance_create_layer(room_width/2, room_height/2, opersistent.ly, oped)
		instance_create_layer(room_width/2, room_height/2 - 40, opersistent.ly, omushroom)
	}
	if round(random_range(1, 12)) == 3 {
		instance_create_layer(room_width/2, room_height/2, opersistent.ly, oped)
		instance_create_layer(room_width/2, room_height/2 - 40, opersistent.ly, ohealthpotion)
	}
	
	if round(random_range(1, 12)) == 3 {
		instance_create_layer(room_width/2, room_height/2, opersistent.ly, oped)
		instance_create_layer(room_width/2, room_height/2 - 40, opersistent.ly, ofirecrystal)
	}
	var pls = round(random_range(1, 4))
	switch opersistent.rdir {
		case 0:
			switch pls {
				case 2:
					instance_create_layer(room_width/2 + 700, room_height/2, opersistent.ly, obar)
					obar.sprite_index = sbar1
					opersistent.r.bar = 1
					break
				case 3:
					instance_create_layer(room_width/2, room_height/2 + 400, opersistent.ly, obar)
					obar.sprite_index = sbar2
					opersistent.r.bar = 2
					break
				case 4:
					instance_create_layer(room_width/2 - 700, room_height/2, opersistent.ly, obar)
					obar.sprite_index = sbar3
					opersistent.r.bar = 3
					break
			}
			break
		case 1:
			switch pls {
				case 2:
					instance_create_layer(room_width/2, room_height/2 + 400, opersistent.ly, obar)
					obar.sprite_index = sbar2
					opersistent.r.bar = 2
					break
				case 3:
					instance_create_layer(room_width/2 - 700, room_height/2, opersistent.ly, obar)
					obar.sprite_index = sbar3
					opersistent.r.bar = 3
					break
				case 4:
					instance_create_layer(room_width/2, room_height/2 - 400, opersistent.ly, obar)
					obar.sprite_index = sbar0
					opersistent.r.bar = 0
					break
			}
			break
		case 2:
			switch pls {
				case 2:
					instance_create_layer(room_width/2 - 700, room_height/2, opersistent.ly, obar)
					obar.sprite_index = sbar3
					opersistent.r.bar = 3
					break
				case 3:
					instance_create_layer(room_width/2, room_height/2 - 400, opersistent.ly, obar)
					obar.sprite_index = sbar0
					opersistent.r.bar = 0
					break
				case 4:
					instance_create_layer(room_width/2 + 700, room_height/2, opersistent.ly, obar)
					obar.sprite_index = sbar1
					opersistent.r.bar = 1
					break
			}
			break
		case 3:
			switch pls {
				case 2:
					instance_create_layer(room_width/2, room_height/2 - 400, opersistent.ly, obar)
					obar.sprite_index = sbar0
					opersistent.r.bar = 0
					break
				case 3:
					instance_create_layer(room_width/2 + 700, room_height/2, opersistent.ly, obar)
					obar.sprite_index = sbar1
					opersistent.r.bar = 1
					break
				case 4:
					instance_create_layer(room_width/2, room_height/2 + 400, opersistent.ly, obar)
					obar.sprite_index = sbar2
					opersistent.r.bar = 2
					break
			}
			break
	}
}
//instance_create_layer(0, 0, opersistent.ly, odebug)