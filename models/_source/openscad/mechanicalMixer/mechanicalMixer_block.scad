size=32; //block=32 //item=8

difference(){
cube([size*1,size*1,size*1],center=true);
cube([size*1.1,size*1.1,size*0.2],center=true);
};

for(i=[0:1:4]){
rotate([0,0,90*i]){
translate([size*0.45,size*0.45,0]){
cube([size*0.1,size*0.1,size*1],center=true);

};	//translate
};	//rotate
};	//for

