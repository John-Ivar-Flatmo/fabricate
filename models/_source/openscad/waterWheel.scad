size = 32;//block=32 //item=8


cube([size * 0.25, size * 0.25, size * 1], center = true);//shaft

cylinder(h = size * 0.8, d = size * 1.25, center = true);//center

translate([0, 0, size * 0.4]) {
  cylinder(h = size * 0.1, d = size * 1.5, center = true);//ringTop
}
;//translate

translate([0, 0, -size * 0.4]) {
  cylinder(h = size * 0.1, d = size * 1.5, center = true);//ringTop
}
;//translate


union() {
  count = 16;
  for(i = [0:1:count - 1]) {
    rotate([365 / count * i, 90, 0]) {
      translate([0, 0, size * 0.8]) {
        rotate([90, 0, 0]) {
          cube([size * 0.6, size * 0.5, size * 0.11], center = true);
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
