e = 0
iii = 0
c = 0
for (var i = opersistent.mlx; i <= opersistent.mux; i++) {
	for (var u = opersistent.muy; u >= opersistent.mly; u--) {
		for (var o = 0; o < array_length(opersistent.rooms); o++) {
			if opersistent.rooms[o].yy == u && opersistent.rooms[o].xx == i {
				// draw sprite depending on if there is enemies, items, or clear
				if opersistent.rooms[o].spiders > 0 {
					instance_create_layer(oplayer.x + (20 * i), oplayer.y + (20 * -u), opersistent.ly, oenemy)
					e++
				} else if array_length(opersistent.rooms[o].items) > 0 && opersistent.rooms[o].spiders == 0 {
					instance_create_layer(oplayer.x + (20 * i), oplayer.y + (20 * -u), opersistent.ly, oitem)
					iii++
				} else if array_length(opersistent.rooms[o].items) == 0 && opersistent.rooms[o].spiders == 0{
					instance_create_layer(oplayer.x + (20 * i), oplayer.y + (20 * -u), opersistent.ly, oclear)
					c++
				}
			}
		}
	}
}
instance_create_layer(oplayer.x + (20 * opersistent.loc.xx), oplayer.y + (20 * -opersistent.loc.yy), opersistent.ly, oactive)