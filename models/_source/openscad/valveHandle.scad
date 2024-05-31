size = 32;//block=32 //item=8






translate([-size * 0, size * 0, 0]) {//knub
  cube([size * 0.25, size * 0.1, size * 0.25], center = true);
}
;//translate

translate([0, -size * 0.1, 0]) {//connecting ring
  union() {
    count = 4;
    for(i = [0:1:count - 1]) {
      rotate([0, 365 / count * i, 0]) {
        translate([size * 0.1, 0, 0]) {
          rotate([0, 0, -35]) {
            cube([size * 0.30, size * 0.075, size * 0.075], center = true);
          }
          ;//rotate
        }
        ;//translate
      }
      ;//rotate
    }
    ;//for
  }
  ;//union
}
;//translat

translate([size * 0, -size * 0.1, 0]) {//ring
  rotate([90, 0, 0]) {
    difference() {
      cylinder(d = size * 0.55, h = size * 0.125);
      translate([size * 0, size * 0, -size * 0.0125]) {
        cylinder(d = size * 0.40, h = size * 0.125 * 2);
      }
      ;//translate
    }
    ;//difference
  }
  ;//rotate
}
;//translate

