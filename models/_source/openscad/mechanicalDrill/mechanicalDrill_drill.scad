size=32; //block=32 //item=8

count=16;
segments=12;

//%cube([size*1,size*1,size*1],center=true);	//refrence cube

module segment (diamater=size*1) {
difference(){
cylinder(h=size*0.125*0.5,d=diamater,center=true);
union(){
for(i=[0:1:count-1]){
rotate([365/count*i,90,0]){
translate([0,0,diamater*0.5]){
rotate([15,0,0]){
cube([size*0.1,size*0.1,size*0.11],center=true);
};	//rotate
};	//translate
};	//rotate
};	//for
};	//union
};	//difference
};	//segment

translate([0,0,-(size*0.05*segments)*0.75]){
for(i=[0:1:segments]){
translate([0,0,size*0.05*i]){
segment(size*(0.75/segments*i));
};	//translate
};	//for
};