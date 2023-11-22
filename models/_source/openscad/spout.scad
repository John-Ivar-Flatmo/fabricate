size=32; //block=32 //item=8


difference(){
cube([size*0.8,size*0.8,size*0.9],center=true);

%union(){
translate([0,0,-size*0.0]){
cube([size*0.75,size*0.75,size*0.8],center=true);	//hollow
};	//translate
};	//union
};	//difference
translate([0,0,-size*0.5]){
cube([size*0.25,size*0.25,size*0.1],center=true);
};	//translate