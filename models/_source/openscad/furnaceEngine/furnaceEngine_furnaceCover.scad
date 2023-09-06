size=32; //block=32 //item=8



//cube([size*0.8,size*0.8,size*0.8],center=true);
cube([size*1.2,size*1.2,size*0.05],center=true);
translate([0,0,-size*0.25]){
difference(){
cube([size*1.2,size*1.2,size*0.5],center=true);
union(){
translate([0,0,-size*0.01]){
cube([size*1.0,size*1.0,size*0.5],center=true);
};	//translate
};	//union

};	//difference
};	//translate