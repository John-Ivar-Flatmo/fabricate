size = 32;//block=32 //item=8
difference() {//casing
  cube([size * 1, size * 1, size * 1], center = true);
  cube([size * 0.9, size * 1.1, size * 0.9], center = true);
}
;

translate([0, -size * 0.425, 0]) {
  cube([size * 0.15, size * 0.15, size * 1], center = true);//gridVertical
  cube([size * 1, size * 0.15, size * 0.15], center = true);//gridHorizontal
}
;//translate
