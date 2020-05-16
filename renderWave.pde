void renderWave() {
  // A simple way to draw the wave with an ellipse at each location
  noStroke();
  fill(234,232,234,150);
  ellipseMode(CENTER);
  for (int x = 0; x < yvalues.length; x++) {
    ellipse(x*xspacing,height/2+yvalues[x],10,6);
  }
}
