size=32; //block=32 //item=8



//cube([size*0.8,size*0.8,size*0.8],center=true);
difference(){
cube([size*0.8,size*1,size*1],center=true);

union(){
translate([0,-size*0.375,0]){
cube([size*1*2,size*0.3,size*1*2],center=true);	//front
};	//translate
for(i=[0:1:2]){	//top/bottom
rotate([180*i,0,0]){
translate([0,0,size*0.5]){
cube([size*0.6,size*0.8,size*0.15],center=true);
};	//translate
};	//rotate
};	//for
};

};