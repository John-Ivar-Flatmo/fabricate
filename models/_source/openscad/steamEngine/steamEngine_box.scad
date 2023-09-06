size=32; //block=32 //item=8
//cube([size*0.8,size*0.8,size*0.8],center=true);



translate([0,0,-size*0.4]){	//bottom
cube([size*1,size*1,size*0.2],center=true);
};	//translate

cube([size*0.75,size*0.75,size*1],center=true);	//base

translate([-size*0.4,0,size*0.10]){	//sideKnubLeft
cube([size*0.1,size*0.5,size*0.5],center=true);
};	//translate

translate([size*0.4,0,size*0.10]){	//sideKnubRight
cube([size*0.1,size*0.5,size*0.5],center=true);
};	//translate
difference(){

union(){

};	//union

};	//difference