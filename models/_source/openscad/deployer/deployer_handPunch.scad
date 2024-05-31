size = 32;//block=32 //item=8

translate([0, size * 0.375, 0]) {
  cube([size * 0.75, size * 0.25, size * 0.25], center = true);
}
;
translate([-size * 0.125, 0, -size * 0.125]) {
  cube([size * 0.75, size * 0.5, size * 0.5], center = true);
}
;

