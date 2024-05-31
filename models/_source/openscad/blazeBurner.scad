size = 32;//block=32 //item=8


difference() {
  cube([size * 1, size * 1, size * 1], center = true);

  union() {
    translate([0, 0, size * 0.25]) {
      cube([size * 0.9, size * 0.9, size * 1.1], center = true);//hollow
    }
    ;//translate
    translate([0, 0, size * 0.15]) {
      cube([size * 0.8, size * 1.1, size * 0.5], center = true);//sidesFrontBack
    }
    ;//translate
    translate([0, 0, size * 0.15]) {
      cube([size * 1.1, size * 0.8, size * 0.5], center = true);//sidesLeftRight
    }
    ;//translate
  }
  ;//union
}
;//difference
