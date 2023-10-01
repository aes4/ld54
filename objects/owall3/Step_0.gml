if opersistent.r.t == 60 * 10 * 2 * 1.5 {
	x = 1184
	y = 256
}
if opersistent.r.t > 60 * 10 * 2 * 1.5 && opersistent.r.t < 60 * 10 * 2 * 1.5 * 1.25 {
	x -= 256/(60 * 10)
}