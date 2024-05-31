size = 32;//block=32 //item=8

translate([0, 0, size * 0.25]) {
  cube([size * 0.25, size * 0.25, size * 0.35], center = true);//plate
}
;//translate
cube([size * 1, size * 1, size * 0.15], center = true);//plate

%translate([0, 0, size * 0.35]) {
  end = 8;
  for(curr = [0:1:end]) {
    rotate([0, 90, 0]) {
      rotate([360 / end * curr, 0, 0]) {
        translate([0, 0, size * 0.25]) {
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
;//translate
