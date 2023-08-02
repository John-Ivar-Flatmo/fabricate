size=32; //block=32 //item=8


translate([0,0,size*0.075]){

cube([size*0.05,size*0.025,size*0.25],center=true);

translate([0,0,-size*0.075]){
cube([size*0.075,size*0.025,size*0.1],center=true);
};	//translate

};	//translate

