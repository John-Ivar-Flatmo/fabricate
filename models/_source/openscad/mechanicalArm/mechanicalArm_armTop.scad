size = 32;//block=32 //item=8

cube([size * 0.25, size * 0.375, size * 1], center = true);//arm
translate([0, 0, -size * 0.3125]) {
  cube([size * 0.375, size * 0.375, size * 0.375], center = true);//hinge
}
;
