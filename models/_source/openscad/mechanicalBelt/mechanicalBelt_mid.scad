size=32; //block=32 //item=8


module beltPiece () {

translate([0,0,size*0.25]){	//top
cube([size*1,size*0.75,size*0.25],center=true);
};	//translate
translate([0,0,-size*0.25]){	//bottom
cube([size*1,size*0.75,size*0.25],center=true);
};	//translate

//translate([-size*0.5,0,0]){	//left
//cube([size*0.25,size*0.75,size*0.5],center=true);
//};	//translate

//translate([size*0.5,0,0]){	//right
//cube([size*0.25,size*0.75,size*0.5],center=true);
//};	//translate

};


beltPiece();

