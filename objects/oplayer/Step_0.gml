if (keyboard_check(ord("W"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
    if !place_meeting(x, y - vel, otopend) && !place_meeting(x, y - vel, osides) && !place_meeting(x, y - vel, owall1) && !place_meeting(x, y - vel, owall2) && !place_meeting(x, y - vel, owall3) { y -= vel }
	if place_meeting(x, y - vel, otunnel) {
		opersistent.left = 0
		// save current state of room and reset
		if !opersistent.walked {
			opersistent.r.xx = opersistent.loc.xx
			opersistent.r.yy = opersistent.loc.yy
			array_push(opersistent.rooms, {
				xx: opersistent.r.xx,
				yy: opersistent.r.yy,
				t: opersistent.r.t,
				block: opersistent.r.block,
				spiders: opersistent.r.spiders,
				items: opersistent.r.items,
				decor: opersistent.r.decor
				}
			)
		} else {
			// save spiders/items/decor before or after this (down arrow)
			for (var i = 0; i < array_length(opersistent.rooms); i++) {
				if (opersistent.loc.yy == opersistent.rooms[i].yy && opersistent.loc.xx == opersistent.rooms[i].xx) {
					opersistent.rooms[i].t = opersistent.r.t
					opersistent.rooms[i].spiders = opersistent.r.spiders
					opersistent.rooms[i].items = opersistent.r.items
				}
			}
		}
		if opersistent.roombol {
			room_goto(rgame2)
		} else {
			room_goto(rgame1)
		}
		opersistent.roombol = !opersistent.roombol
		opersistent.mlx = opersistent.loc.xx - opersistent.md
		opersistent.mux = opersistent.loc.xx + opersistent.md
		opersistent.mly = opersistent.loc.yy - opersistent.md
		opersistent.muy = opersistent.loc.yy + opersistent.md
		opersistent.r.spiders = 0
		opersistent.loc.yy += 1
		// loading of the room is done in rgame creation code
	}
	dir = 0
    sprite_index = splayeru
}
if (keyboard_check(ord("S"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
	if !place_meeting(x, y + vel, obottomend) && !place_meeting(x, y + vel, osides) && !place_meeting(x, y + vel, owall1) && !place_meeting(x, y + vel, owall2) && !place_meeting(x, y + vel, owall3) { y += vel }
	if place_meeting(x, y + vel, otunnel) {
		opersistent.left = 2
		if !opersistent.walked {
			opersistent.r.xx = opersistent.loc.xx
			opersistent.r.yy = opersistent.loc.yy
			array_push(opersistent.rooms, {
				xx: opersistent.r.xx,
				yy: opersistent.r.yy,
				t: opersistent.r.t,
				block: opersistent.r.block,
				spiders: opersistent.r.spiders,
				items: opersistent.r.items,
				decor: opersistent.r.decor
				}
			)
		} else {
			for (var i = 0; i < array_length(opersistent.rooms); i++) {
				if (opersistent.loc.yy == opersistent.rooms[i].yy && opersistent.loc.xx == opersistent.rooms[i].xx) {
					opersistent.rooms[i].t = opersistent.r.t
					opersistent.rooms[i].spiders = opersistent.r.spiders
					opersistent.rooms[i].items = opersistent.r.items
				}
			}
		}
		if opersistent.roombol {
			room_goto(rgame2)
		} else {
			room_goto(rgame1)
		}
		opersistent.roombol = !opersistent.roombol
		opersistent.mlx = opersistent.loc.xx - opersistent.md
		opersistent.mux = opersistent.loc.xx + opersistent.md
		opersistent.mly = opersistent.loc.yy - opersistent.md
		opersistent.muy = opersistent.loc.yy + opersistent.md
		opersistent.r.spiders = 0
		opersistent.loc.yy -= 1
	}
	dir = 2
    sprite_index = splayerd
}
if (keyboard_check(ord("A"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
	if !place_meeting(x - vel, y, osides) && !place_meeting(x - vel, y, otopend) && !place_meeting(x - vel, y, obottomend) && !place_meeting(x - vel, y, owall1) && !place_meeting(x - vel, y, owall2) && !place_meeting(x - vel, y, owall3) { x -= vel }
	if place_meeting(x - vel, y, otunnel) {
		opersistent.left = 3
		if !opersistent.walked {
			opersistent.r.xx = opersistent.loc.xx
			opersistent.r.yy = opersistent.loc.yy
			array_push(opersistent.rooms, {
				xx: opersistent.r.xx,
				yy: opersistent.r.yy,
				t: opersistent.r.t,
				block: opersistent.r.block,
				spiders: opersistent.r.spiders,
				items: opersistent.r.items,
				decor: opersistent.r.decor
				}
			)
		} else {
			for (var i = 0; i < array_length(opersistent.rooms); i++) {
				if (opersistent.loc.yy == opersistent.rooms[i].yy && opersistent.loc.xx == opersistent.rooms[i].xx) {
					opersistent.rooms[i].t = opersistent.r.t
					opersistent.rooms[i].spiders = opersistent.r.spiders
					opersistent.rooms[i].items = opersistent.r.items
				}
			}
		}
		if opersistent.roombol {
			room_goto(rgame2)
		} else {
			room_goto(rgame1)
		}
		opersistent.roombol = !opersistent.roombol
		opersistent.mlx = opersistent.loc.xx - opersistent.md
		opersistent.mux = opersistent.loc.xx + opersistent.md
		opersistent.mly = opersistent.loc.yy - opersistent.md
		opersistent.muy = opersistent.loc.yy + opersistent.md
		opersistent.r.spiders = 0
		opersistent.loc.xx -= 1
	}
	dir = 3
    sprite_index = splayerl
}
if (keyboard_check(ord("D"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
	if !place_meeting(x + vel, y, osides) && !place_meeting(x + vel, y, otopend) && !place_meeting(x + vel, y, obottomend) && !place_meeting(x + vel, y, owall1) && !place_meeting(x + vel, y, owall2) && !place_meeting(x + vel, y, owall3) { x += vel }
	if place_meeting(x + vel, y, otunnel) {
		opersistent.left = 1
		if !opersistent.walked {
			opersistent.r.xx = opersistent.loc.xx
			opersistent.r.yy = opersistent.loc.yy
			array_push(opersistent.rooms, {
				xx: opersistent.r.xx,
				yy: opersistent.r.yy,
				t: opersistent.r.t,
				block: opersistent.r.block,
				spiders: opersistent.r.spiders,
				items: opersistent.r.items,
				decor: opersistent.r.decor
				}
			)
		} else {
			for (var i = 0; i < array_length(opersistent.rooms); i++) {
				if (opersistent.loc.yy == opersistent.rooms[i].yy && opersistent.loc.xx == opersistent.rooms[i].xx) {
					opersistent.rooms[i].t = opersistent.r.t
					opersistent.rooms[i].spiders = opersistent.r.spiders
					opersistent.rooms[i].items = opersistent.r.items
				}
			}
		}
		if opersistent.roombol {
			room_goto(rgame2)
		} else {
			room_goto(rgame1)
		}
		opersistent.roombol = !opersistent.roombol
		opersistent.mlx = opersistent.loc.xx - opersistent.md
		opersistent.mux = opersistent.loc.xx + opersistent.md
		opersistent.mly = opersistent.loc.yy - opersistent.md
		opersistent.muy = opersistent.loc.yy + opersistent.md
		opersistent.r.spiders = 0
		opersistent.loc.xx += 1
	}
	dir = 1
    sprite_index = splayerr
}
if (keyboard_check_pressed(ord("F"))) {
	switch dir {
		case 0:
			instance_create_layer(x, y - 180, opersistent.ly, oclaw)
			oclaw.sprite_index = sclawu
			break
		case 1:
			instance_create_layer(x + 180, y, opersistent.ly, oclaw)
			oclaw.sprite_index = sclawr
			break
		case 2:
			instance_create_layer(x, y + 180, opersistent.ly, oclaw)
			oclaw.sprite_index = sclawd
			break
		case 3:
			instance_create_layer(x - 180, y, opersistent.ly, oclaw)
			oclaw.sprite_index = sclawl
			break
	}
}

// DO NOT HOLD E THEN ENTER ROOM THEN LET GO

if (keyboard_check_pressed(ord("E"))) { instance_create_layer(x, y, opersistent.ly, omap) }
if (keyboard_check_released(ord("E"))) {
	for (var u = 0; u < omap.e; u++) {
		instance_destroy(oenemy)
	}
	for (var u = 0; u < omap.iii; u++) {
		instance_destroy(oitem)
	}
	for (var u = 0; u < omap.c; u++) {
		instance_destroy(oclear)
	}
	instance_destroy(oactive)
	instance_destroy(omap)
}

if place_meeting(x, y, otopend) && place_meeting(x, y, obottomend) {  // game end (crushed)
}
if place_meeting(x, y, owall3) && place_meeting(x, y, owall1) {
}
if place_meeting(x, y, owall3) && place_meeting(x, y, owall2) {
}
// if destroy enemy opersistent.r.enemies remove from array? and room creation code adds enemies to opers.r.enemies/items/decor
opersistent.r.t += 1