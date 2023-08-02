size=32; //block=32 //item=8


cube([size*0.25,size*0.25,size*1],center=true);

cube([size*1,size*1.25,size*0.25],center=true);
cube([size*1.25,size*1,size*0.25],center=true);

end=16;
for(curr=[0:1:end]){
rotate([0,90,0]){
rotate([360/end*curr,0,0]){
translate([0,0,size*0.75]){
cube([size*0.15,size*0.15,size*0.5],center=true);
};	//translate
};	//rotate
};	//rotate

};	//for