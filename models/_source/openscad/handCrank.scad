size = 32;//block=32 //item=8






cube([size * 0.75, size * 0.25, size * 0.25], center = true);//shaft

translate([-size * 0.15, size * 0.25, 0]) {//knub
  cube([size * 0.25, size * 0.25, size * 0.25], center = true);
}
;//translate

translate([size * 0.25, -size * 0.1, 0]) {//handle
  rotate([90, 0, 0]) {
    cylinder(d = size * 0.15, h = size * 0.4);
  }
  ;//rotate
}
;//translate
