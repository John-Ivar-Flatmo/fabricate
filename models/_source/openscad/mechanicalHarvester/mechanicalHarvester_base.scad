size=32; //block=32 //item=8


cube([size*1,size*0.15,size*1],center=true);	//base

translate([-size*0.425,-size*0.35,0]){
rotate([20,0,0]){
cube([size*0.15,size*0.75,size*0.15],center=true);	//fork
};
};	//translate


translate([size*0.425,-size*0.35,0]){
rotate([20,0,0]){
cube([size*0.15,size*0.75,size*0.15],center=true);	//fork
};
};	//translate