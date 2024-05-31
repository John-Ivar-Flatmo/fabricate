size = 32;//block=32 //item=8



cube([size * 1, size * 0.1, size * 1], center = true);//base

translate([0, -size * 0.1, -size * 0.25]) {//connector
  cube([size * 1, size * 0.1, size * 0.15], center = true);
}
;//translate


translate([0, -size * 0.5, -size * 0.35]) {//plough
  rotate([15, 0, 0]) {
    cube([size * 1, size * 0.75, size * 0.1], center = true);
  }
  ;//rotate
}
;//translate




