if (keyboard_check(ord("W"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
    //if (!place_meeting(x, y - vel, owall)) { y -= vel }
	y -= vel
	dir = 0
    sprite_index = splayeru
}
if (keyboard_check(ord("S"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
    //if (!place_meeting(x, y + vel, owall)) { y += vel }
	y += vel
	dir = 2
    sprite_index = splayerd
}
if (keyboard_check(ord("A"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
    //if (!place_meeting(x - vel, y, owall)) { x -= vel }
	x -= vel
	dir = 3
    sprite_index = splayerl
}
if (keyboard_check(ord("D"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
	//if (!place_meeting(x + vel, y, owall)) { x += vel }
	x += vel
	dir = 1
    sprite_index = splayerr
}