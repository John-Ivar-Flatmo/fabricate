size = 32;//block=32 //item=8


difference() {
  cylinder(h = size * 0.125 * 0.5, d = size * 1, center = true);

  union() {
    count = 16;
    for(i = [0:1:count - 1]) {
      rotate([365 / count * i, 90, 0]) {
        translate([0, 0, size * 0.535]) {
          rotate([15, 0, 0]) {
            cube([size * 0.1, size * 0.1, size * 0.11], center = true);
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
;//difference
