size(500, 500);
String[] side = {"front", "back", "right", "left", "top", "bottom"};
textSize(100);
textAlign(CENTER, CENTER);
for (int j=0; j!=6; ++j) {
  background(0);
  for (int i=0; i!=100; ++i) {
    float g = random(255);
    stroke(g);
    strokeWeight(random(10));
    fill((g+128)%256);
    rect(random(-100, width), random(-100, height), random(width/2), random(height/2));
  }
  for (int i=0; i!=100; ++i) {
    float g = random(255);
    stroke(g);
    strokeWeight(random(10));
    line(random(width), random(height), random(width), random(height));
  }
  fill(255, 0, 0);
  text(side[j], width/2, height/2);
  save("cube/" + side[j] + ".png");
}

//save("trackingImg.png");