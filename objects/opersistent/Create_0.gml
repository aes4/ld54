roombol = true
//player location
loc = {
	xx: 0,
	yy: 0
}
r = {
	xx: 0,
	yy: 0,
	t: 0,  // room closes in if you are in it and if you go back, t = time
	block: 0,  // maze dead end 0 (top) 1 (right) 2 3
	enemies: [],
	items: [],  // items are placed at center of room
	decor: []  // list of structs
}
rooms = []
left = 0  // tunnel direction
walked = false
vol = 0.8
trt = true
tr = false