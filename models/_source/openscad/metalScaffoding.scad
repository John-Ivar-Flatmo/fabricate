size=32; //block=32 //item=8

difference(){
cube([size,size,size],center=true);
translate([0,0,size*0.40]){
cube([size*0.8,size*0.75,size*1.25],center=true);
};	//translate
translate([0,0,-size*0.30]){
cube([size*1.25,size*0.8,size*0.6],center=true);
};	//translate
translate([0,0,-size*0.30]){
cube([size*0.8,size*1.25,size*0.6],center=true);
};	//translate
};	//difference





