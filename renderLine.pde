void renderLine() {
  //Simple way to render a line when sound is not playing
  noStroke();
  fill(234,232,234,150);
  ellipseMode(CENTER);
  for (int x = 0; x < yvalues.length; x++) {
    ellipse(x*(xspacing+10),height/2,8,6);
  }
}
