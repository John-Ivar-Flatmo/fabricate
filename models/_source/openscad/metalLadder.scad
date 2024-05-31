size = 32;//block=32 //item=8

difference() {
  cube([size * 0.125, size, size], center = true);
  translate([0, 0, size * 0.40]) {
    cube([size * 1.25, size * 0.75, size * 0.225], center = true);
  }
  ;//translate
  translate([0, 0, size * 0.25]) {
    cube([size * 1.25, size * 0.9, size * 0.125], center = true);
  }
  ;//translate
  translate([0, 0, 0]) {
    cube([size * 1.25, size * 0.9, size * 0.125], center = true);
  }
  ;//translate
  translate([0, 0, -size * 0.25]) {
    cube([size * 1.25, size * 0.9, size * 0.125], center = true);
  }
  ;//translate
  translate([0, 0, -size * 0.50]) {
    cube([size * 1.25, size * 0.9, size * 0.125], center = true);
  }
  ;//translate
}
;//difference


module hook() {
  cube([size * 0.25, size * 0.125, size * 0.125], center = true);
  translate([((size * 0.125)), 0, -((size * 0.125) * 0.5)]) {
    rotate([0, 90, 0]) {
      cube([size * 0.25, size * 0.125, size * 0.125], center = true);
    }
    ;//rotate
  }
  ;//translate
}
;//hook

//hooks
translate([((size * 0.125) * 0.5), size * 0.5 - ((size * 0.125) * 0.5), size * 0.5]) {
  hook();
}
;//translate
translate([((size * 0.125) * 0.5), -size * 0.5 + ((size * 0.125) * 0.5), size * 0.5]) {
  hook();
}
;//translate





