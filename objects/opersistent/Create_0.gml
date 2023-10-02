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
	spiders: 0,
	items: [],  // items are placed at center of room
	decor: []  // list of structs
}
rooms = []
//rooms = [{ xx: 0, yy: 0, t: 0, block: 0, spiders: 0, items: [], decor: [] }]
left = 0  // tunnel direction
ly = "l1"  // instance layer
walked = false
vol = 0.8
trt = true
tr = false
md = 15  // visible distance with the map
mlx = 0  // map lower x, upper x, lower y ...
mux = 0
mly = 0
muy = 0
rdir = 2
randomize()