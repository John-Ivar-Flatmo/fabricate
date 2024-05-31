size = 32;//block=32 //item=8

cube([size * 0.4, size * 0.4, size * 0.85], center = true);//foot
translate([0, 0, size * 0.35]) {
  cube([size * 1, size * 1, size * 0.15], center = true);//plate
}
;//translate
