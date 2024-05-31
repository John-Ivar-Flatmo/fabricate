size = 32;//block=32 //item=8

translate([0, 0, size * 0.05]) {//centering

  translate([0, 0, -size * 0.05]) {
    cube([size * 0.75, size * 0.7, size * 0.9], center = true);//case
  }
  ;//translate
  translate([0, -size * 0.35, size * 0.075]) {
    cube([size * 0.5, size * 0.15, size * 0.5], center = true);//frontPanel
  }
  ;//translate
  translate([0, 0, -size * 0.375]) {
    cube([size * 1, size * 0.9, size * 0.25], center = true);//base
  }
  ;//translate

}
;//translate

