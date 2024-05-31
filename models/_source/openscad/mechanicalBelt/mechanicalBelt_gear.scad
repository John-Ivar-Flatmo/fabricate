size = 32;//block=32 //item=8
sides = 8;

module gear() {
  cube([size * 0.25, size * 0.25, size * 1], center = true);

  for(curr = [0:1:sides]) {
    rotate([0, 90, 0]) {
      rotate([360 / sides * curr, 0, 0]) {
        translate([0, 0, size * 0.1]) {
          cube([size * 0.15, size * 0.15, size * 0.5], center = true);
        }
        ;//translate
      }
      ;//rotate
    }
    ;//rotate

  }
  ;//for
}
;//gear

rotate([90, 0, 0]) {
  translate([size * 0.5, 0, 0]) {
    rotate([0, 0, 360 / sides * 0.5]) {
    //%gear();
    }
    ;//rotate
  }
  ;//translate
  translate([-size * 0.5, 0, 0]) {
  //%gear();
  }
  ;//translate
  gear();

}
;//rotate

