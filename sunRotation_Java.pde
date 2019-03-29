
int num = 7500;
BCurve[] curvesArray;
float radius = 200;
float rx = 0;
float ry = 0;
float dist = 135;

void setup() {
  size(1980, 1200, P3D);
  pixelDensity(displayDensity());
  colorMode(HSB);
  //fullScreen(P3D);
  //size(1280, 720, P3D);
  //noCursor();

  curvesArray = new BCurve[num];
  for (int i = 0; i < curvesArray.length; i++) {
    curvesArray[i] = new BCurve();
  }
}

void draw() {
  background(0);
  translate(width/2, height/2);
  //println(frameRate);
  rotateY(rx);
  rotateX(ry);   

  colorMode(RGB);

  // Uncomment the following to display a sphere if you don't want to see through it:
  fill(65);

  // Color and lightning of the sphere (red-ish)

  noStroke();
  lights();
  directionalLight(255, 100, 0, rx-0.01, ry-0.000005, 10);
  lightSpecular(255, 0, 0);
  ambientLight(255, 0, 0);
  ambient(60, 0, 0); 
  specular(255, 0, 0);
  shininess(0);

  translate(0, 0, 65);
  sphere(radius);

  colorMode(HSB);



  for (int i = 0; i < curvesArray.length; i++) {
    curvesArray[i].displayCurve();
  }

  // Slowly increment rotation 
  rx += 0.0006;
  ry += 0.0001;
}