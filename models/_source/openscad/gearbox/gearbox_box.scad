size = 32;//block=32 //item=8



//gearbox 4 sided
//cube([size*0.8,size*0.8,size*1],center=true);

//translate([0,0,size*0.45]){	//top
//cube([size*1,size*1,size*0.15],center=true);
//};
//translate([0,0,-size*0.45]){	//bottom
//cube([size*1,size*1,size*0.15],center=true);
//};
//gearbox 4 sided


//gearbox 6 sided
//cube([size*0.8,size*0.8,size*0.8],center=true);
difference() {
  cube([size * 1, size * 1, size * 1], center = true);

  union() {
    for(i = [0:1:4]) {//sides
      rotate([0, 0, 90 * i]) {
        translate([0, size * 0.5, 0]) {
          cube([size * 0.8, size * 0.15, size * 0.8], center = true);
        }
        ;//translate
      }
      ;//rotate
    }
    ;//for

    for(i = [0:1:2]) {//top/bottom
      rotate([180 * i, 0, 0]) {
        translate([0, 0, size * 0.5]) {
          cube([size * 0.8, size * 0.8, size * 0.15], center = true);
        }
        ;//translate
      }
      ;//rotate
    }
    ;//for
  }
  ;

}
;

//gearbox 6 sided
