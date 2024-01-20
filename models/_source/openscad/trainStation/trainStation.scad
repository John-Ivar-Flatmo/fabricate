size=32; //block=32 //item=8

cube([size*0.85,size*0.85,size*0.75],center=true);
translate([0,0,-(((size*0.75)/2)+((size*0.1)/2))]){
cube([size*1,size*1,size*0.1],center=true);
};	//translate
