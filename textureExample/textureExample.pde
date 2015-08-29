PImage textureSource;
	
void setup() {
  size(800, 800, P3D);
  textureSource = loadImage("pic.jpg");
  textureMode(NORMAL);
  }

void draw() {
  background(200);
 // image(textureSource, 0,0,width,height); // show image stretched over whole canvas
  pushMatrix();
  for(int f=0; f<10; f++) {showPic(); transform();}
  popMatrix();
  }

void transform() {
  rotate(TWO_PI/29);  
  translate(70,-34);
  scale(1.064);
  }

void showPic() {  
  beginShape();
  texture(textureSource);
  vertex(10, 20, 0, 0);
  vertex(80, 5, 1, 0);
  vertex(95, 90, 1, 1);
  vertex(40, 95, 0, 1);
  endShape(CLOSE);  
  }