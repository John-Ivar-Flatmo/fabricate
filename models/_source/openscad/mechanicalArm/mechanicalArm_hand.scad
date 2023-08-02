size=32; //block=32 //item=8

cube([size*0.375,size*0.375,size*0.375],center=true);	//hand
translate([-size*0.3125,0,0]){
translate([0,0,size*0.125]){	//finger top
cube([size*0.375,size*0.375,size*0.125],center=true);
};	//translate
translate([0,0,-size*0.125]){	//finger bottom
cube([size*0.375,size*0.375,size*0.125],center=true);
};	//translate
};	//translate
