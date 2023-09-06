size=32; //block=32 //item=8

difference(){
cube([size*0.125,size,size],center=true);
translate([0,0,size*0.40]){
cube([size*1.25,size*0.9,size*0.05],center=true);
};	//translate
translate([0,0,size*0.25]){
cube([size*1.25,size*0.9,size*0.125],center=true);
};	//translate
translate([0,0,0]){
cube([size*1.25,size*0.9,size*0.125],center=true);
};	//translate
translate([0,0,-size*0.25]){
cube([size*1.25,size*0.9,size*0.05],center=true);
};	//translate
translate([0,0,-size*0.40]){
cube([size*1.25,size*0.9,size*0.125],center=true);
};	//translate
};	//difference
cube([size*0.125,size*0.125,size],center=true);








