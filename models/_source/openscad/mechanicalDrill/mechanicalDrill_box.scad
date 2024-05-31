size = 32;//block=32 //item=8


rotate([0, 90, 0]) {
  //cube([size*0.8,size*0.8,size*0.8],center=true);
  difference() {
    cube([size * 1, size * 1, size * 1], center = true);

    union() {
      translate([0, -size * 0.375, 0]) {
        cube([size * 1 * 2, size * 0.5, size * 1 * 2], center = true);//front
      }
      ;//translate
    }
    ;//union

  }
  ;
}
;//rotate
