size=32; //block=32 //item=8

cube([size*0.10,size*0.05,size*0.60],center=true);
translate([size*0.1,0,(((size*0.60)/2)-((size*0.15)/2))]){
cube([size*0.3,size*0.01,size*0.15],center=true);
};	//translate
