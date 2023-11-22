size=32; //block=32 //item=8


difference(){
cylinder(h=size*0.75*0.5,d=size*0.25,center=true);

union(){
count=8;
for(i=[0:1:count-1]){
rotate([365/count*i,90,0]){
translate([0,0,size*0.15]){
rotate([150,0,0]){
cube([size*0.5,size*0.11,size*0.11],center=true);
};	//rotate
};	//translate
};	//rotate
};	//for
};	//union

};	//difference