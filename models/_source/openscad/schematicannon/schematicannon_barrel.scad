size = 32;//block=32 //item=8
translate([size * 0.5, 0, 0]) {
  cube([size * 0.75, size * 0.45, size * 0.45], center = true);//skinny
}
;//translate
cube([size * 0.65, size * 0.65, size * 0.65], center = true);//thick
cube([size * 0.25, size * 1, size * 0.25], center = true);//handle
