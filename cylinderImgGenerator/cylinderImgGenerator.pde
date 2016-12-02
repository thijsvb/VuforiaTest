final float topD = 1;
final float bottomD = 1.5;
final float length = 2;

size(1920, 1080);
background(0);
for(int i=0; i!=100; ++i){
  float g = random(255);
  stroke(g);
  strokeWeight(random(10));
  fill((g+128)%256);
  rect(random(-100, width), random(-100, height), random(width/2), random(height/2));
}
for(int i=0; i!=100; ++i){
  float g = random(255);
  stroke(g);
  strokeWeight(random(10));
  line(random(width), random(height), random(width), random(height));
}

noFill();
stroke(0);
strokeWeight(4);

if(topD == bottomD){
  rectMode(CENTER);
  rect(width/2, height/2, PI*topD + 8, length + 8);
} else {
//lots of math, see https://library.vuforia.com/articles/Solution/Understanding-Cylinder-Targets-Math
  final float d = min(topD, bottomD);
  final float D = max(topD, bottomD);
  
  final float r = (d*length)/(D-d);
  final float R = r + length;
  
  final float id = 2*r;   //inner diameter
  final float od = 2*R;   //outer diameter
  
  final float angle = (d/id)*TWO_PI;
  
  arc(width/2, od/2, od + 8, od + 8, -HALF_PI - angle/2, -HALF_PI + angle/2);
  arc(width/2, od/2, id + 8, id + 8, -HALF_PI - angle/2, -HALF_PI + angle/2);
}
save("cylinderImg.png");

