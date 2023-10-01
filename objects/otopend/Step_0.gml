if opersistent.r.t < 60 * 10 {  // 288 px down 10 seconds
	y += 288/(60 * 10)
}
if 60 * 10 * 2 < opersistent.r.t && opersistent.r.t < 60 * 10 * 2 * 1.5 {
	y += 256/(60 * 10)
}
owall1.y = otopend.y - owall1.sprite_height