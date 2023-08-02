size=32; //block=32 //item=8
sides=8;


for(curr=[0:1:sides]){
rotate([0,90,0]){
rotate([360/sides*curr,0,0]){
translate([0,0,size*0.1]){
cube([size*0.15,size*0.15,size*0.5],center=true);
};	//translate
};	//rotate
};	//rotate
};	//for

