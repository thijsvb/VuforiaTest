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

save("trackingImg.png");