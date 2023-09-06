size=32; //block=32 //item=8


cube([size*0.25,size*0.25,size*0.8],center=true);	//shaft

translate([0,0,size*0.3]){
union(){
count=6;
for(i=[0:1:count-1]){
rotate([365/count*i,90,0]){
translate([0,0,size*0.2]){
rotate([90,0,0]){
cube([size*0.15,size*0.5,size*0.11],center=true);
};	//rotate
};	//translate
};	//rotate
};	//for
};	//union
};	//translate