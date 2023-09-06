size=32; //block=32 //item=8



//cube([size*0.8,size*0.8,size*0.8],center=true);

cube([size*0.8,size*1,size*0.8],center=true);
translate([0,-size*0.25,0]){	//ring
cube([size*1,size*0.3,size*1],center=true);
};	//translate
translate([0,-size*0.5,0]){	//pistonKnub
cube([size*0.35,size*0.1,size*0.35],center=true);

};	//translate
translate([-size*0.25,-size*0.5,-size*0.25]){	//tubePortLeft
//cube([size*0.25,size*0.1,size*0.25],center=true);
rotate([90,0,0]){
cylinder(d=5);
};	//rotate
};	//translate

translate([size*0.25,-size*0.5,-size*0.25]){	//tubePortRight
//cube([size*0.25,size*0.1,size*0.25],center=true);
rotate([90,0,0]){
cylinder(d=5);
};	//rotate
};	//translate
difference(){

union(){

};	//union

};	//difference