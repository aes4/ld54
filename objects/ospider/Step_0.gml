image_angle = point_direction(x, y, oplayer.x, oplayer.y)
move_towards_point(oplayer.x, oplayer.y, 4)
if place_meeting(x, y, oclaw) {
	hp -= 3
}
if place_meeting(x, y, oplayer) {
	oplayer.hp -= 0.5
}
if hp <= 0 {
	opersistent.r.spiders -= 1
	instance_destroy(self)
}