size=32; //block=32 //item=8

cube([size*0.25,size*0.25,size*1],center=true);	//base


translate([0,0,size*0.35]){	//flangeLokingMF
cube([size*0.25,size*0.5,size*0.35],center=true);
};	//translate