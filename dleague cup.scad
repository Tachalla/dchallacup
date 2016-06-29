

 linear_extrude(height = 30, twist = 100, slices = 40) {
  difference() {
    offset(r = 20) {
      cylinder(10, center = true);
    }
    offset(r = 8) {
      square(20, center = true);
    }
  }
}
translate([10,0,0])
    // resize the sphere to extend 30 in x, 60 in y, and 10 in the z directions.
resize(newsize=[40,60,10]) sphere(r=10);  
difference(){
   translate([0,0,60])
    sphere(r=20); }
   
$fn=50;
translate([0,0,10]){
    rotate([90,0,0]){
        rotate_extrude(convexity = 10)
       circle(r=2);}}