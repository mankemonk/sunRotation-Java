class BCurve {
  
  // VARIABLES
  float z = random(-radius, radius);
  float phi1 = random(TWO_PI);
  float phi2 = random(TWO_PI);
  float theta = asin(z/radius);
  // Different random value for each anchor point
  float randomDist1 = random(-dist, dist);
  float randomDist2 = random(-dist, dist);
  float randomDist3 = random(-dist, dist);
  float randomDist4 = random(-dist, dist);
  float randomDist5 = random(-dist, dist);
  float randomDist6 = random(-dist, dist);

  // NO CONSTRUCTOR NEEDED (unless you need to pass arguments to it)
  //BCurve(){
  //}
  
  // DISPLAY FUNCTION
  void displayCurve() {
    stroke(25, 255, 255, 135); //    25, 255, 255, 135       0, 0, 0, 0 (stroke no visible)
    strokeWeight(0.7);    // try : random(0.8, 3) /or 0.25. Norm is 0.8
    noFill();
    
    // 3D equivalent to coordinates on a circle
    float x1 = radius * cos(theta) * cos(phi1);
    float y1 = radius * cos(theta) * sin(phi1);
    float z1 = radius * sin(theta);
    float x2 = radius * cos(theta) * cos(phi2);
    float y2 = radius * cos(theta) * sin(phi2);;
    float z2 = radius * sin(theta);
    
    // beginShape and endShape are mandatory for vertices 
    beginShape();
    vertex(x1, y1, z1); // Sets the first anchor for the 3D bezierVertex curve
    // bezierVertex instead of simple bezier for 3D rendering
    bezierVertex(x1+randomDist1,
                 y1+randomDist2,
                 z1+randomDist3,
                 x2+randomDist4,
                 y2+randomDist5,
                 z2+randomDist6,      
                 x2,
                 y2,
                 z2);
    endShape();
  }
}