size=32; //block=32 //item=8


cube([size*0.25,size*1,size*0.25],center=true);	//handle

translate([0,-size*0.5,size*0.25]){
cube([size*1,size*0.15,size*0.75],center=true);	//left?
};
translate([0,size*0.5,size*0.25]){
cube([size*1,size*0.15,size*0.75],center=true);	//right?
};
cube([size*1,size*1,size*0.25],center=true);	//base